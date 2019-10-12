//
//  ViewController.swift
//  OOP-Method
//
//  Created by Faridho Luedfi on 15/05/19.
//  Copyright © 2019 ridolud. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var milkLabel: UILabel!
    
    @IBOutlet weak var fullName: UITextField!
    
    var coffeMachine: CoffeeMachine = .init(milk: 0, coffe: 0, brand: "Honda")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateCoffee()
        print(coffeMachine.voltage)
        
        fullName.delegate = self
    }
    
    func updateCoffee() {
        coffeeLabel.text = String( coffeMachine.numOfBeens )
        milkLabel.text = String( coffeMachine.numOfMilk )
    }
    
    @IBAction func addCoffee(_ sender: UIButton) {
        coffeMachine.addBeens(beens: 1)
        updateCoffee()
    }
    
    @IBAction func addMilk(_ sender: UIButton) {
        coffeMachine.addMilk(milk: 1)
        updateCoffee()
    }
    @IBAction func makeCoffee(_ sender: UIButton) {
        coffeMachine.makeCoffe()
        updateCoffee()
    }
    @IBAction func registerButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail", let destination = segue.destination as? DetailViewController {
            destination.nameFromPReviosView = fullName.text
            destination.totalCoffeePreviousView = String(coffeMachine.numOfBeens)
            destination.totalMilkPreviousView = String(coffeMachine.numOfMilk)
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == fullName {
            if textField.text == "" {
                let alert = UIAlertController(title: "Error", message: "Textfield should not empty.", preferredStyle: .alert)
                self.present(alert, animated: true, completion: nil)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            }
        }
        
        return true
    }
}

