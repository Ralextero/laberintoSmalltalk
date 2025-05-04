"
Agresivo: bicho que se mueve rápido y tiene más poder
"
Class {
	#name : #Agresivo,
	#superclass : #Modo,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Agresivo >> buscarTunelBicho: unBicho [

	| pos tunel |
	"obtener la posicion del bicho (que es un contenedor)""recorrer los hijos del contenedor buscando un tunel"
	pos := unBicho posicion.
	tunel := pos hijos detect: [ :each | each esTunel ] ifNone: [ nil ].
	tunel ifNotNil: [ tunel entrar: unBicho ]
]

{ #category : #acciones }
Agresivo >> dormir:unBicho [

	Transcript show:unBicho printString ; nextPutAll: ' duerme';cr.
   (Delay forSeconds: 1) wait.

]

{ #category : #consulta }
Agresivo >> esAgresivo [ 
	^true.
]

{ #category : #printing }
Agresivo >> printOn:aStream [
	aStream nextPutAll: 'Agresivo'.
]
