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
    var answer1 = ""
       var answer2 = ""
    var answer3 = ""
    var smoob = ""
    var arrayOfAnswers: [String] = []
    
    @IBOutlet weak var zeroTenOutlet: UIButton!
    @IBOutlet weak var tenFiftyOutlet: UIButton!
    @IBOutlet weak var fiftyHundredOutlet: UIButton!
    @IBOutlet weak var hundredPlusOutlet: UIButton!
    
    
    
    @IBOutlet weak var segue: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zeroTenOutlet.frame.size = CGSize(width: 197, height: 137)
        tenFiftyOutlet.frame.size = CGSize(width: 197, height: 137)
        fiftyHundredOutlet.frame.size = CGSize(width: 197, height: 137)
        hundredPlusOutlet.frame.size = CGSize(width: 197, height: 137)
        segue.alpha = 0
        
    }
    
    @IBAction func zeroTen(_ sender: Any) {
        segue.alpha = 1
        answer3 = "0-10"
        zeroTenOutlet.setTitleColor(.green, for: .normal)
        zeroTenOutlet.setBackgroundImage(UIImage(named: "Orange Circle"), for: .normal)
        tenFiftyOutlet.setTitleColor(.black, for: .normal)
        tenFiftyOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        fiftyHundredOutlet.setTitleColor(.black, for: .normal)
        fiftyHundredOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        hundredPlusOutlet.setTitleColor(.black, for: .normal)
        hundredPlusOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        
    }
    
    @IBAction func tenFifty(_ sender: Any) {
        segue.alpha = 1
        answer3 = "10-50"
        zeroTenOutlet.setTitleColor(.black, for: .normal)
        zeroTenOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        tenFiftyOutlet.setTitleColor(.green, for: .normal)
        tenFiftyOutlet.setBackgroundImage(UIImage(named: "Orange Circle"), for: .normal)
        fiftyHundredOutlet.setTitleColor(.black, for: .normal)
        fiftyHundredOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        hundredPlusOutlet.setTitleColor(.black, for: .normal)
        hundredPlusOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
    }
    
    @IBAction func fiftyHundred(_ sender: Any) {
        segue.alpha = 1
        answer3 = "50-100"
        zeroTenOutlet.setTitleColor(.black, for: .normal)
               zeroTenOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
               tenFiftyOutlet.setTitleColor(.black, for: .normal)
               tenFiftyOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        fiftyHundredOutlet.setTitleColor(.green, for: .normal)
        fiftyHundredOutlet.setBackgroundImage(UIImage(named: "Orange Circle"), for: .normal)
        hundredPlusOutlet.setTitleColor(.black, for: .normal)
               hundredPlusOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
    }
    
    @IBAction func hundredPlus(_ sender: Any) {
        segue.alpha = 1
        zeroTenOutlet.setTitleColor(.black, for: .normal)
        zeroTenOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        tenFiftyOutlet.setTitleColor(.black, for: .normal)
            tenFiftyOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
               fiftyHundredOutlet.setTitleColor(.black, for: .normal)
               fiftyHundredOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        answer3 = "100-nada"
        hundredPlusOutlet.setTitleColor(.green, for: .normal)
        hundredPlusOutlet.setBackgroundImage(UIImage(named: "Orange Circle"), for: .normal)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! FourthQuestionViewController
        nvc.friendName = friendName
    nvc.answer1 = answer1
    nvc.answer2 = answer2
        nvc.answer3 = answer3
        nvc.smoob = smoob
//        print(friendName)
//               print(answer1)
//               print(answer2)
//        print(answer3)
        
        
        nvc.arrayOfAnswers = arrayOfAnswers

    }
    

}
