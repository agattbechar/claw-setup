import pandas as pd
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt

# Simulate macroeconomic data for demonstration
np.random.seed(42)
years = np.arange(2004, 2024)
n = len(years)

# Generate correlated economic data
pib = 100 + np.cumsum(np.random.normal(3, 2, n))  # GDP growth
inflation = 2 + 0.3 * np.random.randn(n) - 0.2 * (pib - np.mean(pib))  # Inflation negatively correlated with GDP gap
chomage = 8 - 0.4 * (pib - 100) + np.random.normal(0, 0.5, n)  # Unemployment negatively correlated with GDP

# Create DataFrame
df = pd.DataFrame({
    'Annee': years,
    'PIB': pib,
    'Inflation': inflation,
    'Chomage': chomage
})

# Calculate correlations
corr_matrix = df[['PIB', 'Inflation', 'Chomage']].corr()

# Run OLS regression: Inflation ~ PIB + Chomage
from scipy.stats import linregress

# Multiple regression manually (for demonstration)
X = np.column_stack([np.ones(n), pib, chomage])
y = inflation

# OLS: (X'X)^(-1) X'y
beta = np.linalg.inv(X.T @ X) @ X.T @ y

# Predictions and R-squared
y_pred = X @ beta
ss_res = np.sum((y - y_pred) ** 2)
ss_tot = np.sum((y - np.mean(y)) ** 2)
r_squared = 1 - (ss_res / ss_tot)

print("="*60)
print("ANALYSE MACROÉCONOMIQUE - MAURITANIE (SIMULÉ)")
print("="*60)
print(f"\nPériode: {years[0]}-{years[-1]} ({n} observations)")
print(f"\n--- STATISTIQUES DESCRIPTIVES ---")
print(df.describe().round(2))

print(f"\n--- MATRICE DE CORRÉLATION ---")
print(corr_matrix.round(3))

print(f"\n--- RÉGRESSION OLS ---")
print(f"Modèle: Inflation = β₀ + β₁·PIB + β₂·Chômage + ε")
print(f"\nCoefficients:")
print(f"  β₀ (Constante): {beta[0]:.4f}")
print(f"  β₁ (PIB):       {beta[1]:.4f}")
print(f"  β₂ (Chômage):   {beta[2]:.4f}")
print(f"\nR² = {r_squared:.4f}")
print(f"Signification: {r_squared*100:.1f}% de la variance de l'inflation est expliquée par le PIB et le chômage")

# Test de significativité (t-stats)
n_obs = n
k = 2  # nombre de variables explicatives
sigma2 = ss_res / (n_obs - k - 1)
var_beta = sigma2 * np.linalg.inv(X.T @ X)
se_beta = np.sqrt(np.diag(var_beta))
t_stats = beta / se_beta

print(f"\n--- SIGNIFICATIVITÉ ---")
print(f"t-statistiques:")
for i, name in enumerate(['Constante', 'PIB', 'Chômage']):
    sig = "***" if abs(t_stats[i]) > 2.96 else "**" if abs(t_stats[i]) > 2.0 else "*" if abs(t_stats[i]) > 1.65 else ""
    print(f"  {name}: t = {t_stats[i]:.3f} {sig}")

print(f"\n*** p<0.01, ** p<0.05, * p<0.10")

# Create visualization
fig, axes = plt.subplots(2, 2, figsize=(12, 10))

# Plot 1: Time series
ax1 = axes[0, 0]
ax1.plot(years, pib, 'b-', label='PIB', linewidth=2)
ax1_twin = ax1.twinx()
ax1_twin.plot(years, inflation, 'r--', label='Inflation', linewidth=2)
ax1.set_xlabel('Année')
ax1.set_ylabel('PIB (indice)', color='b')
ax1_twin.set_ylabel('Inflation (%)', color='r')
ax1.set_title('Évolution PIB vs Inflation')
ax1.legend(loc='upper left')
ax1_twin.legend(loc='upper right')

# Plot 2: Scatter PIB vs Inflation
ax2 = axes[0, 1]
ax2.scatter(pib, inflation, c='blue', alpha=0.6, s=100)
z = np.polyfit(pib, inflation, 1)
p = np.poly1d(z)
ax2.plot(pib, p(pib), "r--", alpha=0.8, linewidth=2)
ax2.set_xlabel('PIB')
ax2.set_ylabel('Inflation (%)')
ax2.set_title(f'Relation PIB-Inflation (r={corr_matrix.loc["PIB", "Inflation"]:.3f})')

# Plot 3: Residuals
ax3 = axes[1, 0]
residuals = y - y_pred
ax3.scatter(y_pred, residuals, c='green', alpha=0.6, s=100)
ax3.axhline(y=0, color='r', linestyle='--')
ax3.set_xlabel('Valeurs prédites')
ax3.set_ylabel('Résidus')
ax3.set_title('Graphique des Résidus')

# Plot 4: Actual vs Predicted
ax4 = axes[1, 1]
ax4.scatter(y, y_pred, c='purple', alpha=0.6, s=100)
ax4.plot([y.min(), y.max()], [y.min(), y.max()], 'r--', lw=2)
ax4.set_xlabel('Inflation réelle (%)')
ax4.set_ylabel('Inflation prédite (%)')
ax4.set_title(f'Réel vs Prédit (R²={r_squared:.3f})')

plt.tight_layout()
plt.savefig('analyse_macro_demo.png', dpi=150, bbox_inches='tight')
print(f"\n✓ Graphique sauvegardé: analyse_macro_demo.png")

print(f"\n--- INTERPRÉTATION ---")
if beta[1] < 0:
    print(f"• Un PIB plus élevé est associé à une inflation plus faible (effet négatif)")
else:
    print(f"• Un PIB plus élevé est associé à une inflation plus élevée (effet positif)")

if beta[2] > 0:
    print(f"• Un chômage plus élevé est associé à une inflation plus élevée (Phillips)")
else:
    print(f"• Un chômage plus élevé est associé à une inflation plus faible")

print(f"\n{'='*60}")
print("ANALYSE COMPLÉTÉE")
print(f"{'='*60}")
