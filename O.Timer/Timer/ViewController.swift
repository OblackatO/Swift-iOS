//
//  ViewController.swift
//  Timer
//
//  Created by Pedro Gomes  on 09/02/2018.
//  Copyright © 2018 Pedro Gomes . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    private var seconds = 60
    private var timer = Timer()
    private var isTimerRunning = false
    private var resumeTapped = false
    
    @IBOutlet weak var Time_Label: UILabel!
    
    @objc func updateTimer() {
        
        if self.seconds < 1  {
            self.timer.invalidate()
        }else {
            self.seconds -= 1
            self.Time_Label.text = "\(seconds)"
        }
    }
    
    private func runTimer() {
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
        self.isTimerRunning = true
    }
    
    @IBAction func Start_Button(_ sender: Any) {
        if !self.isTimerRunning  {
            runTimer()
        }
    }
    
    @IBAction func Pause_Button(_ sender: Any) {
        if !self.resumeTapped {
            
            self.timer.invalidate()
            self.resumeTapped = true
        
        } else {
            
            runTimer()
            self.resumeTapped = false
        
        }
    }
    
    private func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    @IBAction func Reset_Button(_ sender: Any) {
        
        self.timer.invalidate()
        self.seconds = 60    //Here we manually enter the restarting point for the seconds, but it would be wiser to make this a variable or constant.
        self.Time_Label.text = timeString(time: TimeInterval(self.seconds))
        self.isTimerRunning = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

