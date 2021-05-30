Class {
	#name : #Deportivo,
	#superclass : #Barco,
	#instVars : [
		'potenciaCv'
	],
	#classInstVars : [
		'potenciaCv'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
Deportivo class >> DeportivoPotenciaCV: laPotencia [
	|deport|
	deport := self new.
	deport inicializarDeportivoPotenciaCv: laPotencia.
	^deport.
]

{ #category : #'as yet unclassified' }
Deportivo >> calcularModulo [ 
	|valor|
	valor := super calcularModulo + potenciaCv.
	^ valor.
]

{ #category : #'as yet unclassified' }
Deportivo >> inicializarDeportivoPotenciaCv: laPotencia [
	
	potenciaCv := laPotencia.
]
