//
//  ProgrammersListPresenter.swift
//  RealProgrammers
//
//  Created by Rafael Sacchi on 3/22/18.
//  Copyright © 2018 Zooplus. All rights reserved.
//

import Foundation

class ProgrammersListPresenter {
    
    var programmersResponse: [ProgrammersResponse] = []
    let useCase: ShowProgrammersListUseCase
    
    var numberOfRows: Int {
        return programmersResponse.count
    }
    
    init(useCase: ShowProgrammersListUseCase) {
        self.useCase = useCase
    }
    
    func viewReady() {
        useCase.showProgrammers()
    }
    
    func configure(cell: ProgrammerCellView, forRow row: Int) {
        let response = programmersResponse[row]
        cell.display(name: response.fullName)
        cell.display(date: response.date.description)
        cell.display(favourite: response.favourite)
    }
    
}

extension ProgrammersListPresenter: ProgrammersListPresentation {
    
    func present(response: [ProgrammersResponse]) {
        self.programmersResponse = response
    }
    
}
