"
Decorator es la interfaz comun de los decoradores
"
Class {
	#name : #Decorator,
	#superclass : #Tunel,
	#instVars : [
		'em'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Decorator >> em [

	^ em
]

{ #category : #accessing }
Decorator >> em: anObject [

	em := anObject
]
