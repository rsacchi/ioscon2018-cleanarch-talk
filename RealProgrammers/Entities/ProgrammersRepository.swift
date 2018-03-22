//
//  ProgrammersRepository.swift
//  RealProgrammers
//
//  Created by Rafael Sacchi on 3/22/18.
//  Copyright © 2018 Zooplus. All rights reserved.
//

import Foundation

class ProgrammersRepository {
    
    var programmers: [Programmer]
    
    init() {
        let programmer0 = Programmer(firstName: "John", lastName: "Appleseed",
                                    emacs: 4, caffeine: 4, interviewDate: Date(), favourite: true)
        let programmer1 = Programmer(firstName: "Rafael", lastName: "Sacchi",
                                    emacs: 0, caffeine: 0, interviewDate: Date(), favourite: true)
        
        programmers = [programmer0, programmer1]
    }
}

extension ProgrammersRepository: EntityGateway {
    
    func fetchProgrammers() -> [Programmer] {
        return programmers
    }
    
}
