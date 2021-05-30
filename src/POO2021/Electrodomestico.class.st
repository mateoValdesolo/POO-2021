Class {
	#name : #Electrodomestico,
	#superclass : #Object,
	#instVars : [
		'precioBase',
		'color',
		'consumoEnergetico',
		'peso',
		'descripcion',
		'marca'
	],
	#category : #'POO2021-TP4'
}

{ #category : #'as yet unclassified' }
Electrodomestico class >> crearPrecioBase: pb color: colo consumoEnergetico: consum peso: pes descripcion: desc marca: marc [
 |electro|
	electro := self new.
	electro inicializarElectrodomesticoPrecioBase: pb color: colo consumoEnergetico: consum peso: pes descripcion: desc marca: marc.
	^electro.

]

{ #category : #'as yet unclassified' }
Electrodomestico >> calcularValor [
|valor|
(peso > 0 & peso <= 19) ifTrue:  [ valor := 150 ] 
								ifFalse: [ (peso >= 20 & peso <= 49) 
								ifTrue: [ valor := 350 ]	
								ifFalse:	[ (peso >= 50 & peso <= 79) 	
								ifTrue: [ valor := 480 ] 
								ifFalse:  [ (peso >= 80) ifTrue: [ valor := 650 ]]]].
						
(consumoEnergetico = $A) ifTrue: [ valor := valor + 300 ] 
								ifFalse: [ (consumoEnergetico = $B)
								ifTrue: [ valor := valor + 230 ] 
								ifFalse: [ (consumoEnergetico = $C) 
								ifTrue: [valor := valor + 250] 
								ifFalse: [ (consumoEnergetico = $D) 
								ifTrue: [ valor := valor + 120 ] 
								ifFalse: [(consumoEnergetico = $E) 
								ifTrue: [ valor := valor + 90 ] 
								ifFalse: [valor := valor + 70] ] ] ]].
^valor.
]

{ #category : #'as yet unclassified' }
Electrodomestico >> inicializarPrecioBase: pb color: colo consumoEnergetico: consum peso: pes descripcion: desc marca: marc [
	precioBase := pb.
	color := colo.
	consumoEnergetico := consum.
	peso := pes.
	descripcion := desc .
	marca:= marc.
]
