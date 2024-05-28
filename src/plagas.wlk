class Plaga{
	var poblacion
	
	method transmiteEnfermedades() = poblacion >= 10 
	
}

class Cucarachas inherits Plaga{
	var pesoPromedioBicho
	
	method nivelDeDano()= poblacion * 0.5
	override method transmiteEnfermedades() =super() and pesoPromedioBicho
}

class Pulgas inherits Plaga{
	method nivelDeDano()= poblacion * 2
}

class Garrapatas inherits Pulgas{
	
}

class Mosquitos inherits Plaga{
	method nivelDeDano()= poblacion
	override method transmiteEnfermedades() = super() and poblacion % 3 == 0
	
}