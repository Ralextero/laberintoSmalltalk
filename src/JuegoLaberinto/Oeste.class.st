"
Orientacion: Oeste
"
Class {
	#name : #Oeste,
	#superclass : #Orientacion,
	#classVars : [
		'UnicaInstancia'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Oeste class >> default [
	UnicaInstancia ifNil:[UnicaInstancia:=super new].
	^UnicaInstancia.
]

{ #category : #'instance creation' }
Oeste class >> new [
	self error:'no se puede crear objeto'
]

{ #category : #'as yet unclassified' }
Oeste >> calcularPosicionDesde: unaForma [ 
	| unPunto |
	unPunto := (unaForma punto x-1) @ (unaForma punto y).
	unaForma este calcularPosicionDesde: unaForma en: unPunto
]

{ #category : #acciones }
Oeste >> caminar:unBicho [
	|pos|
	pos := unBicho posicion.
	pos irAlOeste:unBicho.
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
