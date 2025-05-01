/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	var property pelotaLionel = pelota
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method patear() {
		self.validarSiLionelTieneLaPelota()
		const x = (game.width() - 1).min(pelotaLionel.position().x() + 3)
		pelotaLionel.position(game.at(x, position.y()))
	}

	method validarSiLionelTieneLaPelota(){
		if (position != pelotaLionel.position()) {
			self.error("No tengo la pelota")
		}
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	

/* 	method serPateada() {
		position = position.rigth((game.width() - 1).min(position.x() + 3)) 
	} */




}

