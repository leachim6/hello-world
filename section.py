
class Student:
    def __init__(self, fname, lname, age) -> None:
        self.fname = fname
        self.lname = lname
        self.age = age
    def display(self):
        print(f"Your name is {self.fname} {self.lname} and your age is {self.age}")


s1 = Student(fname="hussam", lname="nasser", age=20)
s1.display()