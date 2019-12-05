//
//  ViewController.swift
//  Giftatron
//
//  Created by Kyle C on 12/4/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gifttronLabel: UILabel!
    let arrayOfProducts: [Product] = []
    @IBOutlet weak var textField: UITextField!
    
    var friendName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gifttronLabel.textColor = .green
      
    }
    @IBAction func totheQuiz(_ sender: Any) {
        if let friendName = textField.text {
            self.friendName = friendName
            print(friendName)
        }
     
    }
    
    public func getProducts(url: String) {
           let url = URL(string: url)!
                   URLSession.shared.dataTask(with: url) { (data, response, error) in
                       if let data = data {
                           let jsonObject = try? JSONSerialization.jsonObject(with:data,options:JSONSerialization.ReadingOptions.allowFragments)
                       }
           }

}

}
