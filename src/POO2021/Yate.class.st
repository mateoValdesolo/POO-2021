Class {
	#name : #Yate,
	#superclass : #Barco,
	#instVars : [
		'potenciaCv',
		'nroCamarotes'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
Yate >> calcularModulo [ 
	|valor|
	valor := super calcularModulo + potenciaCv + nroCamarotes.
	^ valor.
]
