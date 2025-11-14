import sys
from panther import Panther
from panther.app import API


@API()
def hello_world():
    return 'Hello World'


app = Panther(__name__, configs=sys.modules[__name__], urls={'/': hello_world})
