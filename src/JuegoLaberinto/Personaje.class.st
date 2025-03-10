"
Representa al usuario en el juego
"
Class {
	#name : #Personaje,
	#superclass : #Ente,
	#instVars : [
		'nombre'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #acciones }
Personaje >> esAtacadoPor:unBicho [ "mensaje 12"
	
	Transcript show:self printString ; nextPutAll:' es atacado por ' ; nextPutAll: unBicho printString.
	self vidas:(self vidas - unBicho poder).
	Transcript show:'Vidas: ' ;nextPutAll: self vidas asString ; cr.
	self vidas < 0 ifTrue:[self juego muerePersonaje].
]

{ #category : #movimientos }
Personaje >> irAlEste [
	 self posicion irAlEste:self.
]

{ #category : #movimientos }
Personaje >> irAlNorte [
	 self posicion irAlNorte:self.
]

{ #category : #movimientos }
Personaje >> irAlOeste [
	 self posicion irAlOeste:self.
]

{ #category : #movimientos }
Personaje >> irAlSur [
	 self posicion irAlSur:self.
]

{ #category : #accessing }
Personaje >> nombre [

	^ nombre
]

{ #category : #accessing }
Personaje >> nombre: anObject [

	nombre := anObject
]
