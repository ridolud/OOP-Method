//
//  Printer.swift
//  OOP-Method
//
//  Created by Faridho Luedfi on 15/05/19.
//  Copyright © 2019 ridolud. All rights reserved.
//

import Foundation

class CoffeeMachine: Machine {
    var numOfBeens: Int
    var numOfMilk: Int
    var brand: String
    
    init(milk: Int, coffe: Int, brand: String) {
        self.numOfMilk = milk
        self.brand = brand
        self.numOfBeens = coffe
    }
    
    func addMilk(milk: Int){
        self.numOfMilk += milk
    }
    
    func addBeens(beens: Int) {
        self.numOfBeens += beens
    }
    
    func makeCoffe() {
        self.numOfBeens = 0
        self.numOfMilk = 0
    }
    
}
