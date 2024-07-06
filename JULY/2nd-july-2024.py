import seaborn as sns
import matplotlib.pyplot as plt

# Load a built-in dataset
tips = sns.load_dataset('tips')

# Set the aesthetic style of the plots
sns.set(style="whitegrid")

# Create a scatter plot
plt.figure(figsize=(8, 6))
sns.scatterplot(x='total_bill', y='tip', data=tips, hue='day', palette='deep')
plt.title('Total Bill vs Tip by Day')
plt.xlabel('Total Bill')
plt.ylabel('Tip')
plt.show()

# Create a histogram
plt.figure(figsize=(8, 6))
sns.histplot(tips['total_bill'], bins=20, kde=True, color='skyblue')
plt.title('Histogram of Total Bill')
plt.xlabel('Total Bill')
plt.ylabel('Frequency')
plt.show()

# Create a box plot
plt.figure(figsize=(8, 6))
sns.boxplot(x='day', y='total_bill', data=tips, palette='Set2')
plt.title('Box Plot of Total Bill by Day')
plt.xlabel('Day of the Week')
plt.ylabel('Total Bill')
plt.show()

# Create a pair plot
sns.pairplot(tips, hue='day', palette='husl')
plt.suptitle('Pair Plot of Tips Dataset', y=1.02)
plt.show()
