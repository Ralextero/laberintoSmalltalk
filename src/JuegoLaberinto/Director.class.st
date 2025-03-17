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
Director >> fabricarBichos [
	"recorrer la colección de bichos"
	(self dicc at:'bichos' ifAbsent:[^nil]) do:[:each |
		self builder fabricarBicho: (each at:'modo') posicion:(each at:'posicion')]. 

]

{ #category : #'factory method' }
Director >> fabricarJuego [ 
	self builder fabricarJuego.
]

{ #category : #'factory method' }
Director >> fabricarLaberinto [
	self builder fabricarLaberinto.
	
	(self dict at:'laberinto') do:[:each | self fabricarLaberintoRecursivo:each en:'root' ].

"recorrer la colección de puertas, para poner las puertas"
	(self dict at:'puertas') do:[:each | 
		self builder fabricarPuertaL1:(each at:1) or1:(each at:2) L2:(each at:3) or2:(each at:4)].


]

{ #category : #'as yet unclassified' }
Director >> fabricarLaberintoRecursivo:unDic en:padre [
| con |

"contenedores"
(unDic at:'tipo')='habitacion' ifTrue:[con:=self builder fabricarHabitacion:(unDic at:'num')].

"hojas"

(unDic at:'hijos' ifAbsent:[^nil]) do:[:each | self fabricarLaberintoRecursivo:each en:con].


]

{ #category : #'as yet unclassified' }
Director >> iniBuilder [
"aqui podriamos cambiar el builder para crear laberintos diferentes"
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
	self fabricarLaberinto.
	self fabricarJuego.
	self fabricarBichos.
]
