"
Orientacion: Sur
"
Class {
	#name : #Sur,
	#superclass : #Orientacion,
	#classVars : [
		'UnicaInstancia'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Sur class >> default [
	UnicaInstancia ifNil:[UnicaInstancia:=super new].
	^UnicaInstancia.
]

{ #category : #'instance creation' }
Sur class >> new [
	self error:'no se puede crear objeto'
]

{ #category : #'as yet unclassified' }
Sur >> calcularPosicionDesde: unaForma [ 
	| unPunto |
	unPunto := (unaForma punto x) @ (unaForma punto y+1).
	unaForma este calcularPosicionDesde: unaForma en: unPunto
]

{ #category : #acciones }
Sur >> caminar:unBicho [
	|pos|
	pos := unBicho posicion.
	pos irAlSur:unBicho.
]

{ #category : #'gestion-orientaciones-sur' }
Sur >> obtenerElementoOrEn: unContenedor [
	^unContenedor sur.
]

{ #category : #'gestion-orientaciones-sur' }
Sur >> ponerElemento:unEM en:unContenedor [
	unContenedor sur:unEM.
]

{ #category : #recorrido }
Sur >> recorrer:unBloque contenedor:unContenedor [

	unContenedor sur recorrer:unBloque
]
