"
Tunel es un Proxy virtual. Cuando el personaje entre en el tunel se creara un nuevo laberinto.
"
Class {
	#name : #Tunel,
	#superclass : #Hoja,
	#instVars : [
		'laberinto'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
Tunel >> entrar:alguien [
	"crear un nuevo laberinto y entrar en el"
	self laberinto: alguien clonarLaberinto. "juego prototipo deepCopy. version larga sin delegar"
	self laberinto entrar:alguien.
]

{ #category : #consulta }
Tunel >> esTunel [ 
^true
]

{ #category : #accessing }
Tunel >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Tunel >> laberinto: anObject [

	laberinto := anObject
]
