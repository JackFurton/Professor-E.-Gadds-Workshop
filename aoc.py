def replace_spelled_numbers(line):
    number_map = {
        "nine": "9", "eight": "8", "seven": "7", "six": "6", 
        "five": "5", "four": "4", "three": "3", "two": "2", "one": "1"
    }
    for word, num in number_map.items():
        line = line.replace(word, num)
    return line

def extract_and_calculate(line):
    digits = [int(d) for d in line if d.isdigit()]
    if digits:
        return digits[0] * 10 + digits[-1]
    return 0

def main(input_file):
    total = 0
    with open(input_file, 'r') as file:
        for line in file:
            line = line.strip()
            line = replace_spelled_numbers(line)
            total += extract_and_calculate(line)
    return total

input_file = "test.txt"  # Replace with your actual input file path
print("Sum of values:", main(input_file))

