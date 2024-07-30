//
//  Assignment03_1stViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/25.
//

import UIKit

class Assignment03_1stViewController: UIViewController {

    @IBOutlet var containerArray: [UIView]!
    override func viewDidLoad() {
        super.viewDidLoad()

        containerArray[0].isHidden = false
        containerArray[1].isHidden = true
        
        
    }
    
    @IBAction func changeTab(_ sender: UISegmentedControl) {
        for containerView in containerArray {
              containerView.isHidden = true
           }
        containerArray[sender.selectedSegmentIndex].isHidden = false
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
