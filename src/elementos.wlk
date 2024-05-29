import plagas.*

object nivelProduccion{
	var property nivelDeProduccion = 0
}

class Hogar {
	var nivelDeMugre
	var confort
	
	method esBueno() = nivelDeMugre <= confort * 0.5
	method recibeAtaqueDE(unaPlaga){
		nivelDeMugre += unaPlaga.nivelDeDano()
		
	}
	
}

 class Huerta {
 	var produccion
 	
 	method esBueno() = produccion > nivelProduccion.nivelDeProduccion()
    method recibeAtaqueDE(unaPlaga){
		produccion = 0.max(produccion - unaPlaga.nivelDeDano()*0.1 -
			if(unaPlaga.transmiteEnfermedades()) 10 else 0) 
			
	}
 }
 
 class Mascota{
 	var nivelDeSalud
 	
 	method esBueno() = nivelDeSalud > 250
 	method recibeAtaqueDE(unaPlaga){
 		nivelDeSalud = if(unaPlaga.transmiteEnfermedades()) 0.max(nivelDeSalud - unaPlaga.nivelDeDano()) else nivelDeSalud
       	
 	}
 }
 
 