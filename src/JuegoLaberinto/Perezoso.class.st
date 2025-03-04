"
bicho lento y con poco poder

"
Class {
	#name : #Perezoso,
	#superclass : #Modo,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #acciones }
Perezoso >> dormir:unBicho [

	Transcript show:unBicho printString ; nextPutAll: ' duerme';cr.
   (Delay forSeconds: 3) wait.

]

{ #category : #consulta }
Perezoso >> esPerezoso [ 
	^true
]
