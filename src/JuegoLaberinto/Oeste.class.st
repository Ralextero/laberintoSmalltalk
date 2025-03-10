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
