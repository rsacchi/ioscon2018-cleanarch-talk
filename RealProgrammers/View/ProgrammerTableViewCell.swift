//
//  ProgrammerTableViewCell.swift
//  RealProgrammers
//
//  Created by Rafael Sacchi on 3/22/18.
//  Copyright © 2018 Zooplus. All rights reserved.
//

import UIKit

class ProgrammerTableViewCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var date: UILabel!
}

extension ProgrammerTableViewCell: ProgrammerCellView {
    
    func display(name: String) {
        self.name.text = name
    }
    
    func display(favourite: Bool) {
        self.rating.isHidden = !favourite
    }
    
    func display(date: String) {
        self.date.text = date
    }
}
