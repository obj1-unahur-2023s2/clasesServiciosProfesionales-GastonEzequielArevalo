import profesionales.*

class Personas {
	var property provinciaDondeVive
	
	method puedeSerAtendido(unProfesional){
		return unProfesional.provinciasDondePuedeTrabajar().contains(self.provinciaDondeVive())
	}
}

class Instituciones{
	const universidadesQueConoce = #{}
	
	method agregarUniversidad(unaUniversidad) {universidadesQueConoce.add(unaUniversidad)}
	method quitarUniversidad(unaUniversidad) {universidadesQueConoce.remove(unaUniversidad)}
	
	method puedeSerAtendido(unProfesional){
		return universidadesQueConoce.contains(unProfesional.universidad())
	}
}

class Clubes{
	const provinciasEnLasQueEsta = #{}
	
	method agregarUnaProvincia(unaPronvincia) {provinciasEnLasQueEsta.add(unaPronvincia)}
	method quitarUnaProvincia(unaPronvincia) {provinciasEnLasQueEsta.remove(unaPronvincia)}
	
	method puedeSerAtendido(unProfesional){
		return provinciasEnLasQueEsta.any({provincia => provincia == unProfesional.provinciasDondePuedeTrabajar()})
	}
	
}