//
//  ViewController.swift
//  DropMenu
//
//  Created by Kiran on 05/09/19.
//  Copyright © 2019 Kiran. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource , options {
    
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tvc = tableview.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        tvc.delegate = self
        return tvc
    }
    
    //Returns Drop Down options
    func options() -> [String] {
        return ["test 1" , "test 2"]
    }
    
}

