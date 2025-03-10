"
Laberinto 
"
Class {
	#name : #Laberinto,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #acciones }
Laberinto >> abrirPuertas [
	self recorrer:[:each | each esPuerta ifTrue:[each abrir]].
]

{ #category : #habitaciones }
Laberinto >> agregarHabitacion:unaHabitacion [

	self hijos add:unaHabitacion
]

{ #category : #acciones }
Laberinto >> cerrarPuertas [

self recorrer:[:each | each esPuerta ifTrue:[each cerrar]].
]

{ #category : #habitaciones }
Laberinto >> eliminarHabitacion:unaHabitacion [

	self hijos remove:unaHabitacion ifAbsent:["No existe ese objeto habitacion"]
]

{ #category : #caminar }
Laberinto >> entrar:alguien [
|hab1 |
hab1:= self obtenerHabitacion:1.
hab1 entrar:alguien.
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

{ #category : #printing }
Laberinto >> printOn:aStream [

	aStream nextPutAll:'Laberinto'
]
