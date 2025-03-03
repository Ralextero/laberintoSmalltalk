"
Orientacion: Norte
"
Class {
	#name : #Norte,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

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
