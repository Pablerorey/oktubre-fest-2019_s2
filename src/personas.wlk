import jarras.*
import marcas.*

class Persona {
	const property jarras = []
	var property peso = 0
	var property musicaTradicional = false
	var property nivelDeAguante = 0
	
	method comprarJarras(jarrass){
		jarras.addAll(jarrass)
	}
	
	method estaEbria() {
		return self.totalDeAlcohol() * peso > nivelDeAguante
	}
	
	method totalDeAlcohol() {
		return jarras.sum({j=>j.contenidoDeAlcohol()})
	}
	
	method leGusta(marca)
}

class Belga inherits Persona {
	
	override method leGusta(marca) {
		return marca.lupulo() > 4
	}
}

class Checo inherits Persona {
	
	override method leGusta(marca) {
		return marca.graduacion() > 0.08
	}
}

class Aleman inherits Persona {
	
	override method leGusta(marca) {
		return true
	}
}

