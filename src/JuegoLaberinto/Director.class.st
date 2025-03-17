"
Director procesa el archivo JSON que especifica el laberinto.
Tambien se encarga del proceso de creacion.
"
Class {
	#name : #Director,
	#superclass : #Object,
	#instVars : [
		'builder',
		'dict'
	],
	#category : #'JuegoLaberinto-Builder'
}

{ #category : #accessing }
Director >> builder [

	^ builder
]

{ #category : #accessing }
Director >> builder: anObject [

	builder := anObject
]

{ #category : #accessing }
Director >> dict [

	^ dict
]

{ #category : #accessing }
Director >> dict: anObject [

	dict := anObject
]

{ #category : #'as yet unclassified' }
Director >> iniBuilder [
	self builder:LaberintoBuilder new.
]

{ #category : #'as yet unclassified' }
Director >> leerArchivo:unArchivoJSON [
	self dict:(unArchivoJSON asFileReference readStreamDo: [ :readStream | (NeoJSONReader on: readStream) next ]).

]

{ #category : #'as yet unclassified' }
Director >> procesar:unArchivoJSON [
	self leerArchivo:unArchivoJSON.
	self iniBuilder.
]
