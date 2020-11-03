import jarras.*
import marcas.*
import carpas.*

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
	
    method quiereEntrar(carpa) {
		return self.leGusta(carpa.marcaQueVende()) and carpa.tieneBanda() == self.musicaTradicional()
	}
	
	method puedeEntrarA(carpa) {
		return carpa.dejaIngresarA(self)
	}
	
	method ingresarA(carpa) {
		if (self.puedeEntrarA(carpa)) {
			carpa.ingresarPersona(self)
		}
		else { self.error("TOCA DE ACA DOBLADO SI NO QUERES MORIR")	}
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
	
	override method quiereEntrar(carpa) {
		return super(carpa) and carpa.personas().size().even()
	}
}

