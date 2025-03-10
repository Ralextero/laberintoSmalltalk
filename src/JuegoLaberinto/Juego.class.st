"
Juego es la clase principal del juego del laberinto
"
Class {
	#name : #Juego,
	#superclass : #Object,
	#instVars : [
		'laberinto',
		'bichos'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-bichos' }
Juego >> agregarBichos:unBicho [
	self bichos add:unBicho.
]

{ #category : #accessing }
Juego >> bichos [

	^ bichos
]

{ #category : #accessing }
Juego >> bichos: anObject [

	bichos := anObject
]

{ #category : #laberintos }
Juego >> crearLaberinto2Habitaciones [

	|hab1 hab2 puerta|
	
	hab1:=Habitacion new num:1.
	hab1 este:Pared new.
	hab1 oeste:Pared new.
	hab1 norte:Pared new.
	
	hab2:=Habitacion new num:2.
	hab2 sur:Pared new.
	hab2 este:Pared new.
	hab2 oeste:Pared new.
	
	puerta:=Puerta new.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:Laberinto new.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	
	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFM [

	| hab1 hab2 puerta unFM|
	
	unFM:=Creator new. "cablear o acoplar"
	
	hab1:=unFM fabricarHabitacion:1.
	
	hab2:=unFM fabricarHabitacion:2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	
	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFM:unFM [
"unFM debe ser una instancia de Creator"

	|hab1 hab2 puerta|
	
	hab1:=unFM fabricarHabitacion:1.

	hab2:=unFM fabricarHabitacion:2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	
	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFMD:unFM [
"unFM debe ser una instancia de Creator"

	|hab1 hab2 puerta bomba1 bomba2|
	
	hab1:=unFM fabricarHabitacion:1.

	hab2:=unFM fabricarHabitacion:2.
	
	bomba1:= unFM fabricarBomba. "alternativa: unFM fabricarBomba:unFM fabricarPared"
	bomba1 em:unFM fabricarPared. "esto indica que bomba tiene pared"
	hab1 este:bomba1.
	
	bomba2:= unFM fabricarBomba.
	bomba2 em:unFM fabricarPared. "esto indica que bomba tiene pared"
	hab2 este:bomba2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	
	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto4H4BFM:unFM [
"unFM sebe ser una instancia de Creator"

	| hab1 hab2 hab3 hab4 puerta1 puerta2 puerta3 puerta4 bicho1 bicho2 bicho3 bicho4|
	
	hab1:=unFM fabricarHabitacion:1.
	hab2:=unFM fabricarHabitacion:2.
	hab3:=unFM fabricarHabitacion:3.
	hab4:=unFM fabricarHabitacion:4. 
	
	puerta1:=unFM fabricarPuerta.
	puerta2:=unFM fabricarPuerta.
	puerta3:=unFM fabricarPuerta.
	puerta4:=unFM fabricarPuerta.
	puerta1 lado1:hab1.
	puerta1 lado2:hab2.
	puerta2 lado1:hab1.
	puerta2 lado2:hab3.
	puerta3 lado1:hab2.
	puerta3 lado2:hab4.
	puerta4 lado1:hab3.
	puerta4 lado2:hab4.
	
	hab1 sur:puerta1.
	hab2 norte:puerta1.
	hab1 este:puerta2.
	hab3 oeste:puerta2.
	hab2 este: puerta3.
	hab4 oeste:puerta3.
	hab3 sur:puerta4.
	hab4 norte:puerta4.
	
	bicho1:=unFM fabricarBichoAgresivo.
	bicho2:=unFM fabricarBichoAgresivo.
	bicho3:=unFM fabricarBichoPerezoso.
	bicho4:=unFM fabricarBichoPerezoso.
	
	
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion:hab1.
	self laberinto agregarHabitacion:hab2.
	self laberinto agregarHabitacion:hab3.
	self laberinto agregarHabitacion:hab4.
	self agregarBichos:bicho1.
	self agregarBichos:bicho2.
	self agregarBichos:bicho3.
	self agregarBichos:bicho4.
	
	bicho1 posicion:hab1.
	bicho2 posicion:hab3.
	bicho3 posicion:hab2.
	bicho4 posicion:hab4.
	
	^self laberinto
]

{ #category : #'gestion-bichos' }
Juego >> eliminarBichos:unBicho [
	self bichos remove:unBicho ifAbsent:[Transcript show:'No existe eze bisho';cr]
]

{ #category : #initialize }
Juego >> initialize [ 
	bichos:=OrderedCollection new.
]

{ #category : #accessing }
Juego >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Juego >> laberinto: anObject [

	laberinto := anObject
]

{ #category : #accessing }
Juego >> obtenerHabitacion:unNum [
"delegar (preguntar) y devolver lo que le da laberinto"

	^self laberinto obtenerHabitacion:unNum
]
