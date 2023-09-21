import dependencias.*

class Corsa {
	var property color
	
	
	method capacidad() = 4
	method velocidadMax() = 150
	method peso() = 1300
	method color() = "color"
}

class Kwid{
	var property tieneTanque = false
	
	method capacidad() = if(tieneTanque){3}else{4}
	method velocidadMax() = if(tieneTanque){120}else{110}
	method peso() = if(tieneTanque){1350}else{1200}
	method color() = "azul"
}

object trafic {
	var property interior
	var property motor
		
	method configurar(unInterior, unMotor){
		interior = unInterior
		motor = unMotor
	}
	method interior() = interior
	method motor() = motor
	method capacidad() = interior.capacidad()
	method velocidadMax() = motor.velocidadMax()
	method peso() = motor.peso() + interior.peso() + 4000
	method color() = "blanco"
}

object motorBataton{
	method peso() = 500
	method velocidadMax() = 80
}

object motorPulenta{
	method peso() = 800
	method velocidadMax() = 130
}

object interiorComodo{
	method capacidad() = 5
	method peso() = 700
}

object interiorPopular{
	method capacidad() = 12
	method peso() = 1000
}

class AutosEspecial{
	var property capacidad
	var property velocidadMax
	var property peso
	var property color
}


