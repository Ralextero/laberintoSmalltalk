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

{ #category : #caminar }
Forma >> irAlEste:alguien [
self subclassResponsibility 
]

{ #category : #caminar }
Forma >> irAlNorte:alguien [
self subclassResponsibility 
]

{ #category : #caminar }
Forma >> irAlOeste:alguien [
self subclassResponsibility 
]

{ #category : #caminar }
Forma >> irAlSur:alguien [
self subclassResponsibility 
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

{ #category : #'gestion-orientaciones' }
Forma >> obtenerOrientaciones [ 
	^self orientaciones
]

{ #category : #accessing }
Forma >> orientaciones [

	^ orientaciones
]

{ #category : #accessing }
Forma >> orientaciones: anObject [

	orientaciones := anObject
]

{ #category : #'gestion-orientaciones' }
Forma >> ponerEnOr:unaOr elemento:unEM [
	"opcion 1: usar if then else para preguntar por unaOr"
	"opcion 2: delegar en la orientacion"
	unaOr ponerElemento:unEM en:self.
]
