//
//  ViewController.swift
//  The Drama Button
//
//  Created by Wojciech Stasiński on 27.08.2014.
//  Copyright (c) 2014 Wojciech Stasiński. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var lblDramaSituations : UILabel?
    
    var dramaSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("DramaScore", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()
    var counter = 0
    
    @IBAction func calculateTapped(sender : AnyObject) {
        counter += 1
        lblDramaSituations?.text = "Drama situations: \(counter)"
        audioPlayer = AVAudioPlayer(contentsOfURL: dramaSound, error: nil)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblDramaSituations?.text = "Drama situations: \(counter)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

