"
|qr it1 it2 it3 cat1 cat2 cat3|

qr := QRMagic new.
qr inicializarQRMagic.

it1 := Item new.
it1 inicializarItemNombre: 'Banana' descripcion: 'Amarilla' precio: 20.

it2 := Item new.
it2 inicializarItemNombre: 'Manzana' descripcion: 'Rojo' precio: 20.

it3 := Item new.
it3 inicializarItemNombre: 'Morron' descripcion: 'Rojo' precio: 20.

cat1 := Categoria new.
cat1 inicializarCategoriaNombre: 'Verdura' estado: 'Visible'. 

cat2 := Categoria new.
cat2 inicializarCategoriaNombre: 'Fruta' estado: 'Visible'. 

cat3 := Categoria new.
cat3 inicializarCategoriaNombre: 'Comida' estado: 'Visible'.

qr agregarCategoria: cat1.
qr agregarCategoria: cat2.
qr agregarCategoria: cat3.

qr agregarItem: it1.
qr agregarItem: it2.
qr agregarItem: it3.

it1 agregarCategoriaItem: cat2.
it1 agregarCategoriaItem: cat3.

it3 agregarCategoriaItem: cat3.
it3 agregarCategoriaItem: cat1.

it2 agregarCategoriaItem: cat3.
it2 agregarCategoriaItem: cat2.

Transcript show: (cat3 obtenerItems: (qr obtenerColItem)).
"
Class {
	#name : #Item,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'descripcion',
		'precio',
		'colCategorias'
	],
	#category : #PrimerParcialPOO
}

{ #category : #'as yet unclassified' }
Item class >> ItemNombre: nom descripcion: descrip precio: unPrecio [
|it|
it := self new.
it inicializarItemNombre: nom descripcion: descrip precio: unPrecio.
^it
]

{ #category : #'as yet unclassified' }
Item >> agregarCategoriaItem: cat [
colCategorias add: cat. 
]

{ #category : #'as yet unclassified' }
Item >> inicializarItemNombre: nom descripcion: descrip precio: unPrecio [
nombre := nom.
descripcion := descrip.
precio := unPrecio.
colCategorias := OrderedCollection new. 
]

{ #category : #'as yet unclassified' }
Item >> verificarCategoria: laCategoria [
|colItemsCateg|
colItemsCateg := colCategorias contains: [:cadaCategoria | (cadaCategoria getNombre) = (laCategoria) ].
^colItemsCateg.

]
