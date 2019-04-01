//
//  myDeviceBrowserDelegate.swift
//  PkCameraControl
//
//  Created by Greg on 2019-03-23.
//  Copyright © 2019 Greg Beaton. All rights reserved.
//

import Foundation
import ImageCaptureCore

class myDeviceBrowserDelegateClass : NSObject, ICDeviceBrowserDelegate {
    func deviceBrowser(_ browser: ICDeviceBrowser, didAdd device: ICDevice, moreComing: Bool) {
        print("Device added = \(device) and more coming = \(moreComing)")
    }
    
    func deviceBrowser(_ browser: ICDeviceBrowser, didRemove device: ICDevice, moreGoing: Bool) {
        print("Device added = \(device) and more going = \(moreGoing)")

    }
    
    
    
}
