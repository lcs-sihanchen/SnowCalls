//
//  ViewController.swift
//  SnowCalls
//
//  Created by Chen, Sihan on 2019-11-27.
//  Copyright © 2019 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputText: UITextView!
    
    
    @IBOutlet weak var outputText: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    @IBAction func convertNumbers(_ sender: Any) {
        
        guard let inputTextAsString = inputText.text, inputText.text != "" else {
            outputText.text = "Please enter phone numbers to convert."
            return
        }
        
        let textPieces = inputTextAsString.split(separator: "\n")
        let textforTwo = "ABC"
        let textforThree = "DEF"
        let textforFour = "GHI"
        let textforFive = "JKL"
        let textforSix = "MNO"
        let textforSeven = "PQRS"
        let textforEight = "TUV"
        let textforNine = "WXYZ"
        var convertedMessage = ""
        var realMessage = ""
        
        for piece in textPieces {
            
            print(piece)
            let pieceAsString = String(piece)
            
            
            for character in piece {
                var wordCount = pieceAsString.count
                if pieceAsString.contains("-") {
                    wordCount -= 1
                }
                
                let characterAsString = String(character)
                
                if convertedMessage.count == 3 {
                    convertedMessage += "-"
                }
                else if convertedMessage.count == 7 {
                    convertedMessage += "-"
                }
                if wordCount < 10 {
                    convertedMessage += ""
                }
                else if convertedMessage.count >= 12 {
                    convertedMessage += ""
                }
                else if textforTwo.contains(characterAsString){
                    convertedMessage += "2"
                }
                else if textforThree.contains(characterAsString){
                    convertedMessage += "3"
                }
                else if textforFour.contains(characterAsString){
                    convertedMessage += "4"
                }
                else if textforFive.contains(characterAsString){
                    convertedMessage += "5"
                }
                else if textforSix.contains(characterAsString){
                    convertedMessage += "6"
                }
                else if textforSeven.contains(characterAsString){
                    convertedMessage += "7"
                }
                else if textforEight.contains(characterAsString){
                    convertedMessage += "8"
                }
                else if textforNine.contains(characterAsString){
                    convertedMessage += "9"
                }
                else if characterAsString == "1" {
                    convertedMessage += "1"
                }
                else if characterAsString == "2" {
                    convertedMessage += "2"
                }
                else if characterAsString == "3" {
                    convertedMessage += "3"
                }
                else if characterAsString == "4" {
                    convertedMessage += "4"
                }
                else if characterAsString == "5" {
                    convertedMessage += "5"
                }
                else if characterAsString == "6" {
                    convertedMessage += "6"
                }
                else if characterAsString == "7" {
                    convertedMessage += "7"
                }
                else if characterAsString == "8" {
                    convertedMessage += "8"
                }
                else if characterAsString == "9" {
                    convertedMessage += "9"
                }
                else if characterAsString == "0" {
                    convertedMessage += "0"
                }
                    
                else {
                    convertedMessage += ""
                }
                
                
            }
            
        if convertedMessage == "" {
             realMessage += ""
         } else {
              realMessage += convertedMessage + "\n"
         }
        
         convertedMessage = ""
        
    }
    
    
        outputText.text = realMessage
    
    
}



}
