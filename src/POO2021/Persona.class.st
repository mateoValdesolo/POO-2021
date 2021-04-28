Class {
	#name : #Persona,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'apellido',
		'fechaNacimiento'
	],
	#category : #POO2021
}

{ #category : #'as yet unclassified' }
Persona class >> nombre: nom apellido: apell fechaNacimiento: fechanacim [
	|per|
	per := self new.
	per inicializarNombre: nom apellido: apell fechaNacimiento: fechanacim.
	^per.
]

{ #category : #'de aplicacion' }
Persona >> edadPersona [
	|edad|
	edad := Date today year - fechaNacimiento asDate year.
	^edad.
]

{ #category : #'as yet unclassified' }
Persona >> inicializarNombre: nom apellido: apell fechaNacimiento: fechanacim [
	nombre := nom.
	apellido := apell.
	fechaNacimiento := fechanacim .
]

{ #category : #'de aplicacion' }
Persona >> mayorDeEdad [
	|may|
	self edadPersona > 18 ifTrue: [ may := true] ifFalse: [ may := false].
	^may.
]
