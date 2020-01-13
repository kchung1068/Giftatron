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
    @IBOutlet weak var eighteenFiftyOutlet: UIButton!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        zeroThreeOutlet.frame.size = CGSize(width: 197, height: 137)
        threeTenOutlet.frame.size = CGSize(width: 197, height: 137)
        tenEighteenOutlet.frame.size = CGSize(width: 197, height: 137)
        eighteenFiftyOutlet.frame.size = CGSize(width: 197, height: 137)
        
        segue.alpha = 0
    }
    
    @IBAction func zeroThree(_ sender: Any) {
        answer2 = "0-3"
        segue.alpha = 1
        zeroThreeOutlet.setBackgroundImage((UIImage(named: "Yellow Circle")), for: .normal)
        zeroThreeOutlet.setTitleColor(.red, for: .normal)
        threeTenOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        threeTenOutlet.setTitleColor(.black, for: .normal)
        tenEighteenOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        tenEighteenOutlet.setTitleColor(.black, for: .normal)
        eighteenFiftyOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        eighteenFiftyOutlet.setTitleColor(.black, for: .normal)
    }
    
    @IBAction func threeTen(_ sender: Any) {
        answer2 = "3-10"
        segue.alpha = 1
        threeTenOutlet.setBackgroundImage(UIImage(named: "Yellow Circle"), for: .normal)
        threeTenOutlet.setTitleColor(.red, for: .normal)
        zeroThreeOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        zeroThreeOutlet.setTitleColor(.black, for: .normal)
        tenEighteenOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        tenEighteenOutlet.setTitleColor(.black, for: .normal)
        eighteenFiftyOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        eighteenFiftyOutlet.setTitleColor(.black, for: .normal)
        
    }
    
    @IBAction func tenEighteen(_ sender: Any) {
        answer2 = "10-18"
        segue.alpha = 1
        tenEighteenOutlet.setBackgroundImage(UIImage(named: "Yellow Circle"), for: .normal)
        tenEighteenOutlet.setTitleColor(.systemRed, for: .normal)
        zeroThreeOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        zeroThreeOutlet.setTitleColor(.black, for: .normal)
        threeTenOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        threeTenOutlet.setTitleColor(.black, for: .normal)
        eighteenFiftyOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        eighteenFiftyOutlet.setTitleColor(.black, for: .normal)
    }
    
    @IBAction func eighteenFifty(_ sender: Any) {
        answer2 = "18-50"
        segue.alpha = 1
        eighteenFiftyOutlet.setBackgroundImage(UIImage(named: "Yellow Circle"), for: .normal)
        eighteenFiftyOutlet.setTitleColor(.red, for: .normal)
        tenEighteenOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        tenEighteenOutlet.setTitleColor(.black, for: .normal)
        threeTenOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        threeTenOutlet.setTitleColor(.black, for: .normal)
        zeroThreeOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        zeroThreeOutlet.setTitleColor(.black, for: .normal)
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
