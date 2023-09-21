import rodados.*

class Dependencias {
	var property cantidadEmpleado = 0
	const rodados = []
	
	method agregarAFlota(rodado){
		return rodados.add(rodado)
	}
	method quitarDeFlota(rodado){
		rodados.remove(rodado)
	}	
	method pesoTotalFlota(){
		return rodados.sum({rodado => rodado.peso()})
	}
	method todosSuperanXVelocidad(velocidad){
		return rodados.all({r => r.velocidadMax() >= velocidad})
	}
	method estaBienEquipada(){
		return rodados.size() >= 3 && self.todosSuperanXVelocidad(100)
	}
	method capacidadTotalEnColor(color){
		return (self.rodadosDeUnColor(color)).sum({r => r.capacidad()})
	}
	
	method rodadosDeUnColor(unColor) {
		return rodados.filter({r=>r.color()==unColor})
	}
	method colorDelRodadoMasRapido(){
		return self.rodadoMasRapido().color()
	}
	
	method rodadoMasRapido() {
		return rodados.max({r=>r.velocidad()})
	}
	method capacidadDeLaFlota(){
		return rodados.sum({r=>r.capacidad()})
	}
	method capacidadFaltante(){
		return 0.max(cantidadEmpleado-self.capacidadDeLaFlota())
	}
	method esGrande(){
		return cantidadEmpleado >= 40 and rodados.size()>=5
	}
}

	
