import profesionales.*
import universidad.*

class Empresas {
	var property profesionales = #{}
	var property honorarioDeLaEmpresa = 0
	
	method cantidadDeProfesionalesDeLaUniversidad(uni){
		return profesionales.count({prof => prof.universidad() == uni})
	}
	
	method profesionalesCaros(){
		return profesionales.filter({prof => prof.honorariosPorHora() > honorarioDeLaEmpresa}).asSet()
	}
	
	method universidadesFormadoras(){
		return profesionales.map({prof => prof.universidad()}).asSet()
	}
	
	method profesionalMasBarato(){
		return profesionales.min({prof => prof.honorariosPorHora()})
	}
	
	method esDeGenteAcotada(){
		return not profesionales.any({prof => prof.provinciasDondePuedeTrabajar().size() > 3})
	}
	
	
	
	
	
	
	
}
