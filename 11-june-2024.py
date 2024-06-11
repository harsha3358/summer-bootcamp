import tkinter as tk

# Create the main application window
m = tk.Tk()
m.title('Tkinter Application')

# Create and position labels for first name and last name
tk.Label(m, text='First Name').grid(row=0, column=0, padx=10, pady=5)
tk.Label(m, text='Last Name').grid(row=1, column=0, padx=10, pady=5)

# Create and position entry fields for first name and last name
e1 = tk.Entry(m)
e2 = tk.Entry(m)
e1.grid(row=0, column=1, padx=10, pady=5)
e2.grid(row=1, column=1, padx=10, pady=5)

# Create and position checkboxes for gender selection
var1 = tk.IntVar()
tk.Checkbutton(m, text='Male', variable=var1).grid(row=2, column=0, sticky='w', padx=10, pady=5)
var2 = tk.IntVar()
tk.Checkbutton(m, text='Female', variable=var2).grid(row=3, column=0, sticky='w', padx=10, pady=5)

# Create and position radio buttons for selecting an option
v = tk.IntVar()
tk.Radiobutton(m, text='GfG', variable=v, value=1).grid(row=4, column=0, padx=10, pady=5)
tk.Radiobutton(m, text='MIT', variable=v, value=2).grid(row=5, column=0, padx=10, pady=5)

# Create and position a listbox with several programming languages
Lb = tk.Listbox(m)
Lb.insert(1, 'Python')
Lb.insert(2, 'Java')
Lb.insert(3, 'C++')
Lb.insert(4, 'Any other')
Lb.grid(row=1, column=2, rowspan=4, padx=10, pady=5)

# Function to handle submit button click
def on_submit():
    print(f"First Name: {e1.get()}")
    print(f"Last Name: {e2.get()}")
    print(f"Gender: {'Male' if var1.get() == 1 else 'Female' if var2.get() == 1 else 'Not selected'}")
    print(f"Selected option: {v.get()}")
    selected_languages = [Lb.get(i) for i in Lb.curselection()]
    print(f"Selected Languages: {', '.join(selected_languages)}")

# Create and position the submit button
submit_button = tk.Button(m, text='Submit', command=on_submit)
submit_button.grid(row=6, column=1, pady=10)

# Run the main event loop
m.mainloop()
