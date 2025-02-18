"
Laberinto 
"
Class {
	#name : #Laberinto,
	#superclass : #ElementoMapa,
	#instVars : [
		'habitaciones'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #habitaciones }
Laberinto >> agregarHabitacion:unaHabitacion [

	self habitaciones add:unaHabitacion
]

{ #category : #habitaciones }
Laberinto >> eliminarHabitacion:unaHabitacion [

	self habitaciones remove:unaHabitacion ifAbsent:["No existe ese objeto habitacion"]
]

{ #category : #caminar }
Laberinto >> entrar [
	"deberemos  indicar quien entra"
	Transcript show:'Has entrado en una habitacion';cr.
]

{ #category : #accessing }
Laberinto >> habitaciones [

	^ habitaciones
]

{ #category : #accessing }
Laberinto >> habitaciones: anObject [

	habitaciones := anObject
]

{ #category : #initialization }
Laberinto >> initialize [ 
	habitaciones:=OrderedCollection  new.
]

{ #category : #habitaciones }
Laberinto >> obtenerHabitacion:unNum [

	^self habitaciones detect:[:each | each num = unNum ] ifNone:[ nil ]
]
