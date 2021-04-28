Class {
	#name : #Dado,
	#superclass : #Object,
	#instVars : [
		'valor'
	],
	#category : #POO2021
}

{ #category : #'de aplicacion' }
Dado >> tirarDado [
	|valor|
	valor := Random new.
	valor := valor nextIntegerBetween: 1 and: 6.
	^valor.
]

{ #category : #'de aplicacion' }
Dado >> tirarValor: unValor [
	|ret cont|
	cont := 0.
	ret := false.
	[ cont <= 3 & ret not ] whileTrue: [ ret:= self tirarDado = unValor.
		cont:= cont +1.
		].
	^ret.
	
]
