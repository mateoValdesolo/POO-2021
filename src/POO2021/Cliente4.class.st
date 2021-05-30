"
|client1 lava1 lava2 tele1 tele2 reser1 reser2|

client1 := Cliente4 crearNombre: 'Pepito' apellido: 'ASD'  dni: 123456 razonSocial: 'Pepito ASD'.

lava1 := Lavarropas crearPrecioBase: 500 color: 'Gris' consumoEnergetico: $C peso: 30 descripcion: 'unLava' marca: 'LG' capacidadCarga: 60 tipoCarga: 'Frontal' sistemaLavado: 'Todos'.

lava2 := Lavarropas crearPrecioBase: 350 color: 'Gris' consumoEnergetico: $D peso: 50 descripcion: 'unLava' marca: 'Samsung' capacidadCarga: 20 tipoCarga: 'Vertical' sistemaLavado: 'Todos'.

tele1 := Televisor crearPrecioBase: 500 color: 'Gris' consumoEnergetico: $A peso: 50  descripcion: 'unTele'  marca: 'LG' tamañoPantalla: 50 resolucion: '120x56' hdmi: 2  smart: 'Si'.

tele2 := Televisor crearPrecioBase: 200 color: 'Gris' consumoEnergetico: $F peso: 20  descripcion: 'UnTele'  marca: 'Samsung' tamañoPantalla: 20 resolucion: '120x56' hdmi: 1  smart: 'Si'.

reser1 := Reserva crearCodigoReserva: 0 fechaReserva: 1 fechaEntrega: 3 monto: 200.

reser2 := Reserva crearCodigoReserva: 1 fechaReserva: 2 fechaEntrega: 6 monto: 500.

reser1 añadirElectro: lava1.
reser1 añadirElectro: tele1.
reser1 completarDatosFechaEntrega: 3.
"
Class {
	#name : #Cliente4,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'apellido',
		'dni',
		'razonSocial'
	],
	#category : #'POO2021-TP4'
}

{ #category : #'as yet unclassified' }
Cliente4 class >> crearNombre: nomb apellido: apel dni: dn razonSocial: razon [
	|client|
	client := self new.
	client inicializarNombre: nomb apellido: apel dni: dn razonSocial: razon.
	^client.
]

{ #category : #'as yet unclassified' }
Cliente4 >> inicializarNombre: nomb apellido: apel dni: dn razonSocial: razon [
nombre := nomb.
apellido := apel.
dni := dn.
razonSocial := razon.
]
