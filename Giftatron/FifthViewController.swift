//
//  FifthViewController.swift
//  Giftatron
//
//  Created by Kyle C on 3/11/20.
//  Copyright © 2020 John Hersey High School. All rights reserved.

import UIKit

class FifthViewController: UIViewController {
    
    var friendName = ""
       var answer1 = ""
          var answer2 = ""
       var answer3 = ""
       var answer4 = ""
    var answer5 = ""
    
    var smoob = ""
    var arrayOfAnswers: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func birthday(_ sender: Any) {
        
    }
    
    @IBAction func banquet(_ sender: Any) {
    }
    @IBAction func graduation(_ sender: Any) {
    }
    @IBAction func holiday(_ sender: Any) {
    }
    
    @IBAction func wedding(_ sender: Any) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ResultsViewController
        nvc.friendName = friendName
        nvc.answer1 = answer1
        nvc.answer2 = answer2
        nvc.answer3 = answer3
        nvc.answer4 = answer4
        nvc.answer5 = answer5
        nvc.smoob = smoob
       
        
        arrayOfAnswers.append(answer1)
        arrayOfAnswers.append(answer2)
        arrayOfAnswers.append(answer3)
        arrayOfAnswers.append(answer4)
        arrayOfAnswers.append(answer5)
         nvc.arrayOfAnswers = arrayOfAnswers
    }

   

}
