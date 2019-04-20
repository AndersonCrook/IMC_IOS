//
//  ViewController.swift
//  IMC
//
//  Created by Anderson Oliveira on 19/04/19.
//  Copyright © 2019 Anderson Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewResultado: UIView!
    @IBOutlet weak var txtPeso: UITextField!
    
    @IBOutlet weak var txtAltura: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var img: UIImageView!
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCalcular(_ sender: Any) {
        if let peso = Double(txtPeso.text!), let altura = Double(txtAltura.text!){
            imc = peso / pow(altura, 2)
            
            MostrarResultado()
        }
    }
    func MostrarResultado() {
        var Result: String = ""
        var imagem: String = ""
        
        switch imc {
            case 0..<16:
                Result = "Magreza"
                imagem = "abaixo"
            case 16..<18.5:
                Result = "Abaixo do peso"
                imagem = "abaixo"
            case 18.5..<25:
                Result = "Peso ideal"
                imagem = "ideal"
            case 25..<30:
                Result = "Sobrepeso"
                imagem = "sobre"
            default:
                Result = "Obesidade"
                imagem = "obesidade"
        }
        lblResultado.text = Result
        img.image = UIImage(named: imagem)
        viewResultado.isHidden = false
        view.endEditing(true)
    }
}
