"
Muerto estado del ente con vidas igual a 0
"
Class {
	#name : #Muerto,
	#superclass : #EstadoEnte,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #acciones }
Muerto >> actua:unBicho [
"los muertos no actuan"
]

{ #category : #acciones }
Muerto >> atacar:alguien [
	"los muertos no atacan"
]
