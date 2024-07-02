//
//  Assignment00ViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/1.
//

import UIKit

class Assignment00_1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // 隐藏旧的 Tab Bar
            self.tabBarController?.tabBar.isHidden = true
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            // 返回时恢复旧的 Tab Bar
            self.tabBarController?.tabBar.isHidden = false
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
