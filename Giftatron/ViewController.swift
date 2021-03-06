//
//  ViewController.swift
//  Giftatron
//
//  Created by Kyle C on 12/4/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

// sudo gem install cocoapods
//pod setup
// cd projects
// pod init
//pico podfile
// pod install
import UIKit
import SafariServices
class ViewController: UIViewController {
    
    @IBOutlet weak var gifttronLabel: UILabel!
    
    let arrayOfProducts: [Product] = []
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var giftTextField: UITextField!
    
    var friendName = ""
    var gift = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gifttronLabel.textColor = .green
    }
    
    @IBAction func totheQuiz(_ sender: Any) {
        hollyHello()
        }
    
    func hollyHello() {
                if let friendName = textField.text, let gift = giftTextField.text {
                    self.friendName = friendName
                    
                    let giftArray = Array(gift)
                    var newArray: [String] = []
                    for x in giftArray {
                        if x != " " {
                            newArray.append("\(x)")
                        }else {
                            newArray.append("+")
                        }
                    }
                    var giftSearch = ""
                    
                    for x in newArray {
                        giftSearch += x
                    }
                    self.gift = gift
        //            let url = URL(string: "http://www.amazon.com/s?k=\(giftSearch)")        //            let vc = SFSafariViewController(url: url)
//            present(vc, animated: true, completion: nil)
//           print(friendName)
//            print(gift)

        
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! firstQuestionViewController
        hollyHello()
        
        nvc.smoob = gift
        nvc.friendName = friendName
        
    }

}
