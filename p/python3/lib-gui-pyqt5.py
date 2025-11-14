import sys
from PyQt5.QtWidgets import QApplication, QWidget, QLabel

app = QApplication(sys.argv)
widget = QWidget()

helloWorld = QLabel(widget)
helloWorld.setText("Hello World")

widget.show()
sys.exit(app.exec_())
