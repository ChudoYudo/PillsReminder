//
//  PillCell.swift
//  Pills
//
//  Created by NG on 12/15/17.
//  Copyright © 2017 NG. All rights reserved.
//

import Foundation
class PillCell: UITableViewCell {
    @IBOutlet weak var pillNameLabel: UILabel!
    
    func updateView(pill : Pill) {
        pillNameLabel.text = pill.getPillName()
        print( pill.getPillName())
    }
}
