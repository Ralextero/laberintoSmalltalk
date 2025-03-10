"
Orientacion: Este
"
Class {
	#name : #Este,
	#superclass : #Orientacion,
	#classVars : [
		'UnicaInstancia'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Este class >> default [
	UnicaInstancia ifNil:[UnicaInstancia:=super new].
	^UnicaInstancia.
]

{ #category : #'instance creation' }
Este class >> new [
	self error:'no se puede crear objeto'
]

{ #category : #acciones }
Este >> caminar:unBicho [
	|pos|
	pos := unBicho posicion.
	pos este entrar:unBicho.
]

{ #category : #'gestion-orientaciones-este' }
Este >> obtenerElementoOrEn: unContenedor [
	^unContenedor este.
]

{ #category : #'gestion-orientaciones-este' }
Este >> ponerElemento:unEM en:unContenedor [
	unContenedor este:unEM.
]

{ #category : #recorrido }
Este >> recorrer:unBloque contenedor:unContenedor [

	unContenedor este recorrer:unBloque
]
