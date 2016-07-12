//
//  ViewController.swift
//  openLibrary3
//
//  Created by José-María Súnico on 20160710.
//  Copyright © 2016 José-María Súnico. All rights reserved.
//
/*
Instrucciones
=============
Desarrollar una aplicación en lenguaje SWIFT usando Xcode que realice una petición a https://openlibrary.org/ y que muestre el resultado en una tabla jerárquica a dos niveles:
	1. En el primer nivel se encontrará una vista tabla, mostrando los títulos de libros ya buscados. 
	2. En el segundo nivel se mostrará el detalle del libro que se seleccione en el primer nivel.
La idea es que los libros que se vayan buscando se vayan integrando en la estructura que representará la fuente de datos de la vista tabla. Puedes seleccionar, al momento de crear tu proyecto la plantilla Maestro-Detalle.
IMPORTANTE. AL momento de crear tu proyecto, no olvides seleccionar el uso de Core Data ya que se usará en ese módulo y así se facilitan las cosas

Review criteria
---------------
1 Al iniciar la aplicación, una vista tabla deberá ser mostrada
2. Deberá contener un UIBarButtonItem, en específico el Add (signo +) en la barra de navegación que permita hacer una búsqueda y añadir el libro a la tabla
3. Al presionar el botón de añadir (punto anterior), se deberá mostrar una vista que permita ingresar el ISBN de un libro y mostrar, en caso de éxito de la búsqueda:
		a. El título del libro
		b. Los autores del libro
		c. La portada (en caso de que se encuentre)
4. Al regresar a la vista tabla, el título del libro buscado deberá aparecer en la tabla
5. Si seleccionamos un renglón de la tabla que contenga un título de libro, deberá mostrar sus detalles
*/


import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

