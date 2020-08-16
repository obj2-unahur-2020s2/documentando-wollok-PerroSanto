class Barrio {

	//propiedades de la clase, es una lista.
	const property elementos = []

	//agrega elementos a la lista "elementos"
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}

	//saca elementos de la lista "elementos"
	method sacarElemento(elemento) {
		elementos.remove(elemento)
	}

	//devuelve un numero
	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}

	//devuelve un numero
	method elementosMalos() = elementos.count{ e => not e.esBueno() }

	//devuelve un booleano
	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}

}

