Class {
	#name : #Contador,
	#superclass : #Object,
	#instVars : [
		'cont'
	],
	#category : #POO2021
}

{ #category : #'as yet unclassified' }
Contador >> decrementar [
	cont := cont - 1.
]

{ #category : #'as yet unclassified' }
Contador >> decrementar: cant [
	cont := cont - cant.
]

{ #category : #'as yet unclassified' }
Contador >> incrementar [
	cont := cont +1.
]

{ #category : #'as yet unclassified' }
Contador >> inicializar: unValor [
	cont := unValor.
]

{ #category : #'as yet unclassified' }
Contador >> mostrarValor [
	Transcript show: cont.
]
