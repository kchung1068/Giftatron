//
//  ThirdQuestionViewController.swift
//  Giftatron
//
//  Created by Michael Linker on 12/13/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ThirdQuestionViewController: UIViewController {
    var friendName = ""
    var answer1 = ""
       var answer2 = ""
    var answer3 = ""
    var arrayOfAnswers: [String] = []
    
    @IBOutlet weak var zeroTenOutlet: UIButton!
    @IBOutlet weak var tenFiftyOutlet: UIButton!
    @IBOutlet weak var fiftyHundredOutlet: UIButton!
    @IBOutlet weak var hundredPlusOutlet: UIButton!
    
    
    
    @IBOutlet weak var segue: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segue.alpha = 0
        
    }
    
    @IBAction func zeroTen(_ sender: Any) {
        segue.alpha = 1
        answer3 = "$0-10"
    }
    
    @IBAction func tenFifty(_ sender: Any) {
        segue.alpha = 1
        answer3 = "$10-50"
    }
    
    @IBAction func fiftyHundred(_ sender: Any) {
        segue.alpha = 1
        answer3 = "$50-100"
    }
    
    @IBAction func hundredPlus(_ sender: Any) {
        segue.alpha = 1
        answer3 = "$100+"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! FourthQuestionViewController
        nvc.friendName = friendName
    nvc.answer1 = answer1
    nvc.answer2 = answer2
        nvc.answer3 = answer3
        print(friendName)
               
        
        
        nvc.arrayOfAnswers = arrayOfAnswers

    }
    

}
