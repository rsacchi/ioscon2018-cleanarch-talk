//
//  Programmer.swift
//  RealProgrammers
//
//  Created by Rafael Sacchi on 3/22/18.
//  Copyright © 2018 Zooplus. All rights reserved.
//

import Foundation

struct Programmer {
    let firstName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    let emacs: Int // 0 to 4
    let caffeine: Int // 0 to 4
    let interviewDate: Date
    let favourite: Bool
    
    var rating: Double {
        return Double((caffeine + emacs))/2
    }
}
