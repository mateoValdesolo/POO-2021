Class {
	#name : #Reserva,
	#superclass : #Object,
	#instVars : [
		'codigoReserva',
		'datosCliente',
		'colElectro',
		'fechaReserva',
		'fechaEntrega',
		'monto'
	],
	#category : #'POO2021-TP4'
}

{ #category : #'as yet unclassified' }
Reserva class >> crearCodigoReserva: cod fechaReserva: fechaRes fechaEntrega: fechaEnt monto: mont [
|reser|
reser := self new.
reser inicializarCodigoReserva: cod fechaReserva: fechaRes fechaEntrega: fechaEnt monto: mont.
^reser.
]

{ #category : #'as yet unclassified' }
Reserva >> añadirElectro: unElec [
colElectro add: unElec.
]

{ #category : #'as yet unclassified' }
Reserva >> completarDatosFechaEntrega: fechaEntreg [
|valor|
valor := 0.
fechaEntrega := fechaEntreg.
colElectro do: [ :elec | valor := valor + (elec calcularValor)].
^valor.
]

{ #category : #'as yet unclassified' }
Reserva >> inicializarCodigoReserva: cod fechaReserva: fechaRes fechaEntrega: fechaEnt monto: mont [
codigoReserva := cod.
fechaReserva := fechaRes .
fechaEntrega := fechaEnt .
monto := mont.
colElectro := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
Reserva >> registrarReserva: rs colElectro: colElec [
codigoReserva := codigoReserva +1.
fechaReserva := Date today.
datosCliente := rs.
colElectro := colElec.
^codigoReserva.
]
