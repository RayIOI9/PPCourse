//
//  Assignment02RootViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/20.
//

import UIKit

class Assignment02RootViewController: UIViewController {

//    目前沒做返回，不需要返回時恢復
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        // 返回時恢復舊的 Tab Bar
//        self.tabBarController?.tabBar.isHidden = false
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /// 隱藏Homework tab bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 隱藏舊的 Tab Bar
        self.tabBarController?.tabBar.isHidden = true
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
