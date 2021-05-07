"
|admin pina1 pina2 pina3 pintor oleo oleo2 oleo3 oleo4 oleo5 oleo6 colCuadros lista    listaPinacotecas|

admin:= AdministradorPinacoteca adminPinacotecas.

pina1:= Pinacoteca nombre: 'Museo Nacional de Bellas Artes' ciudad: 'Neuquen'  direccion: 'Belgrano 150'.

pina2:=Pinacoteca nombre: 'Sala de Arte' ciudad:'Rio Negro'  direccion:'Independencia 145'. 

pina3:=Pinacoteca nombre: 'Artear' ciudad:'Mendoza'  direccion: 'San Martin 345'.

pintor:=Autor nombreApellido: 'Juan Perez' ciudad:'Paris'  pais:  'Francia'fechaNacimiento:(Date year: 1988 month:07  day:28).  

admin agregarAutor: pintor.
admin agregarPinacotecas: pina1.
admin agregarPinacotecas: pina2.
admin agregarPinacotecas: pina3.

oleo:=Cuadro Codigo: 001 nombre: 'casa'  dimensiones:'70x40'  fechaPintado: (Date year:1991  month:01  day:20)  tecnica: 'oleo sobre tela' genero:'paisaje'. 

oleo2:=Cuadro Codigo: 002 nombre: 'hogar'  dimensiones:'50x40'  fechaPintado: (Date year:1998  month:01  day:20)  tecnica: 'oleo sobre tela' genero:'paisaje'. 

oleo3:=Cuadro Codigo: 003 nombre: 'linterna'  dimensiones:'50x40'  fechaPintado: (Date year:2001  month:01  day:20)  tecnica: 'oleo sobre tela' genero:'paisaje'. 

oleo4:=Cuadro Codigo: 004 nombre: 'cuchara'  dimensiones:  '34x90'fechaPintado: (Date year: 1956 month: 01 day: 30) tecnica:'acuarela sobre madera'  genero: 'retraro'.

oleo5:=Cuadro Codigo: 005 nombre:'cuchillo'  dimensiones: 'oleo sobre tela' fechaPintado: (Date year: 1876 month: 08  day:13 ) tecnica: 'acuarela sobre papel' genero: 'paisaje'.

oleo6:=Cuadro Codigo:006  nombre:'tenedor'  dimensiones: '90x70' fechaPintado: (Date year: 1999 month: 08 day: 01) tecnica: 'acrilico sobre tela' genero:'paisaje' .

pina1 agregarCuadro: oleo.	
pina1 agregarCuadro: oleo2.
pina1 agregarCuadro: oleo3.	
	
pina2 agregarCuadro: oleo4.
pina2 agregarCuadro: oleo5.

pina3 agregarCuadro: oleo6.

pintor agregarCuadroAutor: oleo.
pintor agregarCuadroAutor: oleo6.	

listaPinacotecas :=admin listarPinacotecasConCuadrosDelAutor: pintor.

listaPinacotecas do: [ :cadaPinacoteca|Transcript show: cadaPinacoteca getNombre ].
"
Class {
	#name : #AdministradorPinacoteca,
	#superclass : #Object,
	#instVars : [
		'colAutores',
		'colPinacoteca'
	],
	#category : #'POO2021-TP3'
}

{ #category : #constructor }
AdministradorPinacoteca class >> adminPinacotecas [
|admin|
admin:=AdministradorPinacoteca new.
admin inicializarAdminPinacotecas .
^admin.

]

{ #category : #'de aplicacion' }
AdministradorPinacoteca >> agregarAutor: unAutor [
	colAutores  add: unAutor.
]

{ #category : #'de aplicacion' }
AdministradorPinacoteca >> agregarPinacotecas: unaPinacoteca [.
colPinacoteca add: unaPinacoteca .
]

{ #category : #initialization }
AdministradorPinacoteca >> inicializarAdminPinacotecas [
colPinacoteca := OrderedCollection new.
colAutores := OrderedCollection new.
]

{ #category : #'de aplicacion' }
AdministradorPinacoteca >> listarPinacotecasConCuadrosDelAutor: unAutor [
	| colPinacotecasAutor unaColCuadrosAutor |
	unaColCuadrosAutor := unAutor obtenerColCuadrosAutor.
	colPinacotecasAutor := colPinacoteca
		select:
			[ :cadaPinacoteca | cadaPinacoteca verificarCuadros: unaColCuadrosAutor ].
	^ colPinacotecasAutor
]
