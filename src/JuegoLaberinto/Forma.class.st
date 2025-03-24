"
Forma representa la topologia o implemetnacion de un contenedor. Puede ser cuadrado, hexagono, etc...
"
Class {
	#name : #Forma,
	#superclass : #Object,
	#instVars : [
		'orientaciones'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-orientaciones' }
Forma >> agregarOrientacion:unaOr [
	self orientaciones add:unaOr.
]

{ #category : #initialization }
Forma >> initialize [ 
	orientaciones:=OrderedCollection new.
	
]

{ #category : #'gestion-orientaciones' }
Forma >> obtenerElementoOr:unaOr [
	^unaOr obtenerElementoOrEn:self.
]

{ #category : #consulta }
Forma >> obtenerOrientacion [ 
	|ind|
	ind:=(1 to:self orientaciones size) atRandom.
	^self orientaciones at:ind.
	
	"self orientaciones size"
]

{ #category : #accessing }
Forma >> orientaciones [

	^ orientaciones
]

{ #category : #accessing }
Forma >> orientaciones: anObject [

	orientaciones := anObject
]
