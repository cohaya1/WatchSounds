//
//  File.swift
//  WatchSounds WatchKit Extension
//
//  Created by Makaveli Ohaya on 7/11/20.
//  Copyright © 2020 Ohaya. All rights reserved.
//

import AVFoundation


protocol PlaySounds: AnyObject {
    var audioplayer: AVAudioPlayer? {get  set }
}
extension PlaySounds {
    func playSound(named name: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
            fatalError("Unable to find sound file \(name).mp3")
        }

        try? audioplayer = AVAudioPlayer(contentsOf: url)
        audioplayer?.play()
    }
}
