//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 太田隼平 on 2020/10/22.
//  Copyright © 2020 太田隼平. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        syasshin2.image = imageArray2[nowIndex2]

        // Do any additional setup after loading the view.
    }
    
        var nowIndex2:Int = 0
    var imageArray2:[UIImage] = [
       UIImage(named: "IMG_8917.jpeg")!,
       UIImage(named: "IMG_8918.jpeg")!,
       UIImage(named: "IMG_8925.jpeg")!,
       ]
    
    @IBOutlet weak var syasshin2: UIImageView!
    
    
    

    
  
  
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
