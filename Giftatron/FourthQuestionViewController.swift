//
//  FourthQuestionViewController.swift
//  Giftatron
//
//  Created by Michael Linker on 12/13/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class FourthQuestionViewController: UIViewController {
    var friendName = ""
    var answer1 = ""
       var answer2 = ""
    var answer3 = ""
    var answer4 = ""
    var arrayOfAnswers: [String] = []
    @IBOutlet weak var segue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segue.alpha = 0
        
    }
    
    @IBAction func beauty(_ sender: Any) { segue.alpha = 1
        answer4 = "Beauty"
    }
    
    @IBAction func electronic(_ sender: Any) {
        segue.alpha = 1
        answer4 = "Electronics"
    }
    
    @IBAction func music(_ sender: Any) {
        segue.alpha = 1
        answer4 = "Music"
        
    }
    @IBAction func gaming(_ sender: Any) {
        segue.alpha = 1
        answer4 = "Gaming"
    }
    
    @IBAction func english(_ sender: Any) {
        answer4 = "English"
        segue.alpha = 1
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ResultsViewController
        nvc.answer1 = answer1
        nvc.answer2 = answer2
        nvc.answer3 = answer3
        nvc.answer4 = answer4
        nvc.friendName = friendName
        
        arrayOfAnswers.append(answer1)
        arrayOfAnswers.append(answer2)
        arrayOfAnswers.append(answer3)
        arrayOfAnswers.append(answer4)
        print(friendName)
        nvc.arrayOfAnswers = arrayOfAnswers
    }
    

}
