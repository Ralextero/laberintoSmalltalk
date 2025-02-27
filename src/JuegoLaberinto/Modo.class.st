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
	self camina:unBicho.
	"self ataca."
]

{ #category : #acciones }
Modo >> camina:unBicho [
	"self subclassResponsibility, modo abstracto, cada uno lo implementa"
	" , por defecto no hacen nada, si no se definen los bichos no caminan"
	"definir un caminar predeterminado para todos, como minimo los bichos hacen una cosa en este metodo"
]

{ #category : #consulta }
Modo >> esAgresivo [
	^false
]

{ #category : #consulta }
Modo >> esPerezoso [
	^false
]
