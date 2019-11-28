//
//  ViewController.swift
//  SnowCalls
//
//  Created by Chen, Sihan on 2019-11-27.
//  Copyright © 2019 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Prperties
    @IBOutlet weak var inputText: UITextView!
    
    
    @IBOutlet weak var outputText: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    @IBAction func convertNumbers(_ sender: Any) {
        
        // Make sure the text view is not empty
        guard let inputTextAsString = inputText.text, inputText.text != "" else {
            outputText.text = "Please enter phone numbers to convert."
            return
        }
        
        // Used for converting, see if it contains the characters in the input
        let textPieces = inputTextAsString.split(separator: "\n")
        let textforTwo = "ABC"
        let textforThree = "DEF"
        let textforFour = "GHI"
        let textforFive = "JKL"
        let textforSix = "MNO"
        let textforSeven = "PQRS"
        let textforEight = "TUV"
        let textforNine = "WXYZ"
        
        // Run multiple times, check for output
        var convertedMessage = ""
        
        // Final output initial value
        var realMessage = ""
        
        // Start of the loop for pieces
        for piece in textPieces {
            
            print(piece)
            
            // Declare a string constants for pieces that's used for conditions later on
            let pieceAsString = String(piece)
            
            // Start of the loop for characters
            for character in piece {
                
                // Declare a string constants for characters that's used for conditions later on.
                let characterAsString = String(character)
                
                // If the string has less than 10 characters besides dashes, there's no output.
                var wordCount = pieceAsString.count
                if pieceAsString.contains("-") {
                    wordCount -= 1
                }
                
                // If the first or second branch is true, the rest will not run. The code below is showing the actual converting process.
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
                  // If it's something other than numbers and letters, ignore.
                else {
                    convertedMessage += ""
                }
                // When the output has 3 characters, add a dash.
                if convertedMessage.count == 3 {
                    convertedMessage += "-"
                }
                // When the output has 7 characters, add a dash.
                else if convertedMessage.count == 7 {
                    convertedMessage += "-"
                }
            }
            // If the final message is less than 12 digits, it's not valid. If it's empty, it will not skip to the next line.
            if convertedMessage == "" || convertedMessage.count < 12 {
                realMessage += ""
            } else {
                realMessage += convertedMessage + "\n"
            }
            // Reset the value because it will run 3 times.
            convertedMessage = ""
            
        }
        
        // Final Output
        // RealMessage is outside of the loop therefore it can collect each output and combine them.
        outputText.text = realMessage
        
        
    }
    
    
    
}
