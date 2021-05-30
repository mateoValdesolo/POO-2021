Class {
	#name : #Barco,
	#superclass : #Object,
	#instVars : [
		'matricula',
		'eslora',
		'añoFabricacion',
		'valorBase'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
Barco class >> BarcoMatricula: matri eslora: eslor añoFabricacion: añoFabri valorBase: valBas [
|barc|
barc := self new.
barc inicializarBarcoMatricula: matri eslora: eslor añoFabricacion: añoFabri valorBase: valBas.
^barc.

]

{ #category : #'as yet unclassified' }
Barco >> calcularModulo [
	|valor|
	valor := (self obtenerEslora * 10) + self getValorBase.
	^valor.
]

{ #category : #'as yet unclassified' }
Barco >> calcularValorAlquiler: diasAlq [
	|temp|
	temp:= diasAlq * self calcularModulo.
	^temp
]

{ #category : #'as yet unclassified' }
Barco >> getValorBase [
	^valorBase.
]

{ #category : #'as yet unclassified' }
Barco >> inicializarBarcoMatricula: matri eslora: eslor añoFabricacion: añoFabri valorBase: valBas [
matricula := matri.
eslora := eslor.
añoFabricacion := añoFabri .
valorBase := valBas.
]

{ #category : #'as yet unclassified' }
Barco >> obtenerEslora [
^eslora.
]
