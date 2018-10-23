class Formacion {

	var vagones = []
	var locomotoras = []

	method agregarVagonPasajero(unVagonPasajero) {
		vagones.add(unVagonPasajero)
	}
	method agregarVagonCarga(unVagonCarga) {
		vagones.add(unVagonCarga)
	}

	method agregarLocomotora(unaLocomotora) {
		locomotoras.add(unaLocomotora)
	}

	method totalDePasajeros() {
		return vagones.sum({ vagon => vagon.cantPasajerosMaximo() })
	}

	method esLiviano() {return  vagones.filter({ vagon => vagon.pesoMaximo() < 2500 })}

	method velocidadMax() {
		return locomotora.max({ locomotora => locomotora.velocidadMax() })
	}

	method eficiente() {
		return locomotoras.all{ locomotora => locomotora.arrastreUtil() == locomotora.peso() * 5 }
	}

	method totalDeArrastreUtil() {
		return locomotoras.sum({ locomotora => locomotora.arrastreUtil() })
	}

	method totalPesoVagones() {
		return vagones.sum({ vagon => vagon.pesoMaximo() })
	}

	method enMovimiento() {
		return self.totalDeArrastreUtil() > self.totalPesoVagones()
	}

	method kilosNecesariosParaMoverse() {
		if (self.enMovimiento()) {
			return 0
		} else {
			return (self.totalPesoVagones() - self.totalDeArrastreUtil())
		}
	}

	method vagonMasPesado() {
		return vagones.max{ vagon => vagon.pesoMaximo() }
	}

	method pesoTotalLocomotoras() {
		return locomotoras.sum{ locomotora => locomotora.peso() }
	}

	method pesoTotalFormacion() {
		return self.totalPesoVagones() + self.pesoTotalLocomotoras()
	}

	method complejidadPorPeso() {
		return self.pesoTotalFormacion() > 10000
	}

	method cantidadElementos() {
		return locomotoras.size() + vagones.size()
	}

	method complejidadPorTamanio() {
		return self.cantidadElementos() > 20
	}

	method formacionCompleja() {
		return self.complejidadPorPeso() || self.complejidadPorTamanio()
	}
}
class LargaDistancia inherits Formacion {

	var origen = true
	var destino = true

	
method velocidadLimite() {
		if (destino && origen) {
			return 200
		} else {
			return 150
		}
	}

	method velocidadMaxima() {
		return self.velocidadMaxima().min(self.velocidadLimite())
	}

}

class CortaDistancia inherits Formacion {


	method formacionBienArmada() {
		return (self.formacionCompleja()) && self.enMovimiento()
	}

}


