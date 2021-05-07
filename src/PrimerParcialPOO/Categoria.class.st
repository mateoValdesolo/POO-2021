Class {
	#name : #Categoria,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'estado'
	],
	#category : #PrimerParcialPOO
}

{ #category : #'as yet unclassified' }
Categoria class >> categoriaNombre: unNombre estado: unEstado [
|categ|
categ := self new.
categ inicializarCategoriaNombre: unNombre estado: unEstado.
^categ.
]

{ #category : #'de aplicacion' }
Categoria >> getNombre [ 
^nombre .
]

{ #category : #'as yet unclassified' }
Categoria >> inicializarCategoriaNombre: unNombre estado: unEstado [
nombre := unNombre.
estado := unEstado.
]

{ #category : #'as yet unclassified' }
Categoria >> obtenerItems: colItems [
|listaItems|
listaItems := OrderedCollection new.
listaItems := colItems select: [:cadaItem | (cadaItem verificarCategoria: nombre)].
^listaItems.
]
