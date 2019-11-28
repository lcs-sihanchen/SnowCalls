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
        
        for piece in textPieces {
            
            print(piece)
            
            for character in piece {
                
            }
            
            
            
            
            
            
            
        }
        
    }
    
    
    
    
    
}

