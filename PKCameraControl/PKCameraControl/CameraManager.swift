//
//  CameraManager.swift
//  PKCameraControl
//
//  Created by Paul Zabelin on 4/23/19.
//

import Foundation
import ImageCaptureCore

class CameraManager: NSObject {
    var deviceBrowser: ICDeviceBrowser! = nil
    var cameraDevice: ICCameraDevice! = nil

    func start() {
        deviceBrowser = ICDeviceBrowser()
        let mask = ICDeviceTypeMask(rawValue: ICDeviceTypeMask.camera.rawValue | ICDeviceLocationTypeMask.local.rawValue)
        deviceBrowser.browsedDeviceTypeMask = mask!

        deviceBrowser.delegate = self
        deviceBrowser.start()
    }
}

extension CameraManager: ICDeviceBrowserDelegate {
    func deviceBrowser(_ browser: ICDeviceBrowser, didAdd device: ICDevice, moreComing: Bool) {
        print("didAdd device.name=", device.name as Any)
        if let camera = device as? ICCameraDevice {
            cameraDevice = camera
        }
    }

    func deviceBrowser(_ browser: ICDeviceBrowser, didRemove device: ICDevice, moreGoing: Bool) {
        print("didRemove", device)
    }

    func deviceBrowserDidEnumerateLocalDevices(_ browser: ICDeviceBrowser) {
        print("deviceBrowserDidEnumerateLocalDevices", browser)
    }
}
