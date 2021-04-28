Class {
	#name : #Complejo,
	#superclass : #Object,
	#instVars : [
		'real',
		'imaginario',
		'modulo'
	],
	#category : #POO2021
}

{ #category : #'as yet unclassified' }
Complejo class >> real: partereal imaginario: parteimag [
	|numero|
		numero := self new.
		numero inicializarReal: partereal  imaginario: parteimag.
		^numero. 
]

{ #category : #'as yet unclassified' }
Complejo >> getImaginario [ 
	^imaginario.
]

{ #category : #'as yet unclassified' }
Complejo >> getReal [ 
	^real.
]

{ #category : #'as yet unclassified' }
Complejo >> inicializarReal: unR imaginario: unI [
	real := unR .
	imaginario := unI .
]

{ #category : #'as yet unclassified' }
Complejo >> modulo [
	| suma  raiz |
	suma := (real squared ) + (imaginario squared).
	raiz := suma sqrt.
	^raiz.
	
	
]

{ #category : #initialization }
Complejo >> setImaginario: unNroI [
	imaginario := unNroI.

]

{ #category : #initialization }
Complejo >> setReal: unNroR [
	real:= unNroR.
]

{ #category : #'as yet unclassified' }
Complejo >> unidad [
	"generar un complejo unitario con la misma direccion y sentido que el objeto target
	o receptor del mensaje"
	|mod unComplejo unidadReal unidadImaginario|
		mod := self modulo.
		unidadReal := self getReal / mod.
		unidadImaginario := self getImaginario / mod.
		unComplejo := Complejo real: unidadReal imaginario: unidadImaginario.
		^unComplejo.
]
