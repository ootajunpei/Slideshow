//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 太田隼平 on 2020/10/22.
//  Copyright © 2020 太田隼平. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer:Timer!
    var nowIndex:Int = 0
    var imageArray:[UIImage] = [
    UIImage(named: "IMG_8917.jpeg")!,
    UIImage(named: "IMG_8918.jpeg")!,
    UIImage(named: "IMG_8925.jpeg")!,
    ]
    @IBOutlet weak var setbutton: UIButton!
    @IBOutlet weak var modoruout: UIButton!
    @IBOutlet weak var susumuout: UIButton!
    @IBOutlet weak var syasshin: UIImageView!
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    @IBAction func saiseiteishi(_ sender: Any) {
        //timerがnillの場合
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
             setbutton.setTitle("停止", for: .normal)
            modoruout.isEnabled = false
            susumuout.isEnabled = false
            }
    //timerがnillでない場合
    else if self.timer != nil {
                       self.timer.invalidate()   // タイマーを停止する
                       self.timer = nil
            setbutton.setTitle("再生", for: .normal)
            modoruout.isEnabled = true
            susumuout.isEnabled = true
        }
    }
    //selectorで指定された関数の定義を行う（2秒毎に1ずつnowindexの値を増やしていく）
    @objc func updateTimer(_ timer: Timer) {
        self.nowIndex += 1
        if nowIndex > 2 {
        nowIndex = 0
        }
         syasshin.image = imageArray[nowIndex]
    }
    //進むを押すと、nowIndexの値を１増やす
    @IBAction func susumu(_ sender: Any) {
    
    nowIndex += 1
    if nowIndex > 2 {
      nowIndex = 0
      }
     syasshin.image = imageArray[nowIndex]
        
    }
    @IBAction func modoru(_ sender: Any) {
        
       
        nowIndex -= 1
        if nowIndex < 0 {
          nowIndex = 2
          }
         syasshin.image = imageArray[nowIndex]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            syasshin.image = imageArray[nowIndex]
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているnowIndex2にnowindexの値を代入して渡す
        resultViewController.nowIndex2 = nowIndex
    }
    
    
    

}

