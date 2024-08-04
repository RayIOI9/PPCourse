//
//  Assignment03_1stViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/25.
//

import UIKit

class Assignment03_1stViewController: UIViewController {

    @IBOutlet weak var dotPageControl: UIPageControl!
    
    @IBOutlet weak var containerSegmented: UISegmentedControl!
    
    @IBOutlet var containerArray: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 設定container初初始頁
        containerArray[0].isHidden = false
        containerArray[1].isHidden = true
        
        // 設置 UIPageControl 的頁數
        dotPageControl.numberOfPages = containerSegmented.numberOfSegments
        dotPageControl.currentPage = containerSegmented.selectedSegmentIndex
        
        // 從程式新增右滑動作
        // 宣告UISwipeGestureRecognizer設定方向
        let rightSwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipTab(_:)))
        rightSwipeGestureRecognizer.direction = .right
        // 將要加上Gesture的畫面元件設為可點選
        // UIView屬性isUserInteractionEnabled設為true
        containerArray[1].isUserInteractionEnabled = true
        // 將Gesture加入畫面元件
        // UIView方法addGestureRecognizer()
        containerArray[1].addGestureRecognizer(rightSwipeGestureRecognizer)
        
        // 從程式添加 UIPageControl 的目標動作綁定
        dotPageControl.addTarget(self, action: #selector(pageControlChanged(_:)), for: .valueChanged)
    }
    
    //  @IBAction實際上隱含 @obj，因此func可與interfaceBuilder拖拉的共用
    @IBAction func swipTab(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .left {
            print("Left Swipe")
            // 在這裡處理左滑手勢
            // 判斷段值還沒到右邊底，就可以繼續新增
            if (containerSegmented.selectedSegmentIndex < containerSegmented.numberOfSegments - 1) {
                containerSegmented.selectedSegmentIndex += 1
            }
        } else if sender.direction == .right {
            // 右滑改由程式設定
            print("Right Swipe")
            // 判斷如果選得不是0就-1跳過去（0就會不動）
            if containerSegmented.selectedSegmentIndex > 0 {
                containerSegmented.selectedSegmentIndex -= 1
            }
        }
        // 換頁
        changeTab(containerSegmented)
    }
    
    // 小圓點動作
    @objc func pageControlChanged(_ sender: UIPageControl) {
        print("小圓點換頁")
        containerSegmented.selectedSegmentIndex = sender.currentPage
        // 換頁
        changeTab(containerSegmented)
    }
    
    /// 更換containerView頁面
    @IBAction func changeTab(_ sender: UISegmentedControl) {
//        for containerView in containerArray {
//              containerView.isHidden = true
//        }
//        containerArray[sender.selectedSegmentIndex].isHidden = false
        
        for (index, containerView) in containerArray.enumerated() {
            containerView.isHidden = (index != sender.selectedSegmentIndex)
        }
        
        // 更新UIPageControl
        dotPageControl.currentPage = containerSegmented.selectedSegmentIndex
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
    let storyboard = UIStoryboard(name: "Assignment03", bundle: nil)
    // withIdentifier要填StoryBoard ID
    return storyboard.instantiateViewController(withIdentifier: "Assignment03_1stViewController")
}
