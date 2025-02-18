"
Modo es la interfaz de la estrategia de los bichos
"
Class {
	#name : #Modo,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Modo >> actua:unBicho [
	"Template"
	"self duerme."
	self camina:unBicho.
	"self ataca."
]

{ #category : #'as yet unclassified' }
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
