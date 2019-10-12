//
//  DetailViewController.swift
//  OOP-Method
//
//  Created by Faridho Luedfi on 16/05/19.
//  Copyright © 2019 ridolud. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var totalCoffee: UILabel!
    @IBOutlet weak var totalMilk: UILabel!
    
    var nameFromPReviosView: String?
    var totalCoffeePreviousView: String?
    var totalMilkPreviousView: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = nameFromPReviosView
        totalCoffee.text = totalCoffeePreviousView
        totalMilk.text = totalMilkPreviousView
        // Do any additional setup after loading the view.
    }

}
