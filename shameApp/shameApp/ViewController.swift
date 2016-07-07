//
//  ViewController.swift
//  shameApp
//
//  Created by Eugene Skinner on 6/20/16.
//  Copyright © 2016 Eugene Skinner. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var shameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shameButtonPress(sender: UIButton) -> Void {
        AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: "/resoures/shame_sfx.mp3")) throws {
            throw ErrorType(self)
        }
        
    }

}




