import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Read data from "input.txt" using pandas
data = pd.read_csv("input.txt", sep="\t", header=0)  # Specify header=0 for first row as header
print(data)

# Separate data into MsL and MsR lists
MsL = data['MsL'].tolist()
MsR = data['MsR'].tolist()

# Define the line equation (y = x) for MsR = MsL
line_x = np.linspace(min(MsL), max(MsL), 100)  # 100 points for smooth line
line_y = line_x

# Scatter plot for data points
plt.figure(figsize=(8, 6))  # Adjust figure size as needed
plt.scatter(MsL, MsR, c='blue', alpha=0.7, label='Data Points')

# Line plot for MsR = MsL
plt.plot(line_x, line_y, color='red', linestyle='--', label='MsR = MsL')

# Separate points above and below the line (optional)
above_mask = MsR >= MsL
below_mask = MsR < MsL
plt.scatter(MsL[above_mask], MsR[above_mask], c='green', marker='^', alpha=0.7, label='Above MsR=MsL')
plt.scatter(MsL[below_mask], MsR[below_mask], c='orange', marker='v', alpha=0.7, label='Below MsR=MsL')

# Customize plot for publication
plt.xlabel('MsL', fontsize=12)
plt.ylabel('MsR', fontsize=12)
plt.title('Scatter Plot of MsL vs MsR with MsR=MsL Line', fontsize=14)
plt.grid(True, linestyle='--', linewidth=0.5, alpha=0.7)
plt.legend(loc='upper left', title='Categories', bbox_to_anchor=(0.5, 1))
plt.tick_params(bottom=True, top=True, left=True, right=True, labelsize=10)

# Save the plot as a high-resolution image (adjust filename and format)
plt.savefig('MsL_vs_MsR_scatter.png', dpi=300, bbox_inches='tight')

plt.show()
