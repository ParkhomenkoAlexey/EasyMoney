//
//  ViewController.swift
//  EasyMoney
//
//  Created by Алексей Пархоменко on 30.03.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var cpuLabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    
    var buttonNumber: Int = 1
    var randomNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton.imageView?.contentMode = .scaleAspectFit
        secondButton.imageView?.contentMode = .scaleAspectFit
        thirdButton.imageView?.contentMode = .scaleAspectFit
    }
    
    @IBAction func repeatTapped(_ sender: Any) {
        randomNumber = [1,2,3].randomElement()!
        firstButton.setImage(#imageLiteral(resourceName: "straw"), for: .normal)
        secondButton.setImage(#imageLiteral(resourceName: "straw"), for: .normal)
        thirdButton.setImage(#imageLiteral(resourceName: "straw"), for: .normal)
    }
    
    @IBAction func firstButtonTapped(_ sender: Any) {
        buttonNumber = 1
        changeImage()
        addScore(buttonNumber: buttonNumber)
    }
    @IBAction func secondButtonTapped(_ sender: Any) {
        buttonNumber = 2
        changeImage()
        addScore(buttonNumber: buttonNumber)
    }
    
    @IBAction func thirdButtonTapped(_ sender: Any) {
        buttonNumber = 3
        changeImage()
        addScore(buttonNumber: buttonNumber)
    }
    
    func addScore(buttonNumber: Int) {
        if buttonNumber == randomNumber {
            playerScore += 1
            playerLabel.text = "\(playerScore)"
        } else {
            cpuScore += 1
            cpuLabel.text = "\(cpuScore)"
        }
    }
    
    func changeImage() {
        switch randomNumber {
        case 1:
            firstButton.setImage(#imageLiteral(resourceName: "euro"), for: .normal)
        case 2:
            secondButton.setImage(#imageLiteral(resourceName: "euro"), for: .normal)
        case 3:
            thirdButton.setImage(#imageLiteral(resourceName: "euro"), for: .normal)
        default:
            break
        }
    }
    


}

