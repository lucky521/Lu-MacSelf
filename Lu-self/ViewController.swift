//
//  ViewController.swift
//  Lu-self
//
//  Created by Lucky on 16/7/20.
//  Copyright © 2016年 Lucky. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var my_bar: NSSliderCell!
    @IBOutlet weak var my_test: NSTextField!
    @IBOutlet weak var my_button: NSButton!
    @IBOutlet weak var my_textbox: NSTextField!
    
    var count:Int = 0
    
    
    @IBAction func drag_bar(sender: NSSliderCell) {
    
        
        self.my_test.stringValue = String(self.my_bar.intValue);
    }
    
    @IBAction func push_button(sender: NSButton) {
        
        self.my_textbox.stringValue = String(count);
        count += 1;
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.my_test.stringValue = "Value of Slider."
        self.my_textbox.stringValue = "Push the button."

    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

