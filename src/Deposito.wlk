class Deposito {

	var formaciones = []
	var locomotoras = []

	method agregarLocomotoras(locomotora) {
		locomotoras.add(locomotora)
	}

	method agregarFormacion(formacion) {
		formaciones.add(formacion)
	}

	method mostrarLocomotora() {
		return locomotoras
	}

	method locomotoras() {
		return locomotoras
	}

	method VagonesMasPesados() {
		return formaciones.map{ formacion => formacion.vagonMasPesado() }
	}

	method conductorConExperiencia() {
		return formaciones.findOrDefault({ formacion => formacion.formacionCompleja() }, 0) != 0
	}

	method buscarLocomotorasConArrastreDisponible(formacion) {
		return locomotoras.find{ locomotora => locomotora.arrastreUtil() >= formacion.empuje() }
	}

	method locomotoraAgregar(empujeFaltante) {
		return locomotoras.find({ locomotora => locomotora.calcularArrastreUtil() >= empujeFaltante }, false)
	}

}

