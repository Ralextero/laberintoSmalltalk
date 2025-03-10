"
Creator definido en el libro Desing patterns
"
Class {
	#name : #Creator,
	#superclass : #Object,
	#category : #'JuegoLaberinto-FactoryMethod'
}

{ #category : #'fm-bichos' }
Creator >> fabricarBichoAgresivo [
	|bicho|
	
	bicho:= Bicho new.
	bicho modo: Agresivo new.
	bicho poder:5.
	^bicho.
]

{ #category : #'fm-bichos' }
Creator >> fabricarBichoPerezoso [
	|bicho|
	
	bicho:= Bicho new.
	bicho modo: Perezoso new.
	bicho poder:1.
	bicho vidas:1.
	^bicho.
]

{ #category : #'factory method' }
Creator >> fabricarBomba [
	^Bomba new
]

{ #category : #'factory method' }
Creator >> fabricarHabitacion:unNum [
	|hab|
	
	hab:=Habitacion new num:unNum.
	
	hab este:self fabricarPared.
	hab oeste:self fabricarPared.
	hab norte:self fabricarPared.
	hab sur:self fabricarPared.
	
	^hab 
]

{ #category : #'factory method' }
Creator >> fabricarJuego [
	^Juego new
]

{ #category : #'factory method' }
Creator >> fabricarLaberinto [
	^Laberinto new
]

{ #category : #'fm-bichos' }
Creator >> fabricarModoAgresivo:unBicho [

	unBicho modo:Agresivo new.
	unBicho poder:10.
]

{ #category : #'factory method' }
Creator >> fabricarPared [
	^Pared new
]

{ #category : #'factory method' }
Creator >> fabricarPuerta [
	^Puerta new
]
