//
//  firstQuestionViewController.swift
//  Giftatron
//
//  Created by Michael Linker on 12/13/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class firstQuestionViewController: UIViewController {
    var friendName = ""
    var answer1 = ""
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondQuestionViewController
        print(friendName)
        nvc.friendName = friendName
        nvc.answer1 = answer1
        
    }
    

 }
