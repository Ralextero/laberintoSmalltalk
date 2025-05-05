"
Interfaz comun de los entes del juego
"
Class {
	#name : #Ente,
	#superclass : #Object,
	#instVars : [
		'poder',
		'posicion',
		'vidas',
		'juego',
		'estadoEnte'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #acciones }
Ente >> atacar [ 
	self estadoEnte atacar:self
]

{ #category : #consulta }
Ente >> avisar [
self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Ente >> buscarTunel [
	"self subclassResponsibility"
	"nada"
	"comportamiento predeterminado"
]

{ #category : #'as yet unclassified' }
Ente >> crearNuevoLaberinto:alguien [
]

{ #category : #acciones }
Ente >> esAtacadoPor:alguien [
	Transcript show:self printString ; nextPutAll: ' es atacado por '; nextPutAll: alguien printString;cr.
	self vidas:(self vidas-alguien poder).
	Transcript show:'Vidas: ' ; nextPutAll: self vidas asString;cr.
	self vidas <= 0 ifTrue:[self heMuerto].
]

{ #category : #consulta }
Ente >> estaVivo [ 
	^self vidas >0.
]

{ #category : #accessing }
Ente >> estadoEnte [

	^ estadoEnte
]

{ #category : #accessing }
Ente >> estadoEnte: anObject [

	estadoEnte := anObject
]

{ #category : #consulta }
Ente >> heMuerto [
	"self subclassResponsibility ."
	self estadoEnte:Muerto new.
	self avisar.
]

{ #category : #initialize }
Ente >> initialize [ 
	vidas:=5.
	poder:=1.
	estadoEnte:= Vivo new.
]

{ #category : #accessing }
Ente >> juego [

	^ juego
]

{ #category : #accessing }
Ente >> juego: anObject [

	juego := anObject
]

{ #category : #'as yet unclassified' }
Ente >> juegoClonaLaberinto [
	^self juego clonarLaberinto 
]

{ #category : #accessing }
Ente >> poder [

	^ poder
]

{ #category : #accessing }
Ente >> poder: anObject [

	poder := anObject
]

{ #category : #accessing }
Ente >> posicion [

	^ posicion
]

{ #category : #accessing }
Ente >> posicion: anObject [

	posicion := anObject
]

{ #category : #acciones }
Ente >> puedeAtacar [ 
	self subclassResponsibility 
]

{ #category : #accessing }
Ente >> vidas [

	^ vidas
]

{ #category : #accessing }
Ente >> vidas: anObject [

	vidas := anObject.
	self changed:#vidas
]
