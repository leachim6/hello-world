import sys
from PyQt4 import QtGui

app = QtGui.QApplication(sys.argv)
widget = QtGui.QWidget()
helloWorld = QtGui.QLabel(widget)
helloWorld.setText("Hello World")
widget.show()
sys.exit(app.exec_())
