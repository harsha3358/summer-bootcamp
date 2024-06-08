# New print statements and arithmetic
print("Hello, galaxy")
print(15 + 25)

if 20 > 10:
    print("20 is greater than 10")
else:
    print("20 is less than or equal to 10")

# Looping with break and continue
for i in range(10):
    if i == 5: break
    print(i)
for i in range(10):
    if i == 5: continue
    print(i)

# Function definition and call
def welcome_user(name): print("Hello", name )
welcome_user("Harsha")

# Function with positional arguments
def compute_area(length, breadth): return length * breadth
print(compute_area(5, 8))

# Lambda function
difference = lambda a, b: a - b
print(difference(20, 7))

# Function to analyze salaries
MINIMUM_SALARY = 55000
def evaluate_salaries(names, salaries):
    total_salary, underpaid = 0, []
    for name, salary in zip(names, salaries):
        total_salary += salary
        if salary < MINIMUM_SALARY: underpaid.append(name)
    return total_salary / len(salaries), underpaid

names = ["Sahojit", "Prathmesh", "Sai", "Yash"]
salaries = [60000, 48000, 70000, 52000]
average_salary, underpaid_list = evaluate_salaries(names, salaries)
print("Average Salary:", average_salary)
print("Underpaid Employees:", underpaid_list)

# Various print statements
word = 'item'
print('Hello galaxy "in quotes"')
print('Hello galaxy with', word, 'included')
print('Hello galaxy with %d %s included' % (10, word))
print('Hello galaxy with {} {} using format method'.format(10, word))
print('Hello galaxy with ' + str(10) + ' ' + word + ' using concatenation')
print(f'''Hello galaxy\n\t with {10} {word}\n\t Using f-string and multiline''')

# Different variable usage
array = ['yes', 'no', 'maybe', 'sure']
print(len(array) > len((8, 13, 21, 34)))
for item in array: print(len(item))

counter = 0
element = ''
while element != 'maybe':
    element = array[counter]
    counter += 1
    print('In while loop')
print('Exited while loop')

print(id(array))
print(list('no'))
