//
//  Lesson04RootViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/22.
//

import UIKit

class Lesson04RootViewController: UIViewController {

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
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

@available(iOS 17.0, *)
#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}
