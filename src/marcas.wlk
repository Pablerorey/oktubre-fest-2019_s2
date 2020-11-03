class Marcas {
	var property lupulo = 0
	var property pais = null
	var property graduacionReglamentaria = 6.4
	const volumen = 100
	
	method graduacionReglamentaria() {
		return graduacionReglamentaria / volumen
	}
	
	method graduacion()
}

class Rubia inherits Marcas {
	var property graduacion
	
	override method graduacion() {
		return graduacion / volumen
	}
}

class Negra inherits Marcas {
	
	override method graduacion() {
		return self.graduacionReglamentaria().min(lupulo * 2) 
	}
}

class Roja inherits Negra {
	
	override method graduacion(){
		return super() * 1.25
	}	
}

