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
    var arrayOfAnswers: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ResultsViewController
        nvc.friendName = friendName
        print(friendName)
        nvc.arrayOfAnswers = arrayOfAnswers

    }
    

}
