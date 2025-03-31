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
Personaje >> atacar [ 
self juego buscarBicho. 
]

{ #category : #consulta }
Personaje >> heMuerto [ 
	self juego muerePersonaje 
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

{ #category : #'as yet unclassified' }
Personaje >> juegoClonaLaberinto [
	^self juego clonarLaberinto 
]

{ #category : #accessing }
Personaje >> nombre [

	^ nombre
]

{ #category : #accessing }
Personaje >> nombre: anObject [

	nombre := anObject
]
