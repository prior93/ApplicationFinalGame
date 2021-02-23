//
//  GameViewController.swift
//  ApplicationFinal
//
//  Created by parashar.r.adhikary on 23/02/2021.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var firstDiceImageView: UIImageView!
    
    @IBOutlet weak var secondDiceImageView: UIImageView!
    
    @IBOutlet weak var playerOneWin: UILabel!
    
    @IBOutlet weak var playerTwoWin: UILabel!
    
    @IBOutlet weak var playerOneScore: UILabel!
    
    @IBOutlet weak var playerTwoScore: UILabel!
    
    var firstDiceScore = 0
    var SecondDiceScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func dealButtonTapped(_ sender: Any) {
        let firstDiceImage = Int.random(in: 1...6)
        let secondDiceImage = Int.random(in: 1...6)
        
        firstDiceImageView.image = UIImage(named: "Dice\(firstDiceImage)")
        secondDiceImageView.image = UIImage(named: "Dice\(secondDiceImage)")
        
        if firstDiceImage > secondDiceImage {
            
            firstDiceScore += 1
            playerOneScore.text = String(firstDiceScore)
            
            
            playerOneWin.text = "WINNER"
            playerOneWin.backgroundColor = .gray
            playerOneWin.textColor = .green
            
            playerTwoWin.text = "LOOSER"
            playerTwoWin.backgroundColor = .gray
            playerTwoWin.textColor = .red
            
        }
        
        else if secondDiceImage > firstDiceImage {
            
            SecondDiceScore += 1
            playerTwoScore.text = String(SecondDiceScore)
            
            playerOneWin.text = "LOOSER"
            playerOneWin.backgroundColor = .gray
            playerOneWin.textColor = .red
            
            playerTwoWin.text = "WINNER"
            playerTwoWin.backgroundColor = .gray
            playerTwoWin.textColor = .green
            
            
        }
        
        
        else {
            playerOneWin.text = "TIE"
            playerOneWin.textColor = .blue
            playerTwoWin.text = "TIE"
            playerTwoWin.textColor = .blue
            
        }
        
        
        
    }
    
    
    
    
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
}

// MARK:- CREDITS AND SOURCES

// - Accenture BootCamp Lecture
// - arkadijs.makarenko   https://github.com/archeym
// -  https://codewithchris.com
// - https://stackoverflow.com
// - https://developer.apple.com

