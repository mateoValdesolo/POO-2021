Class {
	#name : #Camion,
	#superclass : #Object,
	#instVars : [
		'matricula',
		'tipo',
		'kmactual',
		'kmservice',
		'tara'
	],
	#category : #POO2021
}

{ #category : #'as yet unclassified' }
Camion class >> matricula: matr tipo: tip kmActual: kmact kmService: kmser tara: tar [
	|cam|
	cam := self new.
	cam inicializarMatricula: matr tipo: tip kmActual: kmact kmService: kmser tara: tar.
	^cam.
]

{ #category : #visualizadores }
Camion >> getKmActual [
	^kmactual .
]

{ #category : #visualizadores }
Camion >> getKmService [
	^kmservice .
]

{ #category : #visualizadores }
Camion >> getMatricula [
	^matricula.
]

{ #category : #visualizadores }
Camion >> getTara [
	^tara.
]

{ #category : #visualizadores }
Camion >> getTipo [
	^tipo.
]

{ #category : #'as yet unclassified' }
Camion >> inicializarMatricula: matr tipo: tip kmActual: kmact kmService: kmser tara: tar [
	matricula := matr.
	tipo := tip.
	kmactual := kmact.
	kmservice := kmser.
	tara := tar.	
]

{ #category : #initialization }
Camion >> setKmActual: kmact [
	kmactual := kmact.
]

{ #category : #initialization }
Camion >> setKmService: kmser [
	kmservice	 := kmser.
]

{ #category : #initialization }
Camion >> setMatricula: matri [
	matricula := matri.
]

{ #category : #initialization }
Camion >> setTara: tar [
	tara := tara.
]

{ #category : #initialization }
Camion >> setTipo: tip [
	tipo := tip.
]

{ #category : #'de aplicacion' }
Camion >> verificarService [
	|ret|
	ret := kmactual >= kmservice.
	^ret. 
]

{ #category : #'de aplicacion' }
Camion >> verificarTara: n [
	|verif|
	verif := tara > n.
	^verif.
]
