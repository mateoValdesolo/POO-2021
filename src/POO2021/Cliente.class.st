Class {
	#name : #Cliente,
	#superclass : #Object,
	#instVars : [
		'dni',
		'nombre',
		'apellido',
		'telefono',
		'tarjetaCredito',
		'vencimiento'
	],
	#category : #POO2021
}

{ #category : #'as yet unclassified' }
Cliente class >> dni: undni apellido: apell nombre: nom telefono: tel tarjetaCredito: tarj vencimiento: venc [
	|clien|
	clien := self new.
	clien inicializarDni: undni apellido: apell nombre: nom telefono: tel tarjetaCredito: tarj vencimiento: venc.
	^clien.
]

{ #category : #visualizadores }
Cliente >> getApellido [
	^apellido.
]

{ #category : #visualizadores }
Cliente >> getDni [
	^dni.
]

{ #category : #visualizadores }
Cliente >> getNombre [ 
	^nombre .
]

{ #category : #visualizadores }
Cliente >> getTarjeta [
	^tarjetaCredito.
]

{ #category : #visualizadores }
Cliente >> getTelefono [
	^telefono.
]

{ #category : #visualizadores }
Cliente >> getVencimiento [
	^vencimiento.
]

{ #category : #'as yet unclassified' }
Cliente >> inicializarDni: undni apellido: apell nombre: nom telefono: tel tarjetaCredito: tarj vencimiento: venc [
	dni:= undni.
	apellido := apell.
	nombre := nom.
	telefono := tel.
	tarjetaCredito := tarj.
	vencimiento := venc.
]

{ #category : #initialization }
Cliente >> setApellido: apell [
	apellido := apell.
]

{ #category : #initialization }
Cliente >> setDni: eldni [
	dni := eldni.

]

{ #category : #initialization }
Cliente >> setNombre: elnom [
	nombre := elnom.
	
]

{ #category : #initialization }
Cliente >> setTarjeta: tarj [
	tarjetaCredito := tarj.
]

{ #category : #initialization }
Cliente >> setTelefono: tel [
	telefono := tel.
]

{ #category : #initialization }
Cliente >> setVencimiento: venci [
	vencimiento := venci asDate.
]

{ #category : #'de aplicacion' }
Cliente >> verificarVencimiento [
	|dias hoy|
	hoy := Date today.
	dias := hoy subtractDate: vencimiento.
	^dias negated.
]
