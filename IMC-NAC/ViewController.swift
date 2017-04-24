//
//  ViewController.swift
//  IMC-NAC
//
//  Created by Usuário Convidado on 24/04/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtpeso: UITextField!
    
    @IBOutlet weak var txtaltura: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var escolhaSexo: UILabel!
    
    
    var sexo:String = "Sexo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        escolhaSexo.text = "sexo"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func CalcularImc(_ sender: Any) {
        
        
        let p = Double(txtpeso.text!)
        let a = Double(txtaltura.text!)
        
        let chamadaconta = IMCComputation(peso:p!, altura:a!)
        
        lblResultado.text = (NSString(format: "%.2f", chamadaconta.imc())) as String
        
        
    }
    
    
 
    @IBAction func toogle(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            escolhaSexo.text = "Masculino"
        }else{
            escolhaSexo.text = "Feminino"
        }
        
    }

    
  

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier!{
        case "ResultadoSegue":
            let objResult = segue.destination as! Resultado
            objResult.resultado = lblResultado.text!
        default: return;
        }
    
    
    }
}

