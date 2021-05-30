Class {
	#name : #Televisor,
	#superclass : #Electrodomestico,
	#instVars : [
		'tamañoPantalla',
		'resolucion',
		'hdmi',
		'smart'
	],
	#category : #'POO2021-TP4'
}

{ #category : #'as yet unclassified' }
Televisor class >> crearPrecioBase: pb color: colo consumoEnergetico: consum peso: pes descripcion: desc marca: marc tamañoPantalla: tam resolucion: resol hdmi: hdm smart: smar [
 |tele|
	tele := self new.
	tele inicializarPrecioBase: pb color: colo consumoEnergetico: consum peso: pes descripcion: desc marca: marc tamañoPantalla: tam resolucion: resol hdmi: hdm smart: smar.
	^tele.
]

{ #category : #'as yet unclassified' }
Televisor >> calcularValor [ 
|valorFin|
valorFin := super calcularValor + precioBase + (hdmi *100).
(tamañoPantalla >= 46) ifTrue: [ valorFin := valorFin + (valorFin *0.3) ].
^valorFin.
]

{ #category : #'as yet unclassified' }
Televisor >> inicializarPrecioBase: pb color: colo consumoEnergetico: consum peso: pes descripcion: desc marca: marc tamañoPantalla: tam resolucion: resol hdmi: hdm smart: smar [
	super inicializarPrecioBase: pb color: colo consumoEnergetico: consum peso: pes  descripcion: desc marca: marc.
	tamañoPantalla := tam.
	resolucion := resol.
	hdmi := hdm.
	smart := smar.
]
