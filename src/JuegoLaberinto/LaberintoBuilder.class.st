"
LaberintoBuilder construye un tipo de laberinto por encargo del director
"
Class {
	#name : #LaberintoBuilder,
	#superclass : #Object,
	#instVars : [
		'juego',
		'laberinto'
	],
	#category : #'JuegoLaberinto-Builder'
}

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarBichoModo:unModo posicion:unNum [
	|hab bicho|
	
hab:=self laberinto obtenerHabitacion:unNum.
"crear el bicho, lo voy a copiar del Creator"
"agregar el bicho al juego"
]

{ #category : #'fm-orientaciones' }
LaberintoBuilder >> fabricarEste [ 
	^Este default.
]

{ #category : #'factory method' }
LaberintoBuilder >> fabricarHabitacion:unNum [
	|hab|
	
	hab:=Habitacion new num:unNum.
	hab agregarOrientacion: self  fabricarNorte;agregarOrientacion: self fabricarSur;agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste.
	hab orientaciones do:[:each | hab ponerEnOr: each elemento:self fabricarPared ].
	self laberinto agregarHabitacion:hab.
	^hab 
]

{ #category : #'factory method' }
LaberintoBuilder >> fabricarJuego [ 
	self juego:Juego new.
	self juego laberinto:self laberinto.
]

{ #category : #'factory method' }
LaberintoBuilder >> fabricarLaberinto [
	self laberinto:Laberinto new.

	
]

{ #category : #'fm-orientaciones' }
LaberintoBuilder >> fabricarNorte [
	^Norte default.
]

{ #category : #'fm-orientaciones' }
LaberintoBuilder >> fabricarOeste [  
	^Oeste default.
]

{ #category : #'factory method' }
LaberintoBuilder >> fabricarPared [ 		
	^Pared new.
]

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarPuertaL1:num1 or1:strOr1 L2:num2 or2:strOr2 [

	|hab1 hab2 objOr1 objOr2 pt|
	
	hab1:=self laberinto obtenerHabitacion:num1.
	hab2:=self laberinto obtenerHabitacion:num2.

	objOr1:=self perform:('fabricar',strOr1) asSymbol. "fabricar+Norte => fabricarNorte"
	objOr2:=self perform:('fabricar',strOr2) asSymbol.
	
	pt:= Puerta new.
	pt lado1:hab1.
	pt lado2:hab2.
	
	hab1 ponerEnOr:objOr1  elemento: pt.
	hab2 ponerEnOr:objOr2  elemento: pt. 
]

{ #category : #'fm-orientaciones' }
LaberintoBuilder >> fabricarSur [
	^Sur default.
]

{ #category : #accessing }
LaberintoBuilder >> juego [

	^ juego
]

{ #category : #accessing }
LaberintoBuilder >> juego: anObject [

	juego := anObject
]

{ #category : #accessing }
LaberintoBuilder >> laberinto [

	^ laberinto
]

{ #category : #accessing }
LaberintoBuilder >> laberinto: anObject [

	laberinto := anObject
]
