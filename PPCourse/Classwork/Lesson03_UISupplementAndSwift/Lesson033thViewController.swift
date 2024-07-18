//
//  Lesson033ndViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/19.
//

import UIKit

class Lesson033thViewController: UIViewController {

    
    @IBOutlet var containerArr: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        containerArr[0].isHidden = false
        containerArr[1].isHidden = true
          
    }
    
    @IBAction func changeTab(_ sender: UISegmentedControl) {
        for containerView in containerArr {
              containerView.isHidden = true
           }
        containerArr[sender.selectedSegmentIndex].isHidden = false
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
