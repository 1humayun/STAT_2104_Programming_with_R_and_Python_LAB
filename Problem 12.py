def calculate_average(tuple_of_tuples):
   
    total_sum = 0
    total_count = 0

    for sub_tuple in tuple_of_tuples:
        for number in sub_tuple:
            total_sum += number
            total_count += 1

    if total_count == 0:
        return None  # Handle empty input

    return total_sum / total_count

# Example usage:
original_tuple = ((10, 10, 10, 12), (30, 45, 56, 45), (81, 80, 39, 32), (1, 2, 3, 4))
average_value = calculate_average(original_tuple)
print("Average value:", average_value)