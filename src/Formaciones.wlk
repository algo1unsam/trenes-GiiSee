class Formacion {

	var vagones = []
	var locomotoras = []

	method agregar(unVagon) {
		vagones.add(unVagon)
	}

	method agregarLocomotora(unaLocomotora) {
		locomotoras.add(unaLocomotora)
	}

	method totalDePasajeros() {
		return vagones.sum({ vagon => vagon.cantPasajerosMaximo() })
	}

	method esLiviano() = vagones.filter({ vagon => vagon.peso() < 2500 })

	method velocidadMax() {
		return locomotora.min({ locomotora => locomotora.velocidadMax() })
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
		return vagones.max{ vagon => vagon.peso() }
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

