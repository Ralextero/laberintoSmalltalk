"
Bomba es un EM que explota si esta activa. Puede actuar como decorador.
"
Class {
	#name : #Bomba,
	#superclass : #Decorator,
	#instVars : [
		'activa'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Bomba >> activa [

	^ activa
]

{ #category : #accessing }
Bomba >> activa: anObject [

	activa := anObject
]

{ #category : #caminar }
Bomba >> entrar:alguien [
	self activa ifTrue:[Transcript show:alguien printString ; nextPutAll: ' ha chocado con una bomba en la cara';cr.
		"queda quitar vidas, explotar"
		]
	ifFalse:[self em entrar:alguien]
]

{ #category : #consulta }
Bomba >> esBomba [ 
	^true
]

{ #category : #initialization }
Bomba >> initialize [ 
	activa:=false.
]
