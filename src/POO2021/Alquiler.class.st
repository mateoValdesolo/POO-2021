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
Alquiler class >> AlquilerFechaInicio: unaFechaInicio fechaFin: unaFechaFin posAmarre: amarre barco: elBarco cliente: elCliente [
	|alq|
	alq := self new inicializarAlquilerfechaInicio: unaFechaInicio fechaFin: unaFechaFin posAmarre: amarre barco: elBarco cliente: elCliente.
	^alq.
]

{ #category : #'as yet unclassified' }
Alquiler >> crearAlquilerBarco: unBarco cliente: unCliente desde: desde hasta: hasta [
	barco := unBarco.
	cliente := unCliente.
	fechaInicio := desde.
	fechaFin := hasta.
	
]

{ #category : #'as yet unclassified' }
Alquiler >> getPosAmarre [
^posAmarre .
]

{ #category : #'as yet unclassified' }
Alquiler >> inicializarAlquilerfechaInicio: unaFechaInicio fechaFin: unaFechaFin posAmarre: amarre barco: elBarco cliente: elCliente [
fechaInicio := unaFechaInicio .
fechaFin := unaFechaFin .
posAmarre := amarre .
barco := elBarco .
cliente := elCliente .
]

{ #category : #'as yet unclassified' }
Alquiler >> obtenerPares [
	|par valAlq cantDias|
	cantDias := fechaFin - fechaInicio + 1.
	valAlq := barco calcularValorAlquiler: cantDias.
	par := posAmarre , valAlq .
	^ par.
]
