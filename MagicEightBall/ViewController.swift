//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Marissa Vang on 1/21/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
//    @IBOutlet weak var answerLabel: UILabel!
//    @IBOutlet weak var shakeButton: UIButton!
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
        
        print("Shake it like a polaroid picture!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
          guard motion == .motionShake else { return }

          generateAnswer()
      }
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<answers.count)

        answerLabel.text = answers[randomIndex]
    }

}

