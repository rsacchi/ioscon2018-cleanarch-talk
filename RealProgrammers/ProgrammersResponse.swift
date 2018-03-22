//
//  ProgrammersResponse.swift
//  RealProgrammers
//
//  Created by Rafael Sacchi on 3/22/18.
//  Copyright © 2018 Zooplus. All rights reserved.
//

import Foundation

struct ProgrammersResponse {
    let fullName: String
    let date: Date
    let favourite: Bool
}

extension ProgrammersResponse {
    init(programmer: Programmer) {
        fullName = programmer.fullName
        date = programmer.interviewDate
        favourite = programmer.favourite
    }
}
