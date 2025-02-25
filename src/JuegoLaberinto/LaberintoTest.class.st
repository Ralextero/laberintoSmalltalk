Class {
	#name : #LaberintoTest,
	#superclass : #TestCase,
	#instVars : [
		'juego'
	],
	#category : #'JuegoLaberinto-Pruebas'
}

{ #category : #accessing }
LaberintoTest >> juego [

	^ juego
]

{ #category : #accessing }
LaberintoTest >> juego: anObject [

	juego := anObject
]

{ #category : #running }
LaberintoTest >> setUp [
	| fm |
	super setUp.

	juego:=Juego new.
	
	fm:=Creator new.
	
	juego crearLaberinto2HabitacionesFM:fm.
	
	 
]

{ #category : #tests }
LaberintoTest >> testHabitaciones [

	|hab1 hab2 pt12 norte sur este oeste fm|
	
	fm:=Creator new.
	
	norte:=fm fabricarNorte.
	sur:=fm fabricarSur.
	este:=fm fabricarEste.
	oeste:=fm fabricarOeste.
	
	hab1:=self juego obtenerHabitacion: 1.
	hab2:=self juego obtenerHabitacion: 2.
	
	self assert:hab1 esHabitacion. 
	self assert:hab2 esHabitacion.
	
	self assert:hab1 norte esPared. "para mejorar: hab1 obtenerElementoOr:norte o norte variable temporal"
	
	"..."
	
	pt12:=hab1 sur. "hab1 obtenerElementoOr:sur"
	self assert:pt12 esPuerta.
	self assert:hab2 norte esPuerta.
	self assert:pt12 abierta not.
	
	
	
]

{ #category : #tests }
LaberintoTest >> testIniciales [

	| numHab |
	self assert: self juego notNil.
	self assert: self juego laberinto notNil.
	numHab := self juego laberinto hijos size. "seria mucho mejor: self juego obtenerNumHab"
	self assert: numHab equals: 2.
]
