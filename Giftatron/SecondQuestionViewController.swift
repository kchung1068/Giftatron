//
//  SecondQuestionViewController.swift
//  Giftatron
//
//  Created by Michael Linker on 12/13/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class SecondQuestionViewController: UIViewController {
    var friendName = ""
    var answer1 = ""
    var answer2 = ""
    var arrayOfAnswers: [String] = []

    @IBOutlet weak var segue: UIButton!
    
    @IBOutlet weak var zeroThreeOutlet: UIButton!
    @IBOutlet weak var threeTenOutlet: UIButton!
    @IBOutlet weak var tenEighteenOutlet: UIButton!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        segue.alpha = 0
    }
    
    @IBAction func zeroThree(_ sender: Any) {
        answer2 = "0-3"
        segue.alpha = 1
    }
    
    @IBAction func threeTen(_ sender: Any) {
        answer2 = "3-10"
        segue.alpha = 1
    }
    
    @IBAction func tenEighteen(_ sender: Any) {
        answer2 = "10-18"
        segue.alpha = 1
    }
    
    @IBAction func eighteenFifty(_ sender: Any) {
        answer2 = "18-50"
        segue.alpha = 1
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ThirdQuestionViewController
        nvc.friendName = friendName
        nvc.answer1 = answer1
        nvc.answer2 = answer2
        print(friendName)
        print(answer1)
        print(answer2)
        nvc.arrayOfAnswers = arrayOfAnswers
        
    }
    

}
