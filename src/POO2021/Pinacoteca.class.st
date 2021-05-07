"
|pina pintor oleo oleo2 oleo3 colCuadros lista|

pina:= Pinacoteca nombre: 'Museo Nacional de Bellas Artes' ciudad: 'Neuquen'  direccion: 'Belgrano 150'.

oleo:=Cuadro Codigo: 001 nombre: 'casa'  dimensiones:'70x40'  fechaPintado: (Date year:1991  month:01  day:20)  tecnica: 'oleo sobre tela' genero:'paisaje'. 

oleo2:=Cuadro Codigo: 002 nombre: 'hogar'  dimensiones:'50x40'  fechaPintado: (Date year:1998  month:01  day:20)  tecnica: 'oleo sobre tela' genero:'paisaje'. 

oleo3:=Cuadro Codigo: 003 nombre: 'linterna'  dimensiones:'50x40'  fechaPintado: (Date year:2001  month:01  day:20)  tecnica: 'oleo sobre tela' genero:'paisaje'. 

pina agregarCuadro: oleo.	
pina agregarCuadro: oleo2.
pina agregarCuadro: oleo3.	

lista:=pina generarListadoTecnica: 'oleo sobre tela' genero:'paisaje'  anio:2000.


lista do: [:cadaElem|Transcript show: cadaElem getNombre;cr ].
"
Class {
	#name : #Pinacoteca,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'ciudad',
		'direccion',
		'colCuadros'
	],
	#category : #'POO2021-TP3'
}

{ #category : #constructor }
Pinacoteca class >> nombre: aNombre ciudad: aCiudad direccion: aDireccion [
|salon|
salon:=self new.
salon inicializarPinacotecaNombre: aNombre ciudad: aCiudad direccion: aDireccion.
^salon.
]

{ #category : #'de aplicacion' }
Pinacoteca >> agregarCuadro: unCuadro [
colCuadros add: unCuadro .
]

{ #category : #'de aplicacion' }
Pinacoteca >> generarListadoTecnica: unaTecnica genero: unGenero anio: unAnio [
	| listadoCompleto |
	listadoCompleto := colCuadros
		select: [ :cadaCuadro | 
			cadaCuadro
				verificarCuadroTecnica: unaTecnica
				genero: unGenero
				anio: unAnio ].
			^listadoCompleto .
			
]

{ #category : #'de aplicacion' }
Pinacoteca >> getNombre [
^nombre .
]

{ #category : #initialization }
Pinacoteca >> inicializarPinacotecaNombre:aNombre ciudad:aCiudad direccion:aDireccion [ 
nombre:=aNombre.
ciudad:=aCiudad.
direccion:=aDireccion. 
colCuadros:=OrderedCollection new.
]

{ #category : #'de aplicacion' }
Pinacoteca >> verificarCuadros: unaColCuadrosAutor [
	| cuadroAutorEncontrado |
	cuadroAutorEncontrado := unaColCuadrosAutor
		detect: [ :cadaCuadroAutor | colCuadros includes: cadaCuadroAutor ]
		ifNone: [ nil ].
	^ cuadroAutorEncontrado isNotNil
]
