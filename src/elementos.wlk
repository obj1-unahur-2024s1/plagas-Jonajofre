

object nivelProduccion{
	var property nivelDeProduccion = 0
}

class Hogar {
	var nivelDeMugre
	var confort
	
	method esBueno() = nivelDeMugre <= confort * 0.5
	
}

 class Huerta {
 	var produccion
 	
 	method esBueno() = produccion > nivelProduccion.nivelDeProduccion()
 }
 
 class Mascota{
 	var nivelDeSalud
 	
 	method esBueno() = nivelDeSalud > 250
 }
 
 