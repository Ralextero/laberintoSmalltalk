"
Orientacion: Sur
"
Class {
	#name : #Sur,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-orientaciones-sur' }
Sur >> obtenerElementoOrEn: unContenedor [
	^unContenedor sur.
]

{ #category : #'gestion-orientaciones-sur' }
Sur >> ponerElemento:unEM en:unContenedor [
	unContenedor sur:unEM.
]
