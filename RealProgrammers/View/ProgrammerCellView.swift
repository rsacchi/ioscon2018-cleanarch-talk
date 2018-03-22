//
//  ProgrammerCellView.swift
//  RealProgrammers
//
//  Created by Rafael Sacchi on 3/22/18.
//  Copyright © 2018 Zooplus. All rights reserved.
//

import Foundation

protocol ProgrammerCellView {
    func display(name: String)
    func display(date: String)
    func display(favourite: Bool)
}
