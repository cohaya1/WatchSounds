//
//  TableInterfaceController.swift
//  WatchSounds WatchKit Extension
//
//  Created by Makaveli Ohaya on 7/12/20.
//  Copyright © 2020 Ohaya. All rights reserved.
//

import WatchKit
import AVFoundation


class TableInterfaceController: WKInterfaceController, PlaySounds {
    var audioplayer: AVAudioPlayer?
    
    @IBOutlet weak var SoundRowTable: WKInterfaceTable!
     // Contains the sorted mp3s in our app ready to go
     let sounds = Bundle.main.urls(forResourcesWithExtension: "mp3", subdirectory: nil)?.map { $0.deletingPathExtension().lastPathComponent }.sorted() ?? []
   
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // adds rows based on the amount of sounds that appear on the table
        SoundRowTable.setNumberOfRows(sounds.count, withRowType: "Row")
        // Configure interface objects here such as the songs in the row, we will iterate through them to configure each row.
        for (index, sound) in sounds.enumerated() {
            guard let row = SoundRowTable.rowController(at: index) as? Soundrow else { continue }
            row.SoundRowCellLabel.setText(sound)
            
        }
    }
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        playSound(named: sounds[rowIndex])
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    

}
