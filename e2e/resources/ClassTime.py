import datetime

class Fecha(object):
  def __init__(self, arg1, arg2):
        self.arg1 = arg1
        self.arg2 = arg2

def Obtener_fechaN(texto):
      return datetime(texto)