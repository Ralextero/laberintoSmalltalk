"
Creator definido en el libro Desing patterns
"
Class {
	#name : #Creator,
	#superclass : #Object,
	#category : #'JuegoLaberinto-FactoryMethod'
}

{ #category : #'fm-bichos' }
Creator >> cambiarAModoAgresivo:unBicho [

	unBicho modo:Agresivo new.
	unBicho poder:10.
	unBicho vidas:5.
]

{ #category : #'fm-bichos' }
Creator >> cambiarAModoPerezoso:unBicho [

	unBicho modo:Perezoso new.
	unBicho poder:1.
	unBicho vidas:1.
]

{ #category : #'fm-bichos' }
Creator >> fabricarBichoAgresivo [
	|bicho|
	
	bicho:= Bicho new.
	bicho modo: Agresivo new.
	bicho vidas:5.
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

{ #category : #'fm-orientaciones' }
Creator >> fabricarEste [
	^Este new.
]

{ #category : #'factory method' }
Creator >> fabricarHabitacion:unNum [
	|hab|
	
	hab:=Habitacion new num:unNum.
	hab agregarOrientacion: self  fabricarNorte;agregarOrientacion: self fabricarSur;agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste.
	hab orientaciones do:[:each | hab ponerEnOr: each elemento:self fabricarPared ].
	"hab este:self fabricarPared.
	hab oeste:self fabricarPared.
	hab norte:self fabricarPared.
	hab sur:self fabricarPared."
	
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

{ #category : #'fm-orientaciones' }
Creator >> fabricarNorte [
	^Norte new.
]

{ #category : #'fm-orientaciones' }
Creator >> fabricarOeste [
	^Oeste new.
]

{ #category : #'factory method' }
Creator >> fabricarPared [
	^Pared new
]

{ #category : #'factory method' }
Creator >> fabricarPuerta [
	^Puerta new
]

{ #category : #'fm-orientaciones' }
Creator >> fabricarSur [
	^Sur new.
]
