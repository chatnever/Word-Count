//
//  GenericVC.swift
//  WordCount
//
//  Created by Dzung Nguyen on 9/8/14.
//  Copyright (c) 2014 Dzung Nguyen. All rights reserved.
//

import UIKit

class GenericVC: UIViewController {
    
    var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView = UITextView(frame: self.view.frame)
        self.textView.backgroundColor = UIColor.blackColor()
        self.textView.textColor = UIColor.whiteColor()
        self.textView.font = UIFont(name: "Courier", size: 18)
        self.view.addSubview(self.textView)
    }
    
    func inRa(line: String) {
        var text = self.textView.text!
        text += "\(line)\n"
        self.textView.text = text
        
        
    }
}