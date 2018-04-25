# -*- coding: utf-8 -*-
"""
Puedes realizar una clase en python llamada calculator_class que
tenga un método llamado sum y que reciba como entrada una lista de
numeros numeros y que de salida regrese la suma de los mismos.
"""


class CalculatorClass(object):
    """
    Esta clase hereda de object y contiene el Metodo sum,
    el cual recibe el objeto self con el que el accede a los atributos y
    metodos de la clase CalculatorClass, este metodo sum tambien
    recibe como parametro de entrada una lista
    """

    def sum(self, num_list):
        """
        Declaro una variable sum que va a almacenar la suma de cada uno
        de los elementos que conforman la lista, al final retorna la suma
        de todos los numeros que conforman la lista
        """
        acum = 0
        for number in num_list:
            acum = acum + number
        return acum
