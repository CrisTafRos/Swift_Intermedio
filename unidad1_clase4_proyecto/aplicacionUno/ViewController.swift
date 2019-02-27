//
//  ViewController.swift
//  aplicacionUno
//
//  Created by Laboratorio UNAM-Apple 24 on 2/20/19.
//  Copyright © 2019 Tafolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /* Arreglo: Grupo o colección finita, homogénea y ordenada de
     * elementos.
     * Es un conjunto de dadtos homogéneos que se encuentran ubicados
     * de forma consecutiva en la memoria primaria (RAM). */
    
    let arregloDados = ["dado1", "dado2", "dado3", "dado4", "dado5", "dado6"]
    
    var indiceNumeroAleatorioUno: Int = 0
    var indiceNumeroAleatorioDos: Int = 0
    
    @IBOutlet weak var dadoImageView: UIImageView!
    
    @IBOutlet weak var otroDadoImageView: UIImageView!
    
    @IBAction func tiralosButtonPressed(_ sender: UIButton) {
        indiceNumeroAleatorioUno = Int(arc4random_uniform(6))
        indiceNumeroAleatorioDos = Int(arc4random_uniform(6))
        
        print(indiceNumeroAleatorioUno)
        print(indiceNumeroAleatorioDos)
        
        dadoImageView.image = UIImage(named: arregloDados[indiceNumeroAleatorioUno])
        otroDadoImageView.image = UIImage(named: arregloDados[indiceNumeroAleatorioDos])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    


}

