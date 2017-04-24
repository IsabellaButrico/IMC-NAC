//
//  imc.swift
//  IMC-NAC
//
//  Created by Usuário Convidado on 24/04/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import Foundation

class IMCComputation{
    var peso:Double
    var altura:Double
    
    init(peso:Double, altura:Double){
        self.altura = altura
        self.peso = peso
    }
    func imc() -> Double{
        return peso / (altura * altura)
    }
}
