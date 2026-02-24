import numpy as np

# Simulate macroeconomic data
np.random.seed(42)
years = np.arange(2004, 2024)
n = len(years)

# Generate correlated data
pib = 100 + np.cumsum(np.random.normal(3, 2, n))
inflation = 2 + 0.3 * np.random.randn(n) - 0.2 * (pib - np.mean(pib))
chomage = 8 - 0.4 * (pib - 100) + np.random.normal(0, 0.5, n)

# OLS Regression: Inflation ~ PIB + Chomage
X = np.column_stack([np.ones(n), pib, chomage])
y = inflation

# OLS formula: (X'X)^(-1) X'y
beta = np.linalg.inv(X.T @ X) @ X.T @ y
y_pred = X @ beta

# R-squared
ss_res = np.sum((y - y_pred) ** 2)
ss_tot = np.sum((y - np.mean(y)) ** 2)
r_squared = 1 - (ss_res / ss_tot)

# Standard errors
sigma2 = ss_res / (n - 3)
var_beta = sigma2 * np.linalg.inv(X.T @ X)
se_beta = np.sqrt(np.diag(var_beta))
t_stats = beta / se_beta

print("="*60)
print("ANALYSE MACROÉCONOMIQUE - RÉGRESSION MULTIPLE")
print("="*60)
print(f"Données: {n} observations ({years[0]}-{years[-1]})")
print(f"Modèle: Inflation = β₀ + β₁·PIB + β₂·Chômage + ε")
print(f"\n--- COEFFICIENTS ESTIMÉS ---")
print(f"β₀ (Constante): {beta[0]:.4f} (t={t_stats[0]:.3f})")
print(f"β₁ (PIB):       {beta[1]:.4f} (t={t_stats[1]:.3f}) {'***' if abs(t_stats[1]) > 2.96 else '**' if abs(t_stats[1]) > 2.0 else '*'}")
print(f"β₂ (Chômage):   {beta[2]:.4f} (t={t_stats[2]:.3f}) {'***' if abs(t_stats[2]) > 2.96 else '**' if abs(t_stats[2]) > 2.0 else '*'}")
print(f"\n--- BONNESS OF FIT ---")
print(f"R² = {r_squared:.4f} ({r_squared*100:.1f}% de variance expliquée)")
print(f"R² ajusté = {1 - (1-r_squared)*(n-1)/(n-3):.4f}")
print(f"\n--- CORRÉLATIONS ---")
corr_pib_inf = np.corrcoef(pib, inflation)[0,1]
corr_pib_cho = np.corrcoef(pib, chomage)[0,1]
corr_inf_cho = np.corrcoef(inflation, chomage)[0,1]
print(f"PIB-Inflation:   r = {corr_pib_inf:.3f}")
print(f"PIB-Chômage:     r = {corr_pib_cho:.3f}")
print(f"Inflation-Chômage: r = {corr_inf_cho:.3f}")

# Correlation matrix
print(f"\n--- MATRICE DE CORRÉLATION ---")
data_matrix = np.column_stack([pib, inflation, chomage])
corr_matrix = np.corrcoef(data_matrix.T)
print("           PIB    Infl   Chom")
for i, name in enumerate(['PIB', 'Infl', 'Chom']):
    print(f"{name:8} {corr_matrix[i,0]:6.3f} {corr_matrix[i,1]:6.3f} {corr_matrix[i,2]:6.3f}")

print(f"\n{'='*60}")
print("INTERPRÉTATION:")
if beta[1] < 0:
    print("• Effet négatif du PIB: croissance = désinflation")
else:
    print("• Effet positif du PIB: croissance = inflation")
if abs(t_stats[1]) > 1.96:
    print(f"• PIB statistiquement significatif (|t| > 1.96)")
if abs(t_stats[2]) > 1.96:
    print(f"• Chômage statistiquement significatif (|t| > 1.96)")
print(f"{'='*60}")
