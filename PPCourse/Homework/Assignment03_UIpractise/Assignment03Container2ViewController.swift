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

        
        // 設置 Subway 標誌視圖
        let subwayLogoView = SubwayLogoView(frame: CGRect(x: 0, y: 0, width: 400, height: 200))
//        subwayLogoView.center = self.view.center
        self.view.addSubview(subwayLogoView)
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
