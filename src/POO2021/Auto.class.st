Class {
	#name : #Auto,
	#superclass : #Object,
	#instVars : [
		'cantKmRecorridos',
		'patente',
		'marca'
	],
	#category : #POO2021
}

{ #category : #'as yet unclassified' }
Auto class >> marca: laMarca patente: pat cantKmRecorridos: km [
	|aut|
	aut := self new.
	aut inicializarMarca: laMarca  patente: pat  kmRecorridos: km.
	^ aut.
]

{ #category : #'as yet unclassified' }
Auto >> andarKm: n [
	|kmTotal|
	kmTotal := cantKmRecorridos  + n.
	^kmTotal. 

]

{ #category : #visualizadores }
Auto >> getCantKmRecorridos [
	^ cantKmRecorridos.
]

{ #category : #visualizadores }
Auto >> getMarca [
	^ marca.
]

{ #category : #visualizadores }
Auto >> getPatente [
	^patente.
]

{ #category : #'as yet unclassified' }
Auto >> inicializarMarca: laMarca patente: paten kmRecorridos: km [  
	marca := laMarca.
	patente := paten.
	cantKmRecorridos := km.
]

{ #category : #initialization }
Auto >> setCantKmRecorridos: kmRecorridos [
	cantKmRecorridos := kmRecorridos .
]

{ #category : #initialization }
Auto >> setMarca: laMarca [
	marca := laMarca.
]

{ #category : #initialization }
Auto >> setPatente: pat [
	patente := pat.
]
