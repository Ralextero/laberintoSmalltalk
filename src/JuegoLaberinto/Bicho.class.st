"
El bicho
"
Class {
	#name : #Bicho,
	#superclass : #Ente,
	#instVars : [
		'modo'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #initialize }
Bicho >> actua [
	self modo actua:self
]

{ #category : #acciones }
Bicho >> atacar [ 
	self juego buscarPersonaje:self.
]

{ #category : #consulta }
Bicho >> esAgresivo [ 
	^self modo esAgresivo.
]

{ #category : #consulta }
Bicho >> esPerezoso [
	^self modo esPerezoso.
]

{ #category : #consulta }
Bicho >> estaVivo [

	^self vidas > 0
]

{ #category : #initialize }
Bicho >> iniAgresivo [
	self modo:Agresivo new.
	self poder:10.
]

{ #category : #initialize }
Bicho >> iniPerezoso [
	self modo:Perezoso new. "Cablear"
	self poder:1.
]

{ #category : #accessing }
Bicho >> modo [

	^ modo
]

{ #category : #accessing }
Bicho >> modo: anObject [

	modo := anObject
]

{ #category : #consulta }
Bicho >> obtenerOrientacion [

	
	^self posicion obtenerOrientacion.
]
