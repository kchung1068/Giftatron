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
    var friendName = ""
    var answer1 = ""
    var answer2 = ""
    var answer3 = ""
    var answer4 = ""
    var arrayOfAnswers: [String] = []

    
    @IBOutlet weak var resultTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTableView.delegate = self
        resultTableView.dataSource = self
        arrayOfProducts.append(Product(image: UIImage(named: "Santahat")!, price: 20.0, name: "Cool Hat", url: "www.google.com"))
        arrayOfProducts.append(Product(image: UIImage(named: "Pink Circle")!, price: 50.0, name: "Circle Kitchen Top", url: "www.yahoo.com"))
        arrayOfProducts.append(Product(image: UIImage(named: "celebration")!, price: 100.0, name: "Party Materials", url: "www.Bing.com"))
    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.topItem?.title = "Showing Results for " + friendName
        print(friendName)
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = resultTableView.dequeueReusableCell(withIdentifier: "cell") {
        cell.textLabel?.text = arrayOfProducts[indexPath.row].name
        cell.imageView?.image = arrayOfProducts[indexPath.row].image
        cell.detailTextLabel?.text = "$" + String(arrayOfProducts[indexPath.row].price)
        return cell
        } else {
            return UITableViewCell()
        }
    }

}
