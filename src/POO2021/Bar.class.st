Class {
	#name : #Bar,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'ubicacion',
		'colCervezas',
		'colBebedores'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
Bar class >> barNombre: nom ubicacion: ub [
|bar|
bar := self new.
bar inicializarBarNombre: nom ubicacion: ub.
^bar
]

{ #category : #'as yet unclassified' }
Bar >> agregarBebedor: unBebedor [
colBebedores add: unBebedor .
]

{ #category : #'as yet unclassified' }
Bar >> agregarCerveza: unaCerveza [
colCervezas add: unaCerveza .
]

{ #category : #'as yet unclassified' }
Bar >> inicializarBarNombre: nom ubicacion: ubi [
nombre := nom.
ubicacion := ubi.
colCervezas := OrderedCollection new. 
colBebedores := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
Bar >> verificarCerveza: unaCerveza [
	|ret|
	ret := colCervezas contains: [:cadaCerveza | cadaCerveza getNombre = unaCerveza getNombre].
	"ret := colCervezas includes: unaCerveza."
	^ret
]

{ #category : #'as yet unclassified' }
Bar >> verificarSiPreferidaBebedor: unBebedor cerveza: unaCerveza [
 |beb ret|
	beb := colBebedores detect: [ :cadaBebedor | colBebedores includes: unBebedor ]
		ifNone: [ nil ].
	ret := beb verificarPreferida: unaCerveza .
	^ret

]
