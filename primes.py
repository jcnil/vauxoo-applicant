# -*- coding: utf-8 -*-
"""
Puedes realizar una clase en python llamada prime_class que tenga
un método llamado is_prime y que reciba como entrada un número entero
y que de salida regrese un True o False en boolean (no usar cadenas),
para saber si sí es un número primo o no lo es, respectivamente.
"""
class PrimeClass(object):
    """
    Esta clase contiene el Metodo is_prime, el cual recibe el objeto
    self con el que el accede a los atributos y metodos de la clase PrimeClass,
    este metodo is_prime tambien recibe como parametro de entrada un numero
    """
    def is_prime(self, num_int):
        """
        declaro una variable para contar la cantidad de interacciones en que
        se calculara el resto de la division de acuerdo al numero ingresado,
        luego utilizo un for para calcular el resto
        de la division entre el numero, si es igual a cero
        va contando las veces que el resto de la division de ese
        numero es igual a cero, posteriormente valido si
        la cantidad de veces que de dividio es igual a dos
        entonces retorna True es un numero primo de lo
        contrario retorna False no es un numero primo
        """
        count = 0
        for index in range(1, num_int+1):
            if (num_int % index) == 0:
                count = count + 1
        if count == 2:
            return True
        else:
            return False
