//
//  ResultsViewController.swift
//  Giftatron
//
//  Created by Michael Linker on 12/5/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit
import SafariServices

struct Main : Decodable {
    let products : [Gift] // itemSummaries
}
struct Gift : Decodable {
    let name : String //title
    let salePrice : Double //price -> value
    let mobileUrl : URL // itemWebUrl
    let image : String? // image -> imageUrl
    let longDescription : String? // X
}



class ResultsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    var arrayOfProducts : [Gift] = []
    var friendName = ""
    var answer1 = ""
    var answer2 = ""
    var answer3 = ""
    var answer4 = ""
    var answer5 = ""
    
    var smoob = ""
    var product = 0
    var arrayOfAnswers: [String] = []
    
    var arrayOfPricesSort: [String] = []
    var price = ""
    
    @IBOutlet weak var resultTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTableView.delegate = self
        resultTableView.dataSource = self
        gimmeeBestBuy()
    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.topItem?.title = "Showing Results for " + friendName
        
        if friendName == "" {
            navigationController?.navigationBar.topItem?.title = "Showing Results for (N/A)"
        } else {
            navigationController?.navigationBar.topItem?.title = "Showing Results for " + friendName
        }
        
        //        print(friendName)
    }
    
    @IBAction func clickedAddButton(_ sender: Any) {
        addNewItem()
    }
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let cellTitle = tableView.cellForRow(at: indexPath)?.textLabel?.text
        var url = URL(string: "")
        for x in arrayOfProducts {
            if cellTitle == x.name {
                url = x.mobileUrl
                break
            }
        }
        let safariViewCOntroller = SFSafariViewController(url: url!)
        present(safariViewCOntroller, animated: true,completion: nil)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellTitle = tableView.cellForRow(at: indexPath)?.textLabel?.text!
        var gift = Gift(name: "", salePrice: 0, mobileUrl: URL(string: "http://google.com")!, image: "", longDescription: "")
        for x in arrayOfProducts {
                   if cellTitle == x.name {
                    gift = x
                       break
                   }
               }
        let alert = UIAlertController(title: gift.name, message: "\(gift.mobileUrl)" + "\n" + "\(gift.salePrice)" + "\n" + "\((gift.longDescription) ?? " ")", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK",style: .default,handler: nil)
        alert.addAction(ok)
        present(alert, animated: true)
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfProducts.count
    }
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        gimmeeBestBuy()
        
        //warning, clone project of changes before
        switch sender.selectedSegmentIndex {
        case 0:
            print("Name")
        case 1:
            var arrayOrganizeOfPrices: [Double] = []
            var newArrayOfProducts: [Gift] = []
            for gift in arrayOfProducts {
                arrayOrganizeOfPrices.append(gift.salePrice)
            }
            var highestPoint = arrayOrganizeOfPrices[0]
            var secondHighestPoint = arrayOrganizeOfPrices[0]
            var thirdHighestPoint = arrayOrganizeOfPrices[0]
            var fourthHighestPoint = arrayOrganizeOfPrices[0]
            var fifthHighestPoint = arrayOrganizeOfPrices[0]
            var sixthHighestPoint = arrayOrganizeOfPrices[0]
            var seventhHighestPoint = arrayOrganizeOfPrices[0]
            var eighthHighestPoint = arrayOrganizeOfPrices[0]
            var ninthHighestPoint = arrayOrganizeOfPrices[0]
            var lowestPoint = arrayOrganizeOfPrices[0]
            for x in arrayOrganizeOfPrices {
                if x > highestPoint {
                    highestPoint = x
                }
            }
            for l in arrayOrganizeOfPrices {
                if l < lowestPoint {
                    lowestPoint = l
                }
            }
            for y in arrayOrganizeOfPrices {
                if y <= highestPoint && y > secondHighestPoint {
                    secondHighestPoint = y
                }
            }
            
            for z in arrayOrganizeOfPrices {
                if z <= secondHighestPoint && z > thirdHighestPoint
                {
                    thirdHighestPoint = z
                }
            }
            
            for f in arrayOrganizeOfPrices {
                if f <= thirdHighestPoint && f > fourthHighestPoint {
                    fourthHighestPoint = f
                }
            }
            
            for g in arrayOrganizeOfPrices {
                if g <= fourthHighestPoint && g > fifthHighestPoint {
                    fifthHighestPoint = g
                }
            }
            for s in arrayOrganizeOfPrices {
                if s <= fifthHighestPoint && s > sixthHighestPoint {
                    sixthHighestPoint = s
                }
            }
            for v in arrayOrganizeOfPrices {
                if v <= sixthHighestPoint && v > seventhHighestPoint {
                    seventhHighestPoint = v
                }
            }
            for e in arrayOrganizeOfPrices {
                if e <= seventhHighestPoint && e > eighthHighestPoint {
                    eighthHighestPoint = e
                }
            }
            for n in arrayOrganizeOfPrices {
                if n <= eighthHighestPoint && n > ninthHighestPoint {
                    ninthHighestPoint = n
                }
            }
            for gift in arrayOfProducts {
            
            if gift.salePrice == highestPoint //&& gift.salePrice != secondHighestPoint
            {
                newArrayOfProducts.append(gift)
            }
            
            if gift.salePrice == secondHighestPoint && secondHighestPoint != highestPoint {
                newArrayOfProducts.append(gift)
            } else  {
                print("")
                }
                
            if gift.salePrice == thirdHighestPoint && thirdHighestPoint != secondHighestPoint && thirdHighestPoint != highestPoint{
                newArrayOfProducts.append(gift)
            } else {
                
                }
                if gift.salePrice == fourthHighestPoint && fourthHighestPoint != thirdHighestPoint && fourthHighestPoint != secondHighestPoint && fourthHighestPoint != highestPoint{
                newArrayOfProducts.append(gift)
            }
                if gift.salePrice == fifthHighestPoint && fifthHighestPoint != fourthHighestPoint && fifthHighestPoint != thirdHighestPoint && fifthHighestPoint != secondHighestPoint && fifthHighestPoint != highestPoint {
                newArrayOfProducts.append(gift)
            }
            if gift.salePrice == sixthHighestPoint && sixthHighestPoint != fifthHighestPoint && sixthHighestPoint != fourthHighestPoint && sixthHighestPoint != thirdHighestPoint && sixthHighestPoint != secondHighestPoint && sixthHighestPoint != highestPoint{
                newArrayOfProducts.append(gift)
            }
            if gift.salePrice == seventhHighestPoint && seventhHighestPoint != sixthHighestPoint && seventhHighestPoint !=  fifthHighestPoint && seventhHighestPoint != fourthHighestPoint && seventhHighestPoint != thirdHighestPoint && seventhHighestPoint != secondHighestPoint && seventhHighestPoint != highestPoint{
                newArrayOfProducts.append(gift)
            }
            if gift.salePrice == eighthHighestPoint && eighthHighestPoint != seventhHighestPoint && eighthHighestPoint != sixthHighestPoint && eighthHighestPoint != fifthHighestPoint && eighthHighestPoint != fourthHighestPoint && eighthHighestPoint != thirdHighestPoint && eighthHighestPoint != secondHighestPoint && eighthHighestPoint != highestPoint {
                newArrayOfProducts.append(gift)
            }
            if gift.salePrice == ninthHighestPoint && ninthHighestPoint != eighthHighestPoint && ninthHighestPoint != seventhHighestPoint && ninthHighestPoint != sixthHighestPoint && ninthHighestPoint != fifthHighestPoint && ninthHighestPoint != fourthHighestPoint && ninthHighestPoint != thirdHighestPoint && ninthHighestPoint != secondHighestPoint && ninthHighestPoint != highestPoint {
                newArrayOfProducts.append(gift)
            }
            if gift.salePrice == lowestPoint && lowestPoint < ninthHighestPoint {
                newArrayOfProducts.append(gift)
            }
                
            }
            arrayOfProducts = newArrayOfProducts
            resultTableView.reloadData()
            
        default:
            print("Default")
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if product >= 0 && product <= 9 {
            
        if let cell = resultTableView.dequeueReusableCell(withIdentifier: "cell") { //*//
            
            cell.textLabel?.text = arrayOfProducts[indexPath.row].name
            var url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png")
            if let image = arrayOfProducts[indexPath.row].image {
                url = URL(string: image)
            }
            print(url)
            cell.imageView?.image = UIImage(ciImage: CIImage(contentsOf: url!)!)
            cell.detailTextLabel?.text = "$" + String(arrayOfProducts[indexPath.row].salePrice) + "    " + "\(arrayOfProducts[indexPath.row].mobileUrl)"
            
            price = "\(arrayOfProducts[indexPath.row].salePrice)"
            
            product += 1
            return cell
        } else {
            return UITableViewCell()
            }
        }
        ///
            
            
            
        else if product == 10 {
            let cell = resultTableView.dequeueReusableCell(withIdentifier: "cell")
            cell?.textLabel?.text = "Ebay:"
            product += 1
            return cell!
        }else {
            if let cell = resultTableView.dequeueReusableCell(withIdentifier: "cell") {
                cell.textLabel?.text = arrayOfProducts[indexPath.row].name
                var url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png")
                if let image = arrayOfProducts[indexPath.row].image {
                    url = URL(string: image)
                }
//                print(url)
                cell.imageView?.image = UIImage(ciImage: CIImage(contentsOf: url!)!)
                cell.detailTextLabel?.text = "$" + String(arrayOfProducts[indexPath.row].salePrice) + "    " + "\(arrayOfProducts[indexPath.row].mobileUrl)"
                product += 1
                return cell
            } else {
                return UITableViewCell()
        }
        }
    }
    func addNewItem() {
        arrayOfAnswers.removeAll()
        resultTableView.reloadData()
        gimmeeBestBuy()
//        let alert = UIAlertController(title: "New Item", message: "enter your item name below", preferredStyle: .alert)
//        alert.addTextField { (TextField) in
//            TextField.placeholder = "Price"
//        }
//        alert.addTextField { (TextField2) in
//            TextField2.placeholder = "Name"
//        }
//        alert.addTextField { (TextField3) in
//        }
//        let OK = UIAlertAction(title: "Go", style: .destructive) { (OK) in
//            let item = Product(image: UIImage(), price: Double(alert.textFields![0].text!)!, name: alert.textFields![1].text!, url: alert.textFields![2].text!)
//            //            self.arrayOfProducts.append(item)
//            self.resultTableView.reloadData()
//        }
//        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
//        
//        alert.addAction(OK)
//        alert.addAction(cancel)
//        present(alert, animated: true, completion: nil)
    }
    
    func gimmeeBestBuy() {
        var smood = smoob
        var ans4 = answer4
        let randysHelper = Int.random(in: 1...3)
        print(randysHelper)
        switch randysHelper {
        case 1:
            ans4 = ""
        case 2:
            smood = ""
        default:
            print("Default")
        }
        var url = URL(string: "https://api.bestbuy.com/v1/products(search=ram)?format=json&pageSize=10&apiKey=GVfY17LDc7x2vt4lBya2D26z")
        var array : [String] = []
        if smood != "" {
            array = smoob.components(separatedBy: " ")
        }
        smood = "("
//        print(array)
        for x in array {
            if x != "" {
                smood += "search=\(x)&"
//                print(smood)
            }
        }
//        print(smood)
        smood += calculatePrice(answer3)
        if ans4 != "" {
            if let numb = Int(ans4) {
                smood += "departmentId=\(numb)&"
            } else {
                smood += "department=\(ans4)&"
            }
        }
        smood.removeLast()
        smood += ")"
        print(smood)
        let string = "https://api.bestbuy.com/v1/products\(smood)?format=json&pageSize=10&apiKey=GVfY17LDc7x2vt4lBya2D26z"
//        print(string)
        let str =   string.addingPercentEncoding(withAllowedCharacters:CharacterSet.urlQueryAllowed)
        url = URL(string: str!)
//        print(url?.absoluteString)
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            //            print(data)
            if let data = data {
                //                print(data as! NSData)
                do {
                    guard let product = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) else { return }
                    let dictionary = product as! NSDictionary
                    let myProducts = dictionary["products"] as! NSArray
//                    print(dictionary["products"])
                    for x in myProducts {
                        let x = x as! NSDictionary
                        let name = x["name"] as! String
                        let longdes = x["longDescription"] as? String
                        let salePrice = x["salePrice"] as! Double
                        let image = x["image"] as? String
                        let url = x["mobileUrl"] as! String
                        self.arrayOfProducts.append(Gift(name: name, salePrice: salePrice, mobileUrl: URL(string: url)!, image: image, longDescription: longdes))
                        
//                        print(name + " " + String(salePrice))
                    }
                    
                    DispatchQueue.main.async {
                        self.resultTableView.reloadData()
                    }
                } catch let err {
                    print("Error: \(err)")
                }
            } else {
                //                print("yuh oh")
            }
        }.resume()
    }
    func gimmeEbay() {
        var url = URL(string: "https://www.google.com")
        URLSession.shared.dataTask(with: url!) { (data, error, response) in
            
            if let data = data {
                
                do {
                    
                } catch let err {
                    print("Error: \(err)")
                }
            } else {
                //                print("yuh oh")
            }
        }.resume()
    }
    
    func calculatePrice(_ price : String) -> String {
        var string = ""
        let array = price.components(separatedBy: "-")
//        print(array)
        let more = array[0]
        string += "salePrice>\(more)&"
        let less = array[1]
        if less != "nada" {
            string += "salePrice<\(less)&"
        }
//        print(string)
        return string
    }
}
