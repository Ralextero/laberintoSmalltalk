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
	self estadoEnte actua:self
]

{ #category : #acciones }
Bicho >> avisar [
	self juego terminarBicho: self.
]

{ #category : #acciones }
Bicho >> buscarTunel [ 	
	self modo buscarTunelBicho:self.
	
]

{ #category : #consulta }
Bicho >> esAgresivo [ 
	^self modo esAgresivo.
]

{ #category : #consulta }
Bicho >> esPerezoso [
	^self modo esPerezoso.
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

{ #category : #printing }
Bicho >> printOn:aStream [
	aStream nextPutAll:  'Bicho ' ; nextPutAll:self modo asString.
]

{ #category : #acciones }
Bicho >> puedeActuar [
	"self modo actua:self."
	self modo actua:self.
]

{ #category : #acciones }
Bicho >> puedeAtacar [ 
	self juego buscarPersonaje:self.
]
