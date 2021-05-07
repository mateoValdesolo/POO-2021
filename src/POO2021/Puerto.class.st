"
|barc1 puert1 client1|

barc1 := Barco new.

barc1 inicializarBarcoMatricula: 'AA1' eslora: 10 añoFabricacion: 2000 valorBase: 2400.

client1 := Cliente2 new.

client1 inicializarClientenombre: 'Mateo' apellido: 'Valdesolo' dni: 42968925 telefono: 2994529813  email: 'mateovalde@gmail.com'.

puert1 := Puerto new.

puert1 registrarAlquilerBarco: barc1 cliente: client1 desde: (Date newDay: 07 month: 05 year: 2021) hasta: (Date newDay: 14 month: 05  year: 2021 ).

"
Class {
	#name : #Puerto,
	#superclass : #Object,
	#instVars : [
		'amarre',
		'colAlquileres'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
Puerto >> registrarAlquilerBarco: unBarco cliente: unCliente desde: desde hasta: hasta [
	|diasAlq valorAlq|
	diasAlq := (hasta subtractDate: desde ) + 1.
	valorAlq := unBarco calcularValorAlquiler: diasAlq.
	^valorAlq
	
	
]
