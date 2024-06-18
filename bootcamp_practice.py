import tkinter as tk
from tkinter import messagebox

class App:
    def __init__(self, root):
        self.root = root
        self.root.title("Interactive Application")
        self.root.geometry('400x300')

        self.create_widgets()

    def create_widgets(self):
        # Textbox for input
        self.input_frame = tk.Frame(self.root)
        self.input_frame.pack(pady=10)
        
        self.input_label = tk.Label(self.input_frame, text="Enter your text:")
        self.input_label.pack(side="left", padx=5)

        self.input_box = tk.Text(self.input_frame, height=5, width=30)
        self.input_box.pack(side="left", padx=5)

        # Display button
        self.display_button = tk.Button(self.root, text="Display Input", command=self.display_input)
        self.display_button.pack(pady=5)

        # Label to show input
        self.display_label = tk.Label(self.root, text="")
        self.display_label.pack(pady=10)

        # Pop-up button
        self.popup_button = tk.Button(self.root, text="Show Pop-up", command=self.show_popup)
        self.popup_button.pack(pady=5)

    def display_input(self):
        user_input = self.input_box.get("1.0", "end-1c")
        self.display_label.config(text=f"Entered Text: {user_input}")

    def show_popup(self):
        messagebox.showinfo("Greeting", "Hello! This is your pop-up message.")

if __name__ == "__main__":
    root = tk.Tk()
    app = App(root)
    root.mainloop()
    
    
