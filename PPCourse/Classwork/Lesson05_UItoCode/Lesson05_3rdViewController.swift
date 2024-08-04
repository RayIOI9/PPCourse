//
//  Lesson05_3rdViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/8/4.
//

import UIKit
import AVFoundation

class Lesson05_3rdViewController: UIViewController {
    var player: AVPlayer!
    var playerItem: AVPlayerItem!
    let url = URL(string:"https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/69/0e/98/690e98db-440d-cb0c-2bff-91b00a05bdda/mzaf_1674062311671795807.plus.aac.p.m4a")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 程式內設定畫面
        setupView()
        
        // 播音樂
        //        self.player = AVPlayer(url: url!)
        // 另種寫法
        self.playerItem = AVPlayerItem(url: url!)
        player = AVPlayer(playerItem: playerItem)
        //player.play()
        
        // 監聽播放狀態
        player.addObserver(self, forKeyPath: "rate", options: [.new, .initial], context: nil)
        playerItem.addObserver(self, forKeyPath: "status", options: [.new, .initial], context: nil)
        playerItem.addObserver(self, forKeyPath: "playbackLikelyToKeepUp", options: [.new, .initial], context: nil)
        
    }
    
    deinit {
        // 移除觀察者
        player.removeObserver(self, forKeyPath: "rate")
        playerItem.removeObserver(self, forKeyPath: "status")
        playerItem.removeObserver(self, forKeyPath: "playbackLikelyToKeepUp")
    }
    
    /// 抄AI回答，這部分沒仔細看observe的部分怎麼實作，先不管
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "rate" {
            if player.rate == 0.0 {
                print("Player is paused")
            } else {
                print("Player is playing")
            }
        } else if keyPath == "status" {
            if playerItem.status == .readyToPlay {
                print("Player item is ready to play")
            } else if playerItem.status == .failed {
                print("Player item failed")
            }
        } else if keyPath == "playbackLikelyToKeepUp" {
            if playerItem.isPlaybackLikelyToKeepUp {
                print("Playback is likely to keep up")
            } else {
                print("Playback is stalling")
            }
        }
    }
    
    /// 開始播放
    @IBAction func play(_ sender: UIButton) {
        // 如果播放項目為空，重新設置播放項目
        if player.currentItem == nil {
            playerItem = AVPlayerItem(url: self.url!)
            player.replaceCurrentItem(with: playerItem)
        }
        player.play()
    }
    
    /// 暫停播放
    @IBAction func pause(_ sender: UIButton) {
        player.pause()
    }
    
    /// 停止播放
    @IBAction func stop(_ sender: UIButton) {
        player.pause()
        player.replaceCurrentItem(with: nil)
    }
    
}

// MARK: - Setup View
extension Lesson05_3rdViewController {
    func setupView(){
        // 創建 UIImageView 並設置其屬性
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        // 設置圖片
        if let image = UIImage(named: "Lesson05_愛似水仙") {
            imageView.image = image
            
            // 將 UIImageView 添加到視圖控制器的視圖中
            view.addSubview(imageView)
            
            // 設置 UIImageView 的約束
            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40), // 距離頂部20點
                imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                imageView.widthAnchor.constraint(equalToConstant: 300),
                imageView.heightAnchor.constraint(equalToConstant: 200)
                //                imageView.widthAnchor.constraint(equalToConstant: image.size.width),
                //                imageView.heightAnchor.constraint(equalToConstant: image.size.height)
            ])
        } else {
            print("圖片未找到")
        }
    }
}

// 比較兩者Preview差異
@available(iOS 17.0, *)
#Preview {
    let storyboard = UIStoryboard(name: "Lesson05", bundle: nil)
    // withIdentifier要填StoryBoard ID
    return storyboard.instantiateViewController(withIdentifier: "Lesson05_3rdViewController")
}
@available(iOS 17.0, *)
#Preview {
    Lesson05_3rdViewController()
}
