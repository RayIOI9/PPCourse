//
//  Lesson03_root_ViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/18.
//

import UIKit

class Lesson03_root_ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 隐藏舊的 Tab Bar
        self.tabBarController?.tabBar.isHidden = true
    }
    
//    目前不需要返回恢復
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        // 返回時恢復舊的 Tab Bar
//        self.tabBarController?.tabBar.isHidden = false
//    }

    override func viewDidLoad() {
        super.viewDidLoad();

        practiseSWIFT();
    }
    
    /// documentation comment  用///開頭，格式如下
    ///
    /// 這邊是discussion
    /// bla bla bla bla
    /// bla bla bla bla
    ///
    /// 跳行了還會是discussion
    ///
    /// - Parameters:
    ///   - 參數1: 參數1說明
    ///   - para2: 參數2說明
    ///
    /// - Returns: 回傳資料說明
    ///
    /// - Throws: `xxxError.xxxgodie` 拋出錯誤說明
    private func practiseSWIFT(){
        print("eee", terminator: "eee")
        
        
    }
    

        


}
