import jarras.*
import marcas.*
import personas.*

class CarpaCervezera {
	const property personas = []
	const property jarrasVendidas = []
	var property limiteDeGente = 0
	var property tieneBanda = false
	var property marcaQueVende 
	
	method agregarJarraVendida(jarra) {
		jarrasVendidas.add(jarra)
	}
	
	method dejaIngresarA(persona) {
		return personas.size() < limiteDeGente and not persona.estaEbria()
	}
	
	method ingresarPersona(persona) {
		personas.add(persona)
	}
	
	
	method servirJarraDe_LitrosA(litros, persona) {
		if(personas.contains(persona)) {
			const jarraVendida = new Jarra(marca = self.marcaQueVende(), capacidad = litros)
			persona.comprarJarras([jarraVendida])
			self.agregarJarraVendida(jarraVendida)
		}
		else { self.error("LA PERSONA A LA QUE INTENTAS SERVIR LA JARRA NO ESTA EN LA CARPA") }
	}
	
	method ebriosEmpedernidos() {
		return personas.count({})
	}
}
