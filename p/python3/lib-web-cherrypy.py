import cherrypy

class HelloWorld(object):
    @cherrypy.expose
    def index(self):
        return "Hello World"

cherrypy.quickstart(HelloWorld())
