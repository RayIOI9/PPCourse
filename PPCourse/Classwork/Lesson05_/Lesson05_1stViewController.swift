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

class Lesson05_1stViewController: UIViewController,AVSpeechSynthesizerDelegate {
    
    private let logger = Logger()
    // logger 可以做分類
    private let logger2 = Logger(subsystem: "sys1", category: "cate1")
    
    private let synthesizer = AVSpeechSynthesizer()
    
    private let lyrics: String =
"""
狼牙月 伊人憔悴
我舉杯 飲盡了風雪
是誰打翻前世櫃 惹塵埃是非

緣字訣 幾番輪迴
你鎖眉 哭紅顏喚不回
縱然青史已經成灰 我愛不滅

繁華如三千東流水 我只取一瓢愛了解
只戀妳化身的蝶

妳髮如雪 淒美了離別
我焚香感動了誰
邀明月 讓回憶皎潔
愛在月光下完美
"""
    
    @IBOutlet weak var inputMsgTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 將class 遵從 protocol: AVSpeechSynthesizerDelegate 就可以實現下方speechSynthesizer那些方法取得synthesizer狀態
        synthesizer.delegate = self
        
        // 印出所有voice種類
        for voice in AVSpeechSynthesisVoice.speechVoices() {
            print(voice.name, voice.identifier)
        }
    }
    
    @IBAction func sing(_ sender: Any) {
        if synthesizer.isSpeaking {
            synthesizer.stopSpeaking(at: .immediate)
        } else {
            logger2.debug("開始唱歌")
            
            let utterance = AVSpeechUtterance(string: self.lyrics)
            // 如果要唸中文就要加上language，不然遇到中文就不會發出聲音
            // 加了之後若輸入內含英文也是能正常唸出
            utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            
            // 如果為英文，可以搭配有趣的聲音
            /*
             let utterance = AVSpeechUtterance(string: "aaa b b b c cc")
             utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Whisper")
             */
            
            // 語調速度音量也能做調整
            utterance.pitchMultiplier = 1 // 音調: 0.5~2
            utterance.rate = 0.5 // 速度: 0~1
            utterance.volume = 1 // 音量: 0~1
            
            
            synthesizer.speak(utterance)
        }
        
    }
    
    @IBAction func speak(_ sender: Any) {
        logger.log(level: .debug,"開始說話")
        
        let utterance = AVSpeechUtterance(string: inputMsgTextField.text!)
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
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
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
        print("Speech started")
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        print("Speech finished")
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didCancel utterance: AVSpeechUtterance) {
        print("Speech cancelled")
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didPause utterance: AVSpeechUtterance) {
        print("Speech paused")
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didContinue utterance: AVSpeechUtterance) {
        print("Speech continued")
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance) {
        let string = (utterance.speechString as NSString).substring(with: characterRange)
        print("About to speak: \(string)")
    }
    
}

//@available(iOS 17.0, *)
//#Preview {
//    Lesson05_1stViewController()
//}
