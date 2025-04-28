"
VisitorActivarBomba es un visitor que activa bombas
"
Class {
	#name : #VisitorActivarBomba,
	#superclass : #Visitor,
	#category : #'JuegoLaberinto-Visitor'
}

{ #category : #'as yet unclassified' }
VisitorActivarBomba >> visitarBomba:unaBomba [
	unaBomba activar.
]
