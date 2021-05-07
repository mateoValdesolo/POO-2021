Class {
	#name : #QRMagic,
	#superclass : #Object,
	#instVars : [
		'colCategoria',
		'colItems'
	],
	#category : #PrimerParcialPOO
}

{ #category : #'as yet unclassified' }
QRMagic class >> QrMagic [
|qr|
qr := self new.
qr inicializarQRMagic.
^qr
]

{ #category : #'as yet unclassified' }
QRMagic >> agregarCategoria: categ [
colCategoria add: categ.
]

{ #category : #'as yet unclassified' }
QRMagic >> agregarItem: it [
colItems add: it.
]

{ #category : #'as yet unclassified' }
QRMagic >> inicializarQRMagic [
colCategoria := OrderedCollection new.
colItems := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
QRMagic >> obtenerColItem [
^colItems .
]
