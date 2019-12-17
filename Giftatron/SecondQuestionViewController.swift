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
    
    @IBOutlet weak var segue: UIButton!
    
    @IBOutlet weak var zeroThreeOutlet: UIButton!
    
    var arrayOfAnswers: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        segue.alpha = 0
    }
    
    @IBAction func zeroThree(_ sender: Any) {
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
