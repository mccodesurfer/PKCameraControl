//
//  ViewController.swift
//  PKCameraControl
//
//  Created by Paul Zabelin on 4/23/19.
//

import Cocoa


class ViewController: NSViewController {

    let cameraManager = CameraManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        cameraManager.start()


        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

