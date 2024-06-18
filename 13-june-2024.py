from tkinter import *

# Create the main window
root = Tk()
root.title('Sign In')
root.geometry('500x400')

# Define StringVar variables to hold the input data
name = StringVar()
email = StringVar()
phno = StringVar()

# Define the function to handle form submission
def userdata():
    n = name.get()
    e = email.get()
    p = phno.get()

    print(f"user: {n}\nemail: {e}\nPhone number: {p}")

    # Clear the input fields
    name.set('')
    email.set('')
    phno.set('')

# Create and pack the main frame for the title
f1 = Frame(root)
f1.pack(pady=25)

# Create and pack the title label
l1 = Label(f1, text='Sign In', font=('Helvetica', 30))
l1.pack()

# Create and pack the frame for the username field
f2 = Frame(root)
f2.pack(padx=40, pady=15)

# Create and pack the username label and entry
l2 = Label(f2, text='Username', font=('Helvetica', 10))
l2.pack(side='left', padx=10)

e1 = Entry(f2, textvariable=name, width=30)
e1.pack(side='right')

# Create and pack the frame for the email field
f3 = Frame(root)
f3.pack(padx=40, pady=15)

# Create and pack the email label and entry
l3 = Label(f3, text='Email', font=('Helvetica', 10))
l3.pack(side='left', padx=10)

e2 = Entry(f3, textvariable=email, width=30)
e2.pack(side='right')

# Create and pack the frame for the phone number field
f4 = Frame(root)
f4.pack(padx=40, pady=15)

# Create and pack the phone number label and entry
l4 = Label(f4, text='Phone No.', font=('Helvetica', 10))
l4.pack(side='left', padx=10)

e3 = Entry(f4, textvariable=phno, width=30)
e3.pack(side='right')

# Create and pack the frame for the submit button
f5 = Frame(root)
f5.pack(padx=40, pady=5)

# Create and pack the submit button
b1 = Button(f5, text='Submit', width=9, height=2, command=userdata)
b1.pack(pady=5, padx=5)

# Run the Tkinter event loop
root.mainloop()
