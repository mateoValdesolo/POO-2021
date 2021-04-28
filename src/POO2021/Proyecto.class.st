Class {
	#name : #Proyecto,
	#superclass : #Object,
	#instVars : [
		'tema',
		'votosfavor',
		'votoscontra'
	],
	#category : #POO2021
}

{ #category : #'as yet unclassified' }
Proyecto class >> nuevoProyectoTema: tem favor: fav contra: contr [
	|proy|
	proy := self new.
	proy iniciarTema: tem favor: fav contra: contr.
	^proy
	
]

{ #category : #'de aplicacion' }
Proyecto >> contra [ 
	votoscontra := votoscontra +1.
]

{ #category : #'de aplicacion' }
Proyecto >> contra: n [
	votoscontra := votoscontra +n.
]

{ #category : #'as yet unclassified' }
Proyecto >> estado [
	|ret|
	ret:= 'Tema: ', self getTema,'Votos en Contra: ',self getVotosContra,'Votos a Favor: ',self getVotosFavor .
	^ret. 
]

{ #category : #'de aplicacion' }
Proyecto >> favor [
	votosfavor := votosfavor +1.
]

{ #category : #'de aplicacion' }
Proyecto >> favor: n [
	votosfavor := votosfavor + n.
]

{ #category : #'as yet unclassified' }
Proyecto >> getTema [
	^tema.
]

{ #category : #'as yet unclassified' }
Proyecto >> getVotosContra [
	^votoscontra .
]

{ #category : #'as yet unclassified' }
Proyecto >> getVotosFavor [
	^votosfavor .
]

{ #category : #'as yet unclassified' }
Proyecto >> iniciaTema: tem [
	votosfavor:= 0.
	votoscontra:= 0.
	

]

{ #category : #'as yet unclassified' }
Proyecto >> iniciarTema: untem favor: fav contra: contr [
	tema := untem.
	votosfavor := fav.
	votoscontra := contr.
]
