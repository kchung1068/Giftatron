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
    var answer4 = "N/A"
    var smoob = ""
    var arrayOfAnswers: [String] = []
    @IBOutlet weak var segue: UIButton!
    
    @IBOutlet weak var beautyOutlet: UIButton!
    @IBOutlet weak var electronicOutlet: UIButton!
    @IBOutlet weak var musicOutlet: UIButton!
    @IBOutlet weak var gamingOutlet: UIButton!
    @IBOutlet weak var englishOutlet: UIButton!
    @IBOutlet weak var blackViewOne: UIView!
    @IBOutlet weak var blackViewTwo: UIView!
    @IBOutlet weak var blackViewThree: UIView!
    @IBOutlet weak var blackViewFour: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segue.alpha = 1
        beautyOutlet.frame.size = CGSize(width: 307, height: 137)
        electronicOutlet.frame.size = CGSize(width: 400, height: 137)
        musicOutlet.frame.size = CGSize(width: 292, height: 137)
        gamingOutlet.frame.size = CGSize(width: 307, height: 137)
        englishOutlet.frame.size = CGSize(width: 307, height: 137)
    }
    
    @IBAction func beauty(_ sender: Any) {
        segue.alpha = 1
        answer4 = "N/A"
        beautyOutlet.setBackgroundImage(UIImage(named: "Cyan Circle"), for: .normal)
        beautyOutlet.setTitleColor(.orange, for: .normal)
        
        electronicOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        electronicOutlet.setTitleColor(.black, for: .normal)
        musicOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        musicOutlet.setTitleColor(.black, for: .normal)
        gamingOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        gamingOutlet.setTitleColor(.black, for: .normal)
        englishOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        englishOutlet.setTitleColor(.black, for: .normal)
        segue.titleLabel?.text = "Go On"
    }
    
    @IBAction func electronic(_ sender: Any) {
        segue.alpha = 1
//        blackViewOne.alpha = 1
//        blackViewTwo.alpha = 1
//               blackViewThree.alpha = 1
//               blackViewFour.alpha = 1
        answer4 = "COMPUTERS"
        beautyOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        beautyOutlet.setTitleColor(.black, for: .normal)
        electronicOutlet.setBackgroundImage(UIImage(named: "Cyan Circle"), for: .normal)
        electronicOutlet.setTitleColor(.orange, for: .normal)
        musicOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        musicOutlet.setTitleColor(.black, for: .normal)
        gamingOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        gamingOutlet.setTitleColor(.black, for: .normal)
        englishOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        englishOutlet.setTitleColor(.black, for: .normal)
        segue.titleLabel?.text = "Go On"
    }
    
    @IBAction func music(_ sender: Any) {
        segue.alpha = 1
        answer4 = ["8", "AUDIO"].randomElement()!
        beautyOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
               beautyOutlet.setTitleColor(.black, for: .normal)
        electronicOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
              electronicOutlet.setTitleColor(.black, for: .normal)
        musicOutlet.setBackgroundImage(UIImage(named: "Cyan Circle"), for: .normal)
        musicOutlet.setTitleColor(.orange, for: .normal)
        gamingOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        gamingOutlet.setTitleColor(.black, for: .normal)
        englishOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        englishOutlet.setTitleColor(.black, for: .normal)
        segue.titleLabel?.text = "Go On"
    }
    @IBAction func gaming(_ sender: Any) {
        segue.alpha = 1
        answer4 = "INTERACTIVE SOFTWARE"
        beautyOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
                      beautyOutlet.setTitleColor(.black, for: .normal)
               electronicOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
                     electronicOutlet.setTitleColor(.black, for: .normal)
        gamingOutlet.setBackgroundImage(UIImage(named: "Cyan Circle"), for: .normal)
        gamingOutlet.setTitleColor(.orange, for: .normal)
        musicOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
               musicOutlet.setTitleColor(.black, for: .normal)
        englishOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
               englishOutlet.setTitleColor(.black, for: .normal)
        segue.titleLabel?.text = "Go On"
    }
    
    @IBAction func english(_ sender: Any) {
        answer4 = "N/A"
        segue.alpha = 1
        beautyOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
                            beautyOutlet.setTitleColor(.black, for: .normal)
                     electronicOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
                           electronicOutlet.setTitleColor(.black, for: .normal)
        musicOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
                      musicOutlet.setTitleColor(.black, for: .normal)
        gamingOutlet.setBackgroundImage(UIImage(named: "Gray Circle"), for: .normal)
        gamingOutlet.setTitleColor(.black, for: .normal)
        englishOutlet.setBackgroundImage(UIImage(named: "Cyan Circle"), for: .normal)
        englishOutlet.setTitleColor(.orange, for: .normal)
        segue.titleLabel?.text = "Go On"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ResultsViewController
        nvc.answer1 = answer1
        nvc.answer2 = answer2
        nvc.answer3 = answer3
        nvc.answer4 = answer4
        nvc.friendName = friendName
        nvc.smoob = smoob
        
        arrayOfAnswers.append(answer1)
        arrayOfAnswers.append(answer2)
        arrayOfAnswers.append(answer3)
        arrayOfAnswers.append(answer4)
//         print(friendName)
//                      print(answer1)
//                      print(answer2)
//               print(answer3)
//        print(answer4)
//        print(arrayOfAnswers)
        nvc.arrayOfAnswers = arrayOfAnswers
    }
    

}
