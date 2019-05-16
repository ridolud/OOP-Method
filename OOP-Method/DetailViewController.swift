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
    var nameFromPReviosView: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            detailLabel.text = nameFromPReviosView
        // Do any additional setup after loading the view.
    }

}
