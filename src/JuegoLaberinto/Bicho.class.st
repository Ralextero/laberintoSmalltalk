"
El bicho
"
Class {
	#name : #Bicho,
	#superclass : #Object,
	#instVars : [
		'vidas',
		'poder',
		'modo',
		'posicion'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #initialize }
Bicho >> actua [
	self modo actua
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

{ #category : #initialize }
Bicho >> initialize [ 
	vidas:=5.
	poder:=1.
]

{ #category : #accessing }
Bicho >> modo [

	^ modo
]

{ #category : #accessing }
Bicho >> modo: anObject [

	modo := anObject
]

{ #category : #accessing }
Bicho >> poder [

	^ poder
]

{ #category : #accessing }
Bicho >> poder: anObject [

	poder := anObject
]

{ #category : #accessing }
Bicho >> posicion [

	^ posicion
]

{ #category : #accessing }
Bicho >> posicion: anObject [

	posicion := anObject
]

{ #category : #accessing }
Bicho >> vidas [

	^ vidas
]

{ #category : #accessing }
Bicho >> vidas: anObject [

	vidas := anObject
]
