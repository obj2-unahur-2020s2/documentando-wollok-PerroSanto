class Hogar {

	//propiedades de la clase
	var property nivelMugre
	var property confort

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 

	//devuelve un booleano
	method esBueno() = nivelMugre <= confort / 2

	//no devuelve nada, es una indicacion
	method fueAtacado(plaga) {
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {

	//propiedades de la clase
	var property nivelSalud

	//no devuelve nada, es una indicacion
	method fueAtacado(plaga) {
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}

	//devuelve un booleano
	method esBueno() = nivelSalud > 250

}

class Huerta {

	//propiedades de la clase
	var property capacidadProduccion

	//devuelve un booleano
	method esBueno() {
		return capacidadProduccion > INTA.produccionMinima()
	}

	//no devuelve nada, es una indicacion
	method fueAtacado(plaga) {
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}

}

object INTA {
	//propiedades del objeto
	var property produccionMinima

}

