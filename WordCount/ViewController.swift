//
//  ViewController.swift
//  WordCount
//
//  Created by Dzung Nguyen on 9/8/14.
//  Copyright (c) 2014 Dzung Nguyen. All rights reserved.
//

import UIKit

class ViewController: GenericVC {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //read
        let path = NSBundle.mainBundle().pathForResource("news", ofType: "txt")
        var possibleContent = String.stringWithContentsOfFile(path!, encoding: NSUTF8StringEncoding, error: nil)
        
        //load to string
        if let content = possibleContent {
            var arrayOfText = content.componentsSeparatedByString(" ")
            
//            Test the array
//            for text in arrayOfText {
//                self.inRa(text)
//            }
            
        //cannot count the occurrence of each word yet.
        var occurrence = 0
            for word in arrayOfText {
                if word == "IS" {
                    
                occurrence = occurrence + 1
                }
            }
        self.inRa("\nThat word appears \(occurrence) times")
            
        }
    }
}

