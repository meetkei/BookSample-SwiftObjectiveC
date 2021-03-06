//
//  Copyright (c) 2016 Keun young Kim <book@meetkei.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

class Device: NSObject {
    var modelName: String;
    
    init(name: String) {
        modelName = name
    }
}

@objc protocol MediaPlayable {
    func play()
    func pause()
    func stop()
    
    @objc optional func nextMedia()
    @objc optional func prevMedia()
}

@objc protocol RemoteControllable: MediaPlayable {
    static var firmwareVersion: String { get }
    var isOn: Bool { get set }
    
    func on()
    func off()
    func volumeUp()
    func volumeDown()
    
    @objc optional func nextChannel()
    @objc optional func prevChannel()
}

protocol Repairable {
    func repair()
}

protocol AppleRepairable: Repairable {
    func checkAppleWarranty() -> Bool
}

@objc class DVDPlayer: Device, MediaPlayable, RemoteControllable {
    static var firmwareVersion: String = "1.0"
    var isOn: Bool = false
    
    func play() {
        #if swift(>=3.0)
            print("\(String(describing: DVDPlayer.self)): call \(#function)")
        #else
            print("\(String(DVDPlayer.self)): call \(#function)")
        #endif
    }
    
    func pause() {
        #if swift(>=3.0)
            print("\(String(describing: DVDPlayer.self)): call \(#function)")
        #else
            print("\(String(DVDPlayer.self)): call \(#function)")
        #endif
    }
    
    func stop() {
        #if swift(>=3.0)
            print("\(String(describing: DVDPlayer.self)): call \(#function)")
        #else
            print("\(String(DVDPlayer.self)): call \(#function)")
        #endif
    }
    
    func on() {
        #if swift(>=3.0)
            print("\(String(describing: DVDPlayer.self)): call \(#function)")
        #else
            print("\(String(DVDPlayer.self)): call \(#function)")
        #endif
    }
    
    func off() {
        #if swift(>=3.0)
            print("\(String(describing: DVDPlayer.self)): call \(#function)")
        #else
            print("\(String(DVDPlayer.self)): call \(#function)")
        #endif
    }
    
    func volumeUp() {
        #if swift(>=3.0)
            print("\(String(describing: DVDPlayer.self)): call \(#function)")
        #else
            print("\(String(DVDPlayer.self)): call \(#function)")
        #endif
    }
    
    func volumeDown() {
        #if swift(>=3.0)
            print("\(String(describing: DVDPlayer.self)): call \(#function)")
        #else
            print("\(String(DVDPlayer.self)): call \(#function)")
        #endif
    }
    
    func eject() {
        #if swift(>=3.0)
            print("\(String(describing: DVDPlayer.self)): call \(#function)")
        #else
            print("\(String(DVDPlayer.self)): call \(#function)")
        #endif
    }
}

@objc class MP3Player: Device, MediaPlayable, Repairable {
    func play() {
        #if swift(>=3.0)
            print("\(String(describing: MP3Player.self)): call \(#function)")
        #else
            print("\(String(MP3Player.self)): call \(#function)")
        #endif
    }
    
    func pause() {
        #if swift(>=3.0)
            print("\(String(describing: MP3Player.self)): call \(#function)")
        #else
            print("\(String(MP3Player.self)): call \(#function)")
        #endif
    }
    
    func stop() {
        #if swift(>=3.0)
            print("\(String(describing: MP3Player.self)): call \(#function)")
        #else
            print("\(String(MP3Player.self)): call \(#function)")
        #endif
    }
    
    func nextMedia() {
        #if swift(>=3.0)
            print("\(String(describing: MP3Player.self)): call \(#function)")
        #else
            print("\(String(MP3Player.self)): call \(#function)")
        #endif
    }
    
    func prevMedia() {
        #if swift(>=3.0)
            print("\(String(describing: MP3Player.self)): call \(#function)")
        #else
            print("\(String(MP3Player.self)): call \(#function)")
        #endif
    }
    
    func repair() {
        #if swift(>=3.0)
            print("\(String(describing: MP3Player.self)): call \(#function)")
        #else
            print("\(String(MP3Player.self)): call \(#function)")
        #endif
    }
}

@objc class SmartTV: Device, RemoteControllable {
    static var firmwareVersion: String = "1.0"
    var isOn: Bool = false
    var volume = 0
    
    func play() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
    }
    
    func pause() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
    }
    
    func stop() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
    }
    
    func nextMedia() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
    }
    
    func prevMedia() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
    }
    
    func on() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
    }
    
    func off() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
    }
    
    func volumeUp() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
        
        volume = min(100, volume + 1)
        
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): volume \(volume)")
        #else
            print("\(String(SmartTV.self)): volume \(volume)")
        #endif
    }
    
    func volumeDown() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
        
        volume = max(0, volume - 1)
        
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): volume \(volume)")
        #else
            print("\(String(SmartTV.self)): volume \(volume)")
        #endif
    }
    
    func nextChannel() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
    }
    
    func prevChannel() {
        #if swift(>=3.0)
            print("\(String(describing: SmartTV.self)): call \(#function)")
        #else
            print("\(String(SmartTV.self)): call \(#function)")
        #endif
    }
}

@objc class RemoteController: Device {
    var pairedDevice: RemoteControllable?
    static var firmwareVersion: String = "1.0"
    var isOn: Bool = false
    
    func play() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.play()
    }
    
    func pause() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.pause()
    }
    
    func stop() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.stop()
    }
    
    func nextMedia() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.nextMedia!()
    }
    
    func prevMedia() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.prevMedia!()
    }
    
    func on() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.on()
    }
    
    func off() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.off()
    }
    
    func volumeUp() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.volumeUp()
    }
    
    func volumeDown() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.volumeDown()
    }
    
    func nextChannel() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.nextChannel!()
    }
    
    func prevChannel() {
        guard let paired = pairedDevice else {
            return
        }
        
        paired.prevChannel!()
    }
    
    func pair(with device: RemoteControllable) -> Bool {
        pairedDevice = device
        return true
    }
}

class MacBook: Device, AppleRepairable {
    func repair() {
        #if swift(>=3.0)
            print("\(String(describing: MacBook.self)): call \(#function)")
        #else
            print("\(String(MacBook.self)): call \(#function)")
        #endif
    }
    
    func checkAppleWarranty() -> Bool {
        #if swift(>=3.0)
            print("\(String(describing: MacBook.self)): call \(#function)")
        #else
            print("\(String(MacBook.self)): call \(#function)")
        #endif
        
        return true;
    }
}

class AppleMusicDevice: MP3Player, AppleRepairable {
    override func repair() {
        #if swift(>=3.0)
            print("\(String(describing: AppleMusicDevice.self)): call \(#function)")
        #else
            print("\(String(AppleMusicDevice.self)): call \(#function)")
        #endif
    }
    
    func checkAppleWarranty() -> Bool {
        #if swift(>=3.0)
            print("\(String(describing: AppleMusicDevice.self)): call \(#function)")
        #else
            print("\(String(AppleMusicDevice.self)): call \(#function)")
        #endif
        
        return true;
    }
}

class AppleMediaDeviceCenter {
#if swift(>=3.0)
    func repairMediaDevice(device: MediaPlayable & AppleRepairable) -> Bool {
        if device.checkAppleWarranty() {
            device.repair()
            return true
        }
        
        return false
    }
#else
    func repairMediaDevice(device: protocol<MediaPlayable, AppleRepairable>) -> Bool {
        if device.checkAppleWarranty() {
            device.repair()
            return true
        }
        
        return false
    }
#endif
}

let repairCenter = AppleMediaDeviceCenter()

let lgSmartTV = SmartTV(name: "LG Smart TV")
let sonyWalkman = MP3Player(name: "Sony Walkman")
let iPodNano = AppleMusicDevice(name: "iPod Nano")
let macBookPro = MacBook(name: "MacBook Pro")

#if swift(>=3.0)
if repairCenter.repairMediaDevice(device: iPodNano) {
    print("done")
} else {
    print("cannot repair")
}
#else
if repairCenter.repairMediaDevice(iPodNano) {
    print("done")
} else {
    print("cannot repair")
}
#endif

// AppleMusicDevice: call checkAppleWarranty()
// AppleMusicDevice: call repair()
// done
