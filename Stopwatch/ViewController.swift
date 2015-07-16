//
//  ViewController.swift
//  Stopwatch
//
//  Created by Brad Gray on 7/14/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var seconds = 0
    
        func result() {
        seconds++
        timeResult.text = "\(seconds)"
    }
   
    @IBOutlet weak var timeResult: UILabel!
    
    @IBAction func pause(sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func Start(sender: UIButton) {
       
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector ("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func Stop(sender: UIButton) {
   timer.invalidate()
        seconds = 0
        timeResult.text = "0"
        }
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

