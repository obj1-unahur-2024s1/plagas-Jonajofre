class Barrio{
	const elementos = []
	
	method agregarElementos(listaDeElementos){
		elementos.addAll(listaDeElementos)
	}
	method eliminarElemento(elemento){
		elementos.remove(elemento)
	}
}
