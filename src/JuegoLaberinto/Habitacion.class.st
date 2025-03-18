"
Habitacion
"
Class {
	#name : #Habitacion,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #consulta }
Habitacion >> esHabitacion [ 
	^true
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

{ #category : #printing }
Habitacion >> printOn:aStream [

	aStream nextPutAll:'Hab'; nextPutAll:self num asString.
]
