import elementos.*


class Plaga{
	var poblacion
	
	method transmiteEnfermedades() = poblacion >= 10 
	method atacarElemento(unElemento) {
		unElemento.recibeUnAtaqueDe(self)
		self.efectoAtaque()
	}
	method efectoAtaque(){
		poblacion *= 1.1
	}
}

class Cucarachas inherits Plaga{
	var pesoPromedioBicho
	
	method nivelDeDano()= poblacion * 0.5
	override method transmiteEnfermedades() =super() and pesoPromedioBicho
	override method efectoAtaque(){
		super()
		pesoPromedioBicho += 2
	}
}

class Pulgas inherits Plaga{
	method nivelDeDano()= poblacion * 2
}

class Garrapatas inherits Pulgas{
	override method efectoAtaque(){poblacion *= 1.2}
}

class Mosquitos inherits Plaga{
	method nivelDeDano()= poblacion
	override method transmiteEnfermedades() = super() and poblacion % 3 == 0
	
}