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
Bomba >> entrar [ 
	self activa ifTrue:[Transcript show:'Te metista una bomba en la cara';cr.]
	ifFalse:[self em entrar]
]

{ #category : #consulta }
Bomba >> esBomba [ 
	^true
]

{ #category : #initialization }
Bomba >> initialize [ 
	activa:=false.
]
