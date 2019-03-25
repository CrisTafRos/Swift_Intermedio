//
//  ViewController.swift
//  unidad3_clase11
//
//  Created by Laboratorio UNAM-Apple 24 on 3/25/19.
//  Copyright © 2019 Tafolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let materias: [String] = ["Investigación de Operaciones", "Seguridad Informática", "Planeación de Proyectos", "Contabilidad", "Introducción a la programación"]
    
    @IBOutlet weak var pickerViewMaterisd: UIPickerView!
    @IBOutlet weak var labelResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return materias.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return materias[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelResultado.text = materias[row]
    }
}

