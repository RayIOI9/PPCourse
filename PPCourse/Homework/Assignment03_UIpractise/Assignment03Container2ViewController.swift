//
//  Assignment03Container2ViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/25.
//

import UIKit

class Assignment03Container2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 繪圖
        let subwayLogoLayer = SubwayLogo().logo
        self.view.layer.addSublayer(subwayLogoLayer!)
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
