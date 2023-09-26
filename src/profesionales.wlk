import universidad.*

class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	
	method cobrar(unImporte) {
		asociacionProfesionalesDelLitoral.recibirDonacion(unImporte)
	}
}


class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar(){
		return self.universidad().provincia()
	}
	
	method honorariosPorHora(){
		return  self.universidad().honorariosPorHora()
	}
	
	method cobrar(unImporte) {
		universidad.recibirDonacion(unImporte/2)
	}
}

class ProfesionalLibre {
	var universidad
	var property pronviciasDondeTrabajar
	var property honorariosPorHora
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
		method cobrar(unImporte) { totalRecaudado += unImporte }

	method pasarDinero(profesional,unImporte) {
		profesional.cobrar(unImporte.min(totalRecaudado))
		totalRecaudado -= unImporte.min(totalRecaudado)
	}
}
