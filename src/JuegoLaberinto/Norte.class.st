"
Orientacion: Norte
"
Class {
	#name : #Norte,
	#superclass : #Orientacion,
	#classVars : [
		'UnicaInstancia'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Norte class >> default [
	UnicaInstancia ifNil:[UnicaInstancia:=super new].
	^UnicaInstancia.
]

{ #category : #'instance creation' }
Norte class >> new [
	self error:'no se puede crear objeto'
]

{ #category : #acciones }
Norte >> caminar:unBicho [
	|pos|
	pos := unBicho posicion.
	pos norte entrar:unBicho.
]

{ #category : #'gestion-orientaciones-norte' }
Norte >> obtenerElementoOrEn: unContenedor [
	^unContenedor norte
]

{ #category : #'gestion-orientaciones-norte' }
Norte >> ponerElemento:unEM en:unContenedor [
	unContenedor norte:unEM.
]

{ #category : #recorrido }
Norte >> recorrer:unBloque contenedor:unContenedor [

	unContenedor norte recorrer:unBloque
]
