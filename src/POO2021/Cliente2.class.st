Class {
	#name : #Cliente2,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'apellido',
		'dni',
		'telefono',
		'email'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
Cliente2 class >> nombre: nom apellido: apell dni: dn telefono: tel email: em [
|clien|
clien := self new.
clien inicializarClientenombre: nom apellido: apell dni: dn telefono: tel email: em.
^clien
]

{ #category : #'as yet unclassified' }
Cliente2 >> inicializarClientenombre: nom apellido: apell dni: dn telefono: tel email: em [
nombre := nom.
apellido := apell.
dni := dn.
telefono := tel.
email := em.
]
