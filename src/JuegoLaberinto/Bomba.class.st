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

{ #category : #'as yet unclassified' }
Bomba >> aceptar:unVisitor [
	unVisitor visitarBomba: self
]

{ #category : #accessing }
Bomba >> activa [

	^ activa
]

{ #category : #accessing }
Bomba >> activa: anObject [

	activa := anObject
]

{ #category : #'as yet unclassified' }
Bomba >> activar [
	Transcript show:'Bomba activada';cr.
self activa: true
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

{ #category : #printing }
Bomba >> printOn:aStream [
	aStream nextPutAll: 'Bomba '
]
