import seaborn as sns
import pandas as pd

# Load a built-in dataset
tips = sns.load_dataset('tips')

# Display the first few rows to understand the dataset
print("First few rows of the dataset:")
print(tips.head())

# Check for null values
print("\nChecking for null values:")
print(tips.isnull().sum())

# Option 1: Drop rows with null values
tips_dropped = tips.dropna()
print("\nAfter dropping rows with null values:")
print(tips_dropped.isnull().sum())

# Option 2: Fill null values with a specific value (e.g., 0)
tips_filled = tips.fillna(0)
print("\nAfter filling null values with 0:")
print(tips_filled.isnull().sum())

# Option 3: Fill null values with the mean of the column
tips_filled_mean = tips.apply(lambda x: x.fillna(x.mean()) if x.dtype == 'float' else x)
print("\nAfter filling null values with the mean of each column:")
print(tips_filled_mean.isnull().sum())

# Save the processed dataset
tips_dropped.to_csv('tips_dropped.csv', index=False)
tips_filled.to_csv('tips_filled.csv', index=False)
tips_filled_mean.to_csv('tips_filled_mean.csv', index=False)

# Final output
print("\nProcessed datasets saved as CSV files.")
