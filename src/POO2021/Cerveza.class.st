Class {
	#name : #Cerveza,
	#superclass : #Object,
	#instVars : [
		'nombre'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
Cerveza class >> cervezaNombre: nom [
|cerv|
cerv := self new.
cerv inicializarCervezaNombre: nom.
^cerv.
]

{ #category : #'de aplicacion' }
Cerveza >> getNombre [ 
^nombre.
]

{ #category : #'as yet unclassified' }
Cerveza >> inicializarCervezaNombre: nom [
nombre := nom.
]
