//
//  ResultsViewController.swift
//  Giftatron
//
//  Created by Michael Linker on 12/5/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

struct Main : Codable {
    let products : [Gift]
}
struct Gift : Codable {
    let name : String
    let salePrice : Double
    let mobileUrl : URL
    let image : URL
    let longDescription : String
}



class ResultsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    var arrayOfProducts = Main(products: [])
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
        gimmeeBestBuy()
//        arrayOfProducts.append(Product(image: UIImage(named: "Santahat")!, price: 20.0, name: "Cool Hat", url: "www.google.com"))
//        arrayOfProducts.append(Product(image: UIImage(named: "Pink Circle")!, price: 50.0, name: "Circle Kitchen Top", url: "www.yahoo.com"))
//        arrayOfProducts.append(Product(image: UIImage(named: "celebration")!, price: 100.0, name: "Party Materials", url: "www.Bing.com"))
    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.topItem?.title = "Showing Results for " + friendName
        print(friendName)
    }
    
    @IBAction func clickedAddButton(_ sender: Any) {
        addNewItem()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfProducts.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = resultTableView.dequeueReusableCell(withIdentifier: "cell") {
            cell.textLabel?.text = arrayOfProducts.products[indexPath.row].name
            cell.imageView?.image = UIImage(ciImage: CIImage(contentsOf: arrayOfProducts.products[indexPath.row].image)!)
            cell.detailTextLabel?.text = "$" + String(arrayOfProducts.products[indexPath.row].salePrice)
        return cell
        } else {
            return UITableViewCell()
        }
    }
    func addNewItem() {
        let alert = UIAlertController(title: "New Item", message: "enter your item name below", preferredStyle: .alert)
        alert.addTextField { (TextField) in
            TextField.placeholder = "price"
        }
        alert.addTextField { (TextField2) in
        }
        alert.addTextField { (TextField3) in
        }
        let OK = UIAlertAction(title: "Mikey", style: .destructive) { (OK) in
            let item = Product(image: UIImage(), price: Double(alert.textFields![0].text!)!, name: alert.textFields![1].text!, url: alert.textFields![2].text!)
//            self.arrayOfProducts.append(item)
            self.resultTableView.reloadData()
        }
        alert.addAction(OK)
        present(alert, animated: true, completion: nil)
    }
    
    func gimmeeBestBuy() {
        
        let url = URL(string: "https://api.bestbuy.com/v1/products(search=ram)?format=json&pageSize=5&apiKey=GVfY17LDc7x2vt4lBya2D26z")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if let data = data {
                do {
                    self.arrayOfProducts = try JSONDecoder().decode(Main.self, from: data)
                    for x in self.arrayOfProducts.products {
                        print(self.arrayOfProducts.products.count)
//                        let other = x.dt_txt + " " + x.weather.first!.description
//                        self.temperatureData.append(String(x.main.temp) + " " + other)
//                        print(self.temperatureData)
                    }
                    DispatchQueue.main.async {
                        self.resultTableView.reloadData()
                    }
                } catch let err {
                    print("Error: \(err)")
                }
            } else {
                print("yuh oh")
            }
        }.resume()
    }
}
