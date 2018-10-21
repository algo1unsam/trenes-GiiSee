class VagonDePasajero {

	var property largo = 40
	var property anchoUtil = 1.5
	var property cantDePasajeros = 3

	method cantPasajerosMaximo() {
		if (self.anchoUtil() <= 2.5) {
			return  largo * 8
		} else {
			return largo * 10
		}
	}

	method peso() {
		return self.pesoMaximo()
	}

	method pesoMaximo() {
		return self.cantDePasajeros() * 80
	}
}

class VagonDeCarga {

	var property cargaMax = 100
	var cantPasajeros = 10

	method cantPasajeros() = cantPasajeros

	method pesoMaximo() {
		return self.cargaMax() + self.cantPasajeros() + 160
	}

}

class Locomotora {

	var property peso = 1000
	var property pesoMax = 11000
	var property velocidadMax = 80

	method arrastreUtil() {
		return pesoMax - self.peso()
	}

}

