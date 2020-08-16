class Plaga {
	//propiedades de la clase
	var property poblacion
	
	//devuelve un booleano
	method transmiteEnfermedad() = poblacion >= 10
	
	//no devuelve nada, es una indicacion
	method atacar(elemento){
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}

class PlagaCucaracha inherits Plaga {

	//propiedades de la clase
	var property pesoPromedio

	//devuelve un numero
	method nivelDanio() {
		return poblacion / 2
	}

	//devuelve un numero
	override method transmiteEnfermedad() {
		return super() and pesoPromedio >= 10
	}

	//no devuelve nada, es una indicacion
	override method atacar(elemento) {
		super(elemento)
		pesoPromedio += 2
	}

}

class PlagaMosquito inherits Plaga {

	//devuelve un numero
	method nivelDanio() {
		return poblacion
	}

	//devuelve un booleano
	override method transmiteEnfermedad() {
		return super() and poblacion % 3 == 0
	}

}

class PlagaPulgas inherits Plaga {

	//devuelve un numero
	method nivelDanio() = poblacion * 2

}

class PlagaGarrapatas inherits PlagaPulgas {

	//no devuelve nada, es una indicacion
	override method atacar(elemento) {
		poblacion *= 1.2
		elemento.fueAtado(self)
	}

}

