"
Modo es la interfaz de la estrategia de los bichos
"
Class {
	#name : #Modo,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #acciones }
Modo >> actua:unBicho [
	"Template"
	"self duerme."
	self caminar:unBicho.
	"self dormir:unBicho."
	self atacar:unBicho.
	"self ataca."
]

{ #category : #'as yet unclassified' }
Modo >> atacar:unBicho [
	"no hace nada de momento, cambiarlo estaria chido"
]

{ #category : #acciones }
Modo >> caminar:unBicho [
	|or |
"obtener posicion del bicho: bicho posicion"
"elegir una orientacion aleatoria en esa posicion."
	or:=unBicho obtenerOrientacion.
"caminar hacia esa orientacion"
	or caminar:unBicho.
"una posibilidad sobre como implementar el caminar"
]

{ #category : #acciones }
Modo >> dormir:unBicho [

	self subclassResponsibility 
]

{ #category : #consulta }
Modo >> esAgresivo [
	^false
]

{ #category : #consulta }
Modo >> esPerezoso [
	^false
]
