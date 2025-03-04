"
Orientacion: Oeste
"
Class {
	#name : #Oeste,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #acciones }
Oeste >> caminar:unBicho [
	|pos|
	pos := unBicho posicion.
	pos oeste entrar:unBicho.
]

{ #category : #'gestion-orientaciones-oeste' }
Oeste >> obtenerElementoOrEn: unContenedor [
	^unContenedor oeste.
]

{ #category : #'gestion-orientaciones-oeste' }
Oeste >> ponerElemento:unEM en:unContenedor [
	unContenedor oeste:unEM.
]

{ #category : #recorrido }
Oeste >> recorrer:unBloque contenedor:unContenedor [

	unContenedor oeste recorrer:unBloque
]
