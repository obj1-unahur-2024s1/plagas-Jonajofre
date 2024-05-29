class Barrio{
	const elementos = []
	
	method agregarElementos(listaDeElementos){
		elementos.addAll(listaDeElementos)
	}
	method eliminarElemento(elemento){
		elementos.remove(elemento)
	}
	method esCopado()= self.cantBuenos()> self.cantNoBuenos()
	method cantBuenos() = elementos.count{e => e.esBueno()}
	method cantNoBuenos() = elementos.count{e => !e.esBueno()}
}
