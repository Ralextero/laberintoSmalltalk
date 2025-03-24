"
Forma de rombo de las habitaciones. Es como el cuadrado pero como girado de lado.
"
Class {
	#name : #LaberintoBuilderRombo,
	#superclass : #LaberintoBuilder,
	#category : #'JuegoLaberinto-Builder'
}

{ #category : #'factory method' }
LaberintoBuilderRombo >> fabricarForma [ 
|forma|
forma:= Rombo  new.
forma agregarOrientacion: self  fabricarNoreste;agregarOrientacion: self fabricarSureste;agregarOrientacion:self fabricarNoroeste; agregarOrientacion:self fabricarSuoreste.
^forma.
]
