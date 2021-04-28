Class {
	#name : #Vagon,
	#superclass : #Object,
	#instVars : [
		'anioinstalacion',
		'largo',
		'ancho',
		'peso',
		'cantPasajeros'
	],
	#category : #POO2021
}

{ #category : #'as yet unclassified' }
Vagon class >> ancho: anch largo: larg anioInstalacion: anio cantPasajeros: pasaj [ 
	|vag|
	vag := self new.
	vag inicializarAncho: anch largo: larg anioInstalacion: anio cantPasajeros: pasaj.
	^vag.
]

{ #category : #'de aplicacion' }
Vagon >> actualizarPeso: k [
	peso := cantPasajeros  * k.
]

{ #category : #visualizadores }
Vagon >> getAncho [
	^ancho.
]

{ #category : #visualizadores }
Vagon >> getAnioInstalacion [
	^anioinstalacion .
]

{ #category : #visualizadores }
Vagon >> getCantPasajeros [
	^cantPasajeros.
]

{ #category : #visualizadores }
Vagon >> getLargo [
	^largo.
]

{ #category : #visualizadores }
Vagon >> getPeso [
	^peso.
]

{ #category : #'as yet unclassified' }
Vagon >> inicializarAncho: anch largo: larg anioInstalacion: anio cantPasajeros: pasaj [ 
	ancho := anch.
	largo := larg.
	anioinstalacion := anio.
	cantPasajeros := pasaj.
	peso := pasaj *80.
]

{ #category : #initialization }
Vagon >> setAncho: anch [
	ancho := anch.
]

{ #category : #initialization }
Vagon >> setAnioInstalacion: anio [
	anioinstalacion := anio.
	
]

{ #category : #initialization }
Vagon >> setCantPasajeros: cant [
	cantPasajeros := cant.
	
]

{ #category : #initialization }
Vagon >> setLargo: larg [
	largo := largo.
]

{ #category : #initialization }
Vagon >> setPeso: pes [
	peso := pes.
]

{ #category : #'de aplicacion' }
Vagon >> verificarAntiguedad [
	|anios|
	anios := Date today year - anioinstalacion.
	^anios.
]
