//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Анастасия Болбот on 27.12.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate =  self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = "TableView"
        content.secondaryText = "Test"
        cell.contentConfiguration = content
        return cell
    }
}

