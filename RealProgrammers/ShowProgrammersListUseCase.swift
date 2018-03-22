//
//  ShowProgrammersListUseCase.swift
//  RealProgrammers
//
//  Created by Rafael Sacchi on 3/22/18.
//  Copyright © 2018 Zooplus. All rights reserved.
//

import Foundation

class ShowProgrammersListUseCase {
    
    let entityGateway: EntityGateway
    var presenter: ProgrammersListPresentation // weakify later
    
    init(entityGateway: EntityGateway, presenter: ProgrammersListPresentation) {
        self.entityGateway = entityGateway
        self.presenter = presenter
    }
    
    func showProgrammers() {
        // fetch programmers data
        
        let programmers = entityGateway.fetchProgrammers()
        
        // process programmers data
        
        let programmersResponse = programmers.map { ProgrammersResponse(programmer: $0) }
        
        // present
        
        presenter.present(response: programmersResponse)
    }
    
    
    
}
