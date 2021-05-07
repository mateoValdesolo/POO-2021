Class {
	#name : #Bebedor,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'apellido',
		'lugarProcedencia',
		'cervezaPreferida'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
Bebedor class >> bebedorNombre: nomb apellido: apell lugarProcedencia: lugar cervezaPreferida: cerv [
|beb|
beb := self new.
beb inicializarBebedorNombre: nomb apellido: apell lugarProcedencia: lugar cervezaPreferida: cerv.
^beb
]

{ #category : #'as yet unclassified' }
Bebedor >> inicializarBebedorNombre: nomb apellido: apell lugarProcedencia: lugar cervezaPreferida: cerv [
nombre := nomb.
apellido := apell.
lugarProcedencia := lugar.
cervezaPreferida := cerv.
]

{ #category : #'as yet unclassified' }
Bebedor >> verificarPreferida: unaCerveza [
 ^unaCerveza getNombre = cervezaPreferida .
]
