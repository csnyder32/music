//
//  ViewController.swift
//  music
//
//  Created by Chris Snyder on 10/14/14.
//  Copyright (c) 2014 Chris Snyder. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var volumeSlider: UISlider!
    var player:AVAudioPlayer = AVAudioPlayer()
    var error:NSError? = nil

    override func viewDidLoad() {
        super.viewDidLoad()



    }

    @IBAction func volume(sender: AnyObject)
    {
        player.volume = volumeSlider.value
        
    }
    @IBAction func playButton(sender: AnyObject)
    {
        var fileLocation = NSString(string: NSBundle.mainBundle().pathForResource("dragonball_z", ofType: "mp3")!)

        player = AVAudioPlayer(contentsOfURL:NSURL(string: fileLocation), error: &error)

        player.play()
    }

    @IBAction func stopButton(sender: AnyObject)
    {
        player.stop()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

