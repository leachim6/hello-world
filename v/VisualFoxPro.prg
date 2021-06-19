MESSAGEBOX("Hello World")

? "Hello World"

loForm = CREATEOBJECT("HiForm")
loForm.Show(1)

DEFINE CLASS HiForm AS Form
	AutoCenter	= .T.
	Caption		= "Hello World"
	
	ADD OBJECT lblHi as Label ;
		WITH Caption = "Hello World"
ENDDEFINE
