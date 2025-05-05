"
Puerta
"
Class {
	#name : #Puerta,
	#superclass : #ElementoMapa,
	#instVars : [
		'lado1',
		'lado2',
		'estado',
		'visitada'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #acciones }
Puerta >> abrir [ 

	"self abierta:true.
	Transcript show: 'Puerta abierta';cr."
	self estado abrir:self.
]

{ #category : #'as yet unclassified' }
Puerta >> calcularPosicionDesde: unCont en: unPunto [
	self visitada ifTrue:[^self].
	self visitada:true.
	unCont num = self lado1 num
				ifTrue: 
					[
					self lado2 punto: unPunto.
					self lado2 calcularPosicion]
				ifFalse: 
					[
					self lado1 punto: unPunto.
					self lado1 calcularPosicion]


]

{ #category : #acciones }
Puerta >> cerrar [ 

	"self abierta:false.
	Transcript show: 'Puerta cerrada';cr."
	self estado: Cerrada new.
]

{ #category : #caminar }
Puerta >> entrar:alguien [

	self estado entrar:alguien puerta:self.
	"self abierta 
	ifTrue:[
		alguien posicion = self lado1 ifTrue:[
			self lado2 entrar:alguien
			] ifFalse:[
			self lado1 entrar:alguien
			]
		]
	ifFalse:[Transcript show:'Te has chocado con la puerta';cr.]."
	
	
]

{ #category : #consulta }
Puerta >> esPuerta [ 
	^true
]

{ #category : #accessing }
Puerta >> estaAbierta [
	^self estado estaAbierta
]

{ #category : #accessing }
Puerta >> estado [

	^ estado
]

{ #category : #accessing }
Puerta >> estado: anObject [

	estado := anObject
]

{ #category : #initialization }
Puerta >> initialize [
	super initialize.
	estado:=Cerrada new.
	visitada:=false.
	"self abierta:false"
]

{ #category : #accessing }
Puerta >> lado1 [

	^ lado1
]

{ #category : #accessing }
Puerta >> lado1: anObject [

	lado1 := anObject
]

{ #category : #accessing }
Puerta >> lado2 [

	^ lado2
]

{ #category : #accessing }
Puerta >> lado2: anObject [

	lado2 := anObject
]

{ #category : #printing }
Puerta >> printOn:aStream [

	aStream nextPutAll:'Puerta-'; nextPutAll:self lado1 num asString; nextPutAll:'-' ;nextPutAll:self lado2 num asString; nextPutAll: self abierta asString.
]

{ #category : #caminar }
Puerta >> puedeEntrar:alguien [
		alguien posicion = self lado1 ifTrue:[
			self lado2 entrar:alguien
			] ifFalse:[
			self lado1 entrar:alguien
			]
	
	
]

{ #category : #accessing }
Puerta >> visitada [

	^ visitada
]

{ #category : #accessing }
Puerta >> visitada: anObject [

	visitada := anObject
]
