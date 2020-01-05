//
//  VideoListViewController.swift
//  tableview-programmatic
//
//  Created by miguel tomairo on 1/5/20.
//  Copyright © 2020 rapser. All rights reserved.
//

import UIKit

class VideoListViewController: UIViewController {
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureTableView()
    }

    func configureTableView(){
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.pin(to: view)
    }

    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension VideoListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        return UITableViewCell()
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        cell.textLabel?.text = "Prueba"
//
//        return cell
    }
    
    
    
}
