//
//  ProgrammersTableViewController.swift
//  RealProgrammers
//
//  Created by Rafael Sacchi on 3/22/18.
//  Copyright © 2018 Zooplus. All rights reserved.
//

import UIKit

class ProgrammersTableViewController: UITableViewController {
    
    var presenter: ProgrammersListPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewReady()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseIdentifier") as! ProgrammerTableViewCell
        presenter.configure(cell: cell, forRow: indexPath.row)
        return cell
    }

}
