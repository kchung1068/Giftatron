//
//  ConfirmViewController.swift
//  Giftatron
//
//  Created by Kyle Chung on 4/28/20.
//  Copyright © 2020 John Hersey High School. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {
    
    var friendName = ""
    var answer1 = ""
    var answer2 = ""
    var answer3 = ""
    var answer4 = ""
    var answer5 = ""
    var smoob = ""
    var arrayOfAnswers: [String] = []
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var genderLabel: UILabel!
    
    @IBOutlet var ageLabel: UILabel!
    
    @IBOutlet var moneyLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let friend = Person(name: friendName, age: answer2, gender: answer1, money: answer3, hobby: answer4)
        nameLabel.text = friend.name
        genderLabel.text = friend.gender
        ageLabel.text = friend.age
        hobbyLabel.text = friend.hobby
        moneyLabel.text = friend.money
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Results" {
            var nvc = segue.destination as! ResultsViewController
            nvc.friendName = friendName
            nvc.answer1 = answer1
            nvc.answer2 = answer2
            nvc.answer3 = answer3
            nvc.answer4 = answer4
            nvc.answer5 = answer5
            nvc.smoob = smoob
            nvc.arrayOfAnswers = arrayOfAnswers
        } else
        {
            print("Back")
            
        }
        
        
    }
   

}
