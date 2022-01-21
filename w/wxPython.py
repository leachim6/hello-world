import wx 
 
app = wx.App() 
window = wx.Frame(None)
panel = wx.Panel(window) 
label = wx.StaticText(panel, label = "Hello World")
window.Show(True) 
app.MainLoop()
