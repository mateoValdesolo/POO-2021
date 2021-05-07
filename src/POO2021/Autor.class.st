Class {
	#name : #Autor,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'apellido',
		'ciudad',
		'pais',
		'fechaNacimiento',
		'colCuadrosAutor'
	],
	#category : #'POO2021-TP3'
}

{ #category : #constructor }
Autor class >> nombre: unNombre apellido: unApell ciudad: aCiudad pais: aPais fechaNacimiento: aFecha [
|artista|
artista:= self new.
artista inicializarNombre: unNombre apellido: unApell ciudad: aCiudad pais: aPais fechaNacimiento: aFecha.
^artista.
]

{ #category : #'de aplicacion' }
Autor >> agregarCuadroAutor: unCuadro [
	colCuadrosAutor add: unCuadro.
]

{ #category : #'as yet unclassified' }
Autor >> getColCuadrosAutor [
 ^colCuadrosAutor .
]

{ #category : #initialization }
Autor >> inicializarNombre: unNombre apellido: unApell ciudad: aCiudad pais: aPais fechaNacimiento:aFecha [.
nombre := unNombre.
apellido := unApell.
ciudad := aCiudad.
pais := aPais.
colCuadrosAutor := OrderedCollection new.
]

{ #category : #'de aplicacion' }
Autor >> obtenerColCuadrosAutor [
	^ colCuadrosAutor
]

{ #category : #initialization }
Autor >> setApellido: unApell [
	apellido := unApell.
]

{ #category : #initialization }
Autor >> setCiudad: unaCiudad [
	ciudad := unaCiudad.
]

{ #category : #initialization }
Autor >> setNombre: unNombre [
	nombre := unNombre.
]

{ #category : #initialization }
Autor >> setPais: unPais [
	pais := unPais.
]
