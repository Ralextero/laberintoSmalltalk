"
Entrar representa a la peticion de entrar de los ElementoMapa
"
Class {
	#name : #Entrar,
	#superclass : #Comando,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Entrar >> ejecutar:alguien [
	self receptor entrar:alguien.
]
