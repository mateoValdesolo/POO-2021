"
|admin bar bar2 beb1 beb2 beb3 cerv1 cerv2 cerv3|

admin := AdministradorFiesta new.
admin inicializarAdminFiestaNombre: 'Pedro'.

bar := Bar new.
bar inicializarBarNombre: 'Antares' ubicacion: 'San Martin'.

cerv1 := Cerveza new.
cerv1 inicializarCervezaNombre: 'Quilmes'.

cerv2 := Cerveza new.
cerv2 inicializarCervezaNombre: 'Budweiser'.

cerv3 := Cerveza new.
cerv3 inicializarCervezaNombre: 'Heineken'.

bar agregarCerveza: cerv1.
bar agregarCerveza: cerv2.
bar agregarCerveza: cerv3.

bar2 := Bar new.
bar2 inicializarBarNombre: 'Garden' ubicacion: 'Yrigoyen'.
bar2 agregarCerveza: cerv2.

beb1 := Bebedor new.
beb1 inicializarBebedorNombre: 'Mateo' apellido: 'Valdesolo' lugarProcedencia: 'Neuquen' cervezaPreferida: 'Budweiser'.

beb2 := Bebedor new.
beb2 inicializarBebedorNombre: 'Luis' apellido: 'Valdesolo' lugarProcedencia: 'Neuquen' cervezaPreferida: 'Budweiser'.

beb3 := Bebedor new.
beb3 inicializarBebedorNombre: 'Pedro' apellido: 'Valdesolo' lugarProcedencia: 'Neuquen' cervezaPreferida: 'Heineken'.

bar agregarBebedor: beb1.
bar agregarBebedor: beb2.
bar agregarBebedor: beb3.

admin agregarBar: bar.
admin agregarBar: bar2.
""Transcript show: (beb1 verificarPreferida: cerv2);cr.
Transcript show: (bar verificarSiPreferidaBebedor: beb1 cerveza: cerv2);cr .""
Transcript show: (bar verificarCerveza: cerv1 );cr.
Transcript show: (admin   calcularPorcentajeBares: cerv1);cr.
"
Class {
	#name : #AdministradorFiesta,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'colBares'
	],
	#category : #'POO2021-TP3'
}

{ #category : #'as yet unclassified' }
AdministradorFiesta class >> adminFiestaNombre: nomb [
	|admin|
	admin := self new.
	admin inicializarAdminFiestaNombre: nomb.
	^admin
]

{ #category : #'as yet unclassified' }
AdministradorFiesta >> agregarBar: unBar [
colBares add: unBar.
]

{ #category : #'as yet unclassified' }
AdministradorFiesta >> calcularPorcentajeBares: unaCerveza [
|total cont aux|
total := colBares size.
 aux := colBares select: [:cadaBar | cadaBar verificarCerveza: unaCerveza].
	cont := aux size.
	^(cont/total)*100

]

{ #category : #'as yet unclassified' }
AdministradorFiesta >> getColeccionBares [
^colBares.
]

{ #category : #'as yet unclassified' }
AdministradorFiesta >> inicializarAdminFiestaNombre: nomb [.
nombre:= nomb.
colBares := OrderedCollection new.

]
