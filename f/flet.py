import flet 

def main(page: flet.Page):
    t = flet.Text(value="Hello, World!", color="red")
    page.controls.append(t)
    page.update()

flet.app(target=main)