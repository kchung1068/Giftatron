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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ResultsViewController
        nvc.friendName = friendName
        nvc.answer1 = answer1
        nvc.answer2 = answer2
        nvc.answer3 = answer3
        nvc.answer4 = answer4
    }
    

}
