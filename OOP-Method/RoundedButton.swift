//
//  RoundedButton.swift
//  OOP-Method
//
//  Created by Faridho Luedfi on 15/05/19.
//  Copyright © 2019 ridolud. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 11
        backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
    }

}
