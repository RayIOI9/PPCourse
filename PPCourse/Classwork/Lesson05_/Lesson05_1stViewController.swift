//
//  Lesson05_1stViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/25.
//

import UIKit
import OSLog
import AVFAudio

//private let logger = Logger()

class Lesson05_1stViewController: UIViewController {

    private let logger = Logger()
    
    let synthesizer = AVSpeechSynthesizer()
    
    @IBOutlet weak var inputMsg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func speak(_ sender: Any) {
        logger.log(level: .debug,"開始說話")
        
//        let utterance = AVSpeechUtterance(string: "就是開不了口，讓她知道。我一定會呵護著妳，也逗妳笑。")
        let utterance = AVSpeechUtterance(string: inputMsg.text!)
//        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate = 0.1
        utterance.pitchMultiplier = 2
        synthesizer.speak(utterance)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
