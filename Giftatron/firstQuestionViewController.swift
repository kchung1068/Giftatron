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
    
    @IBOutlet weak var maleOutlet: UIButton!
    
    @IBOutlet weak var otherOutlet: UIButton!
    @IBOutlet weak var segue: UIButton!
    @IBOutlet weak var femaleOutlet: UIButton!
    
    var arrayOfAnswers: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        segue.alpha = 0
      
    }
    
    @IBAction func maleButton(_ sender: Any) {
        segue.alpha = 1
        answer1 = "male"
        
        maleOutlet.setTitleColor(.yellow, for: .normal)
        maleOutlet.setBackgroundImage(UIImage(named: "Red Circle"), for: .normal)
        femaleOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        femaleOutlet.setTitleColor(.black, for: .normal)
        otherOutlet.setTitleColor(.black, for: .normal)
        otherOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        
    }
    
    @IBAction func femaleButton(_ sender: Any) { segue.alpha = 1
        answer1 = "female"
        maleOutlet.setTitleColor(.black, for: .normal)
        maleOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        femaleOutlet.setBackgroundImage(UIImage(named: "Red Circle"), for: .normal)
        femaleOutlet.setTitleColor(.yellow, for: .normal)
        otherOutlet.setTitleColor(.black, for: .normal)
        otherOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        
    }
    
    @IBAction func otherButton(_ sender: Any) {
        segue.alpha = 1
        answer1 = "other"
        maleOutlet.setTitleColor(.black, for: .normal)
        maleOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        
        femaleOutlet.setTitleColor(.black, for: .normal)
        femaleOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        
        otherOutlet.setTitleColor(.yellow, for: .normal)
        otherOutlet.setBackgroundImage(UIImage(named: "Red Circle"), for: .normal)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondQuestionViewController
        print(friendName)
        nvc.friendName = friendName
        nvc.arrayOfAnswers = arrayOfAnswers
        
        print(friendName)
        print(answer1)
        
    }
    

 }
