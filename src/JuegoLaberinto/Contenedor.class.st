"
Contenedor es un composite. Es un EM que tiene hijos
"
Class {
	#name : #Contenedor,
	#superclass : #ElementoMapa,
	#instVars : [
		'hijos',
		'forma',
		'num'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-hijos' }
Contenedor >> agregarHijo:unEM [
	unEM padre:self.
	self hijos add:unEM.
	
]

{ #category : #'gestion-orientaciones' }
Contenedor >> agregarOrientacion:unaOr [
	self forma agregarOrientacion:unaOr.
]

{ #category : #'gestion-hijos' }
Contenedor >> eliminarHijo:unEM [
	self hijos remove:unEM ifAbsent:["No existe ese objeto hijo"]
]

{ #category : #caminar }
Contenedor >> entrar:alguien [
	"deberemos  indicar quien entra"
	Transcript show:alguien printString; nextPutAll: ' ha entrado en ' ;nextPutAll: self printString;  cr.
	
	alguien posicion:self.
	
	
	
	
	alguien buscarTunel.
	
"buscar elemento (tunel) y en caso de que exista "
"delegar en el bicho (en su modo) el entrar o no en el tunel"
]

{ #category : #accessing }
Contenedor >> forma [

	^ forma
]

{ #category : #accessing }
Contenedor >> forma: anObject [

	forma := anObject
]

{ #category : #accessing }
Contenedor >> hijos [

	^ hijos
]

{ #category : #accessing }
Contenedor >> hijos: anObject [

	hijos := anObject
]

{ #category : #initialization }
Contenedor >> initialize [ 
super initialize.
hijos:=OrderedCollection new.
]

{ #category : #caminar }
Contenedor >> irAlEste:alguien [
self forma irAlEste:alguien.
]

{ #category : #caminar }
Contenedor >> irAlNorte:alguien [
self forma irAlNorte:alguien.
]

{ #category : #caminar }
Contenedor >> irAlOeste:alguien [
self forma irAlOeste:alguien.
]

{ #category : #caminar }
Contenedor >> irAlSur:alguien [
self forma irAlSur:alguien.
]

{ #category : #accessing }
Contenedor >> num [

	^ num
]

{ #category : #accessing }
Contenedor >> num: anObject [

	num := anObject
]

{ #category : #'gestion-orientaciones' }
Contenedor >> obtenerElementoOr:unaOr [
	^self forma obtenerElementoOr:unaOr.
]

{ #category : #'gestion-orientaciones' }
Contenedor >> obtenerOrientacion [ 
	"obtenerOrientacionAleatoria"
	^self forma obtenerOrientacion.
	
	"self orientaciones size"
]

{ #category : #'gestion-orientaciones' }
Contenedor >> obtenerOrientaciones [
	^self forma obtenerOrientaciones.
]

{ #category : #accessing }
Contenedor >> ponerEnOr:unaOr elemento:unEM [
	"opcion 1: usar if then else para preguntar por unaOr"
	"opcion 2: delegar en la orientacion"
	"unaOr ponerElemento:unEM en:self."
	self forma ponerEnOr:unaOr elemento:unEM.  
]

{ #category : #recorrido }
Contenedor >> recorrer:unBloque [

	unBloque value:self.
	self hijos do: [:each|each recorrer:unBloque]. 
	"tengo que recorrrer las orientaciones tambien"
	self obtenerOrientaciones do:[:each | each recorrer:unBloque contenedor: self forma].
]
