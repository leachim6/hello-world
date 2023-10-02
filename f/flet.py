import flet 

def main(page: flet.Page):
    t = flet.Text(value="Hello, world!", color="green")
    page.controls.append(t)
    page.update()

flet.app(target=main)