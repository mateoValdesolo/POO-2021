Class {
	#name : #Alquiler,
	#superclass : #Object,
	#instVars : [
		'fechaInicio',
		'fechaFin',
		'posAmarre',
		'barco',
		'cliente'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
Alquiler >> crearAlquilerBarco: unBarco cliente: unCliente desde: desde hasta: hasta [
	barco := unBarco.
	cliente := unCliente.
	fechaInicio := desde.
	fechaFin := hasta.
	
]
