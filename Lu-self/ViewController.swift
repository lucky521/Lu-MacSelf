//
//  ViewController.swift
//  Lu-self
//
//  Created by Lucky on 16/7/20.
//  Copyright © 2016年 Lucky. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSWindowDelegate {
    
    @IBOutlet weak var my_bar: NSSliderCell!
    @IBOutlet weak var my_test: NSTextField!
    @IBOutlet weak var my_button: NSButton!
    @IBOutlet weak var my_textbox: NSTextField!
    
    
    var count:Int = 0
    
    
    
    @IBAction func drag_bar(_ sender: NSSliderCell) {
    
        print("drag_bar");
        
        self.my_test.stringValue = String(self.my_bar.intValue);
    }
    
    @IBAction func push_button(_ sender: NSButton) {
        
        print("push_button");
        
        self.my_textbox.stringValue = String(count);
        
        count += 1;
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.my_test.stringValue = "Value of Slider."
        self.my_textbox.stringValue = "Push the button."

    }

    /*
    override var representedObject: Any? {
        didSet {

        // Update the view, if already loaded.
            print("didSet");
            
        }
    }*/
    
    
    override func viewDidAppear() {
        self.view.window?.delegate = self;
        
        self.view.window!.title = "Lu Tool";
    }
    
    
    // https://nabtron.com/quit-cocoa-app-window-close/
    func windowShouldClose(_ sender: Any) {
        NSApplication.shared().terminate(self)
    }


}

