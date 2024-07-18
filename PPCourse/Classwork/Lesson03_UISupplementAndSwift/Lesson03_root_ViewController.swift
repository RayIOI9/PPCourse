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
    
    private func practiseSWIFT(){
        
    }
    

        


}
