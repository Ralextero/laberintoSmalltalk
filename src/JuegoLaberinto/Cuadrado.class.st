"
Es una figura de cuatro lados. Es una posible implementacion de los contenedores
"
Class {
	#name : #Cuadrado,
	#superclass : #Forma,
	#instVars : [
		'norte',
		'sur',
		'este',
		'oeste'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Cuadrado >> este [

	^ este
]

{ #category : #accessing }
Cuadrado >> este: anObject [

	este := anObject
]

{ #category : #caminar }
Cuadrado >> irAlEste:unEnte [
	self este entrar:unEnte.
]

{ #category : #caminar }
Cuadrado >> irAlNorte:unEnte [
	self norte entrar:unEnte.
]

{ #category : #caminar }
Cuadrado >> irAlOeste:unEnte [
	self oeste entrar:unEnte.
]

{ #category : #caminar }
Cuadrado >> irAlSur:unEnte [
	self sur entrar:unEnte.
]

{ #category : #accessing }
Cuadrado >> norte [

	^ norte
]

{ #category : #accessing }
Cuadrado >> norte: anObject [

	norte := anObject
]

{ #category : #accessing }
Cuadrado >> oeste [

	^ oeste
]

{ #category : #accessing }
Cuadrado >> oeste: anObject [

	oeste := anObject
]

{ #category : #accessing }
Cuadrado >> sur [

	^ sur
]

{ #category : #accessing }
Cuadrado >> sur: anObject [

	sur := anObject
]
