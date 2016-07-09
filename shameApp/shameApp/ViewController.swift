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
    
    var myAudioPlayer = AVAudioPlayer()

    @IBOutlet weak var shameButton: UIButton!
    
    
    @IBAction func shameButtonPress(sender: UIButton) -> Void {
        myAudioPlayer.play();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myFilePathString = NSBundle.mainBundle().pathForResource("shame_sfx", ofType: "mp3")
        
        if let myFilePathString = myFilePathString
        {
            let myFilePathURL = NSURL(fileURLWithPath: myFilePathString)
            
            do {
                
                try myAudioPlayer = AVAudioPlayer(contentsOfURL: myFilePathURL)
            } catch {
                print("error")
            }
            

        }
    }
    
 

}




