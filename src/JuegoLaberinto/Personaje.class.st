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

{ #category : #consulta }
Personaje >> avisar [
	self juego muerePersonaje 
]

{ #category : #'as yet unclassified' }
Personaje >> crearNuevoLaberinto:unTunel [

	unTunel crearNuevoLaberinto:self.
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

{ #category : #acciones }
Personaje >> puedeAtacar [ 
self juego buscarBicho. 
]
