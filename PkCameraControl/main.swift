//
//  main.swift
//  PkCameraControl
//
//  Created by Greg on 2019-03-14.
//  Copyright © 2019 Greg Beaton. All rights reserved.
//

import Foundation
import ImageCaptureCore

print("Hello, World!")

let browser = ICDeviceBrowser.init()
let myDeviceBrowserDelegate = myDeviceBrowserDelegateClass.init()
browser.delegate = myDeviceBrowserDelegate
let deviceSearchMask = ICDeviceTypeMask.camera
let deviceSearchLocation = ICDeviceLocationTypeMask.local

browser.browsedDeviceTypeMask = ICDeviceTypeMask(rawValue: deviceSearchMask.rawValue | deviceSearchLocation.rawValue) ?? ((ICDeviceTypeMask(rawValue: 0) ?? nil)!)

browser.start()
print(browser.isBrowsing)
print(browser.devices!)
browser.stop()
