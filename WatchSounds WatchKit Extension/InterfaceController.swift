//
//  InterfaceController.swift
//  WatchSounds WatchKit Extension
//
//  Created by Makaveli Ohaya on 7/11/20.
//  Copyright © 2020 Ohaya. All rights reserved.
//
import WatchKit
import AVFoundation


class InterfaceController: WKInterfaceController, PlaySounds {
    var audioplayer: AVAudioPlayer?
    
   
    
   
    
   
    
    
    
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func playSound() {
       
      playSound(named: "(FREE) Lofi Type Beat - I'm really high but I love you")
    }
    @IBAction func playSound2() {
        playSound(named: "[free] ride isaiah rashad x curren$y x ygtut type beat")
    }
    @IBAction func playSound3() {
        playSound(named: "J Dilla - look of love (LoopInstrumental)")
    }
    @IBAction func playSound4() {
        playSound(named: "J Dilla - Believe In God (Instrumental)")
    }
}
