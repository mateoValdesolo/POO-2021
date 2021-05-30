Class {
	#name : #Velero,
	#superclass : #Barco,
	#instVars : [
		'nroMastiles'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
Velero >> calcularModulo [ 
	|valor|
	valor := super calcularModulo + nroMastiles.
	^ valor.
]
