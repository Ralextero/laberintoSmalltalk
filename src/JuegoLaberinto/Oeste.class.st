"
Orientacion: Oeste
"
Class {
	#name : #Oeste,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-orientaciones-oeste' }
Oeste >> obtenerElementoOrEn: unContenedor [
	^unContenedor oeste.
]

{ #category : #'gestion-orientaciones-oeste' }
Oeste >> ponerElemento:unEM en:unContenedor [
	unContenedor oeste:unEM.
]
