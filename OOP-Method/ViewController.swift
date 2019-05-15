//
//  ViewController.swift
//  OOP-Method
//
//  Created by Faridho Luedfi on 15/05/19.
//  Copyright © 2019 ridolud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var milkLabel: UILabel!
    
    var coffeMachine: CoffeeMachine = .init(milk: 200, brand: "Honda")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateCoffee()
        print(coffeMachine.voltage)
    }
    
    func updateCoffee() {
        coffeeLabel.text = String( coffeMachine.numOfBeens )
        milkLabel.text = String( coffeMachine.numOfMilk )
    }
    
    @IBAction func addCoffee(_ sender: UIButton) {
        coffeMachine.addBeens(beens: 60)
        updateCoffee()
    }
    
    @IBAction func addMilk(_ sender: UIButton) {
        coffeMachine.addMilk(milk: 20)
        updateCoffee()
    }
    @IBAction func makeCoffee(_ sender: UIButton) {
        coffeMachine.makeCoffe()
        updateCoffee()
    }
}

