import calendar
year = int(input("Enter the year: "))
for month in range(1,13):
    print(calendar.month(year, month))
    
print(calendar.calendar(2025))
