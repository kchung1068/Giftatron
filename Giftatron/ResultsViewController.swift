//
//  ResultsViewController.swift
//  Giftatron
//
//  Created by Michael Linker on 12/5/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    let arrayOfProducts: [Product] = []

    
    @IBOutlet weak var resultTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTableView.delegate = self
        resultTableView.dataSource = self
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = arrayOfProducts[indexPath.row].name
        cell.imageView?.image = arrayOfProducts[indexPath.row].image
        cell.detailTextLabel?.text = String(arrayOfProducts[indexPath.row].price)
        return cell
    }

}
