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
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ThirdQuestionViewController
        nvc.friendName = friendName
        print(friendName)
        nvc.answer1 = answer1
        nvc.answer2 = answer2
    }
    

}
