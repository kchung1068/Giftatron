//
//  ResultsViewController.swift
//  Giftatron
//
//  Created by Michael Linker on 12/5/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    var arrayOfProducts: [Product] = []

    
    @IBOutlet weak var resultTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTableView.delegate = self
        resultTableView.dataSource = self
        
        arrayOfProducts.append(Product(image: UIImage(), price: 20.0, name: "billy", url: "www.google.com"))
        arrayOfProducts.append(Product(image: UIImage(), price: 50.0, name: "mary", url: "www.google.com"))
        arrayOfProducts.append(Product(image: UIImage(), price: 100.0, name: "kyle", url: "www.google.com"))
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = resultTableView.dequeueReusableCell(withIdentifier: "cell") {
        cell.textLabel?.text = arrayOfProducts[indexPath.row].name
        cell.imageView?.image = arrayOfProducts[indexPath.row].image
        cell.detailTextLabel?.text = "$"String(arrayOfProducts[indexPath.row].price)
        return cell
        } else {
            return UITableViewCell()
        }
    }

}
