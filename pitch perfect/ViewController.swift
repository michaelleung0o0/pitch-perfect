//
//  ViewController.swift
//  pitch perfect
//
//  Created by MichaelLeung on 20/6/15.
//  Copyright (c) 2015 MichaelLeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        // Hide the stop button
        stopButton.hidden = true
    }
    
    override func viewWillAppear(animated: Bool) {
        recordButton.enabled = true
    }

    @IBAction func recordAudio(sender: UIButton) {
        println("in recordAudio")
        stopButton.hidden = false
        recordingInProgress.hidden = false
        recordButton.enabled = false
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        recordingInProgress.hidden = true
    }
}

