"
estado del ente con vidas mayores a 0
"
Class {
	#name : #Vivo,
	#superclass : #EstadoEnte,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #acciones }
Vivo >> actua:unBicho [
	unBicho puedeActuar.
]

{ #category : #acciones }
Vivo >> atacar:alguien [
	alguien puedeAtacar.
]
