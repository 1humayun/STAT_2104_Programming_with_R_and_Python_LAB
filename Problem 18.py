import calendar

def print_months_of_year(year):

    for month in range(1, 13):
        print(calendar.month_name[month])

# Example usage:
print_months_of_year(2023)