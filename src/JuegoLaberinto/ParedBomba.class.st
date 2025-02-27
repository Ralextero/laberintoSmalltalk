"
Pared Bomba es una subclase de Pared que tiene una variable de instancia que se llama activa
"
Class {
	#name : #ParedBomba,
	#superclass : #Pared,
	#instVars : [
		'activa'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
ParedBomba >> activa [

	^ activa
]

{ #category : #accessing }
ParedBomba >> activa: anObject [

	activa := anObject
]

{ #category : #caminar }
ParedBomba >> entrar [ 
	Transcript show:'Te metista una pared-bomba en la cara';cr.
]

{ #category : #initialization }
ParedBomba >> initialize [ 
	activa:=false.
]
