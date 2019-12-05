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
    override func viewDidLoad() {
        super.viewDidLoad()
        gifttronLabel.textColor = .green
      
    }
    func getProducts(url: String) {
        let url = URL(string: url)!
                URLSession.shared.dataTask(with: url) { (data, response, error) in
                    if let data = data {
                        let jsonObject = try? JSONSerialization.jsonObject(with:data,options:JSONSerialization.ReadingOptions.allowFragments) as? NSArray
                        for item in jsonObject! {
                            
                        }
                    }
        }
        
    }


}

