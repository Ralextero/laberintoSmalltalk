"
EstadoEnte es la interfaz de los estados del ente
"
Class {
	#name : #EstadoEnte,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #acciones }
EstadoEnte >> actua:unBicho [
	self subclassResponsibility.
]

{ #category : #acciones }
EstadoEnte >> atacar:alguien [

	self subclassResponsibility 

]
