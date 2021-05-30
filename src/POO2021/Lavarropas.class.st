Class {
	#name : #Lavarropas,
	#superclass : #Electrodomestico,
	#instVars : [
		'capacidadCarga',
		'tipoCarga',
		'sistemaLavado'
	],
	#category : #'POO2021-TP4'
}

{ #category : #'as yet unclassified' }
Lavarropas class >> crearPrecioBase: pb color: colo consumoEnergetico: consum  peso: pes  descripcion: desc marca: marc capacidadCarga: capacidad tipoCarga: tipoCar sistemaLavado: sist [
	|lava|
	lava := self new.
	lava inicializarPrecioBase: pb color: colo consumoEnergetico: consum peso: pes descripcion: desc marca: marc capacidadCarga: capacidad tipoCarga: tipoCar sistemaLavado: sist.
	^lava.
]

{ #category : #'as yet unclassified' }
Lavarropas >> calcularValor [ 
|valorFin|
valorFin := super calcularValor.
valorFin := valorFin + precioBase.
(capacidadCarga > 30) ifTrue: [ valorFin := valorFin +350 ].
^valorFin.
]

{ #category : #'as yet unclassified' }
Lavarropas >> inicializarPrecioBase: pb color: colo consumoEnergetico: consum peso: pes descripcion: desc marca: marc capacidadCarga: capacidad tipoCarga: tipoCar sistemaLavado: sist [
	super inicializarPrecioBase: pb color: colo consumoEnergetico: consum  peso: pes descripcion: desc marca: marc.
	capacidadCarga := capacidad .
	tipoCarga := tipoCar .
	sistemaLavado := sist.
]
