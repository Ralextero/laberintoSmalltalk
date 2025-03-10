"
Habitacion
"
Class {
	#name : #Habitacion,
	#superclass : #Contenedor,
	#instVars : [
		'num',
		'norte',
		'sur',
		'este',
		'oeste'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
Habitacion >> entrar:alguien [
	"deberemos  indicar quien entra"
	Transcript show:alguien printString; nextPutAll: ' ha entrado en ' ;nextPutAll: self printString;  cr.
	
	alguien posicion:self.
]

{ #category : #consulta }
Habitacion >> esHabitacion [ 
	^true
]

{ #category : #accessing }
Habitacion >> este [

	^ este
]

{ #category : #accessing }
Habitacion >> este: anObject [

	este := anObject
]

{ #category : #caminar }
Habitacion >> irAlEste:unEnte [
	self este entrar:unEnte.
]

{ #category : #caminar }
Habitacion >> irAlNorte:unEnte [
	self norte entrar:unEnte.
]

{ #category : #caminar }
Habitacion >> irAlOeste:unEnte [
	self oeste entrar:unEnte.
]

{ #category : #caminar }
Habitacion >> irAlSur:unEnte [
	self sur entrar:unEnte.
]

{ #category : #accessing }
Habitacion >> norte [

	^ norte
]

{ #category : #accessing }
Habitacion >> norte: anObject [

	norte := anObject
]

{ #category : #accessing }
Habitacion >> num [

	^ num
]

{ #category : #accessing }
Habitacion >> num: anObject [

	num := anObject
]

{ #category : #accessing }
Habitacion >> oeste [

	^ oeste
]

{ #category : #accessing }
Habitacion >> oeste: anObject [

	oeste := anObject
]

{ #category : #printing }
Habitacion >> printOn:aStream [

	aStream nextPutAll:'Hab'; nextPutAll:self num asString.
]

{ #category : #accessing }
Habitacion >> sur [

	^ sur
]

{ #category : #accessing }
Habitacion >> sur: anObject [

	sur := anObject
]
