//
//  Lesson02_view2_ViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/15.
//

import UIKit

class Lesson02_view2_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Lesson02_view2 Load");
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Lesson02_view2 Appear");
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Lesson02_view2 Disappear");
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
