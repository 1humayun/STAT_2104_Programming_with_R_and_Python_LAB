import pandas as pd

# Create a DataFrame from the data
data = {
    "SI": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    "Height": [197, 165, 179, 191, 177, 153, 169, 178, 184, 177, 167, 176, 161, 168, 164, 181, 182, 143, 169, 175],
    "Weight": [93, 59, 71, 78, 72, 61, 72, 29, 85, 75, 59, 70, 57, 60, 66, 67, 71, 46, 53, 66],
    "Sex": [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
}

df = pd.DataFrame(data)

# Function to calculate BMI
def calculate_bmi(height, weight):
    return weight / ((height / 100) ** 2)

# Using mapply function
df['BMI'] = df.apply(lambda row: calculate_bmi(row['Height'], row['Weight']), axis=1)

# Using Python program
for index, row in df.iterrows():
    df.loc[index, 'BMI'] = calculate_bmi(row['Height'], row['Weight'])

# Filter and print BMI for male and female
male_bmi = df[df['Sex'] == 1]['BMI']
female_bmi = df[df['Sex'] == 2]['BMI']

print("BMI for male students:")
print(male_bmi)

print("\nBMI for female students:")
print(female_bmi)