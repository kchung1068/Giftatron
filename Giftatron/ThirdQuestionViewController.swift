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
    var arrayOfAnswers: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

   

     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! FourthQuestionViewController
        nvc.friendName = friendName
        nvc.answer1 = answer1
        nvc.answer2 = answer2
        nvc.answer3 = answer3
        print(friendName)
               print(answer1)
        print(answer2)
        print(answer3)
        
        
        nvc.arrayOfAnswers = arrayOfAnswers

    }
    

}
