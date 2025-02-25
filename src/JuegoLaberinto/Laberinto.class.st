"
Laberinto 
"
Class {
	#name : #Laberinto,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #habitaciones }
Laberinto >> agregarHabitacion:unaHabitacion [

	self hijos add:unaHabitacion
]

{ #category : #habitaciones }
Laberinto >> eliminarHabitacion:unaHabitacion [

	self hijos remove:unaHabitacion ifAbsent:["No existe ese objeto habitacion"]
]

{ #category : #caminar }
Laberinto >> entrar [
	"deberemos  indicar quien entra"
	Transcript show:'Has entrado en una habitacion';cr.
]

{ #category : #consulta }
Laberinto >> esLaberinto [ 
	^true
]

{ #category : #habitaciones }
Laberinto >> obtenerHabitacion:unNum [

	^self hijos detect:[:each | each num = unNum ] ifNone:[ nil ]
]
