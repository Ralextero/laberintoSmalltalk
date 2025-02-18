"
CreatorB crea laberintos con pared Bomba
"
Class {
	#name : #CreatorB,
	#superclass : #Creator,
	#category : #'JuegoLaberinto-FactoryMethod'
}

{ #category : #factoryMethod }
CreatorB >> fabricarPared [
	^ParedBomba new.
]
