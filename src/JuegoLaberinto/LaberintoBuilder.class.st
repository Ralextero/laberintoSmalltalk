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

{ #category : #'factory method' }
LaberintoBuilder >> fabricarArmario:unNum en:unContenedor [
	|arm|
	
	arm:=Armario new num:unNum.
	arm forma:self fabricarForma.
	"arm agregarOrientacion: self  fabricarNorte;agregarOrientacion: self fabricarSur;agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste."
	arm obtenerOrientaciones do:[:each | arm ponerEnOr: each elemento:self fabricarPared ].
	unContenedor agregarHijo:arm.
	^arm 
]

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarBichoAgresivo [
	|bicho|
	
	bicho:= Bicho new.
	bicho modo: Agresivo new.
	bicho vidas:5.
	bicho poder:5.
	
	^bicho.
]

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarBichoAgresivo:unaHab [
	|bicho|
	
	bicho:= Bicho new.
	bicho modo: Agresivo new.
	bicho posicion: unaHab.
	bicho vidas:5.
	bicho poder:5.
	
	^bicho.
]

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarBichoModo:strModo posicion:unNum [
	|hab bicho|
	
hab:=self juego obtenerHabitacion:unNum.
"crear el bicho, lo voy a copiar del Creator"
"agregar el bicho al juego"
bicho:= self perform:('fabricarBicho', strModo) asSymbol.
hab entrar:bicho.

self juego agregarBicho: bicho .
"alternativa seria:
strModo ='Agresivo' ifTrue:[bicho:=self fabricarBichoAgresivo:hab]"
]

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarBichoPerezoso [
	|bicho|
	
	bicho:= Bicho new.
	bicho modo: Perezoso new.
	bicho vidas:1.
	bicho poder:1.
	
	^bicho.
]

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarBichoPerezoso:unaHab [
	|bicho|
	
	bicho:= Bicho new.
	bicho modo: Perezoso new.
	bicho posicion:unaHab.
	bicho vidas:1.
	bicho poder:1.
	
	^bicho.
]

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarBombaEn:unContenedor [
	|bmb|
	bmb:=Bomba new.
	unContenedor agregarHijo: bmb.
]

{ #category : #'fm-orientaciones' }
LaberintoBuilder >> fabricarEste [ 
	^Este default.
]

{ #category : #'factory method' }
LaberintoBuilder >> fabricarForma [ 
|forma|
forma:= Cuadrado new.
forma agregarOrientacion: self  fabricarNorte;agregarOrientacion: self fabricarSur;agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste.
^forma.
]

{ #category : #'factory method' }
LaberintoBuilder >> fabricarHabitacion:unNum [
	|hab|
	
	hab:=Habitacion new num:unNum.
	hab forma: self fabricarForma.
	"hab agregarOrientacion: self  fabricarNorte;agregarOrientacion: self fabricarSur;agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste."
	hab obtenerOrientaciones  do:[:each | hab ponerEnOr: each elemento:self fabricarPared ].
	self laberinto agregarHabitacion:hab.
	^hab 
]

{ #category : #'factory method' }
LaberintoBuilder >> fabricarJuego [ 
	self juego:Juego new.
	self juego prototipo:self laberinto.
	self juego laberinto:self juego clonarLaberinto.
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

{ #category : #'as yet unclassified' }
LaberintoBuilder >> fabricarTunelEn:unContenedor [
	|tunel|
	tunel:=Tunel new.
	tunel agregarComando:(Entrar new receptor:tunel).
	unContenedor agregarHijo: tunel.
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

{ #category : #accessing }
LaberintoBuilder >> obtenerJuego [ 
	^self juego.
]
