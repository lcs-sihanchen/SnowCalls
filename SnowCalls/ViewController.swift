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
        let textforTwo = "ABCabc"
        let textforThree = "DEFdef"
        let textforFour = "GHIghi"
        let textforFive = "JKLjkl"
        let textforSix = "MNOmno"
        let textforSeven = "PQRSpqrs"
        let textforEight = "TUVtuv"
        let textforNine = "WXYZwxyz"
        var convertedMessage = ""
        
        
        for piece in textPieces {
            
            print(piece)
            
            for character in piece {
                
                let characterAsString = String(character)
                
                if convertedMessage.count == 11 {
                    convertedMessage += ""
                }
                else if convertedMessage.count == 3 {
                    convertedMessage += "-"
                }
                else  if convertedMessage.count == 7 {
                    convertedMessage += "-"
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
                else {
                    convertedMessage += ""
                }
                
                
                
                
                
                
                //                switch characterAsString {
                //                case textforTwo.contains(characterAsString):
                //                    convertedMessage += "2"
                //                case textforThree:
                //                    convertedMessage += "3"
                //                case textforFour:
                //                    convertedMessage += "4"
                //                case textforFive:
                //                    convertedMessage += "5"
                //                case textforSix:
                //                    convertedMessage += "6"
                //                case textforSeven:
                //                    convertedMessage += "7"
                //                case textforEight:
                //                    convertedMessage += "8"
                //                case textforNine:
                //                    convertedMessage += "9"
                //                default:
                //                    convertedMessage += ""
                //                }
                
            }
            
            
            
            
            
        }
        
        
        
        
        outputText.text = convertedMessage
    }
    
    
    
    
    
}


