//
//  ViewController.swift
//  sampleImageGesture
//
//  Created by ryousuke on 2017/11/07.
//  Copyright © 2017年 ryousuke Takahashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func myTap(_ sender: UITapGestureRecognizer) {
        
        let alert = UIAlertController(title: "シンプルに口がくせえんじゃ。。", message: "胃が腐っとんじゃ", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.myImage.image = UIImage(named: "kutikusa.jpg")}))
        
        present(alert, animated: true, completion: {() -> Void in print("Tapされました")})
        
    }
    
    @IBAction func mySwipe(_ sender: UISwipeGestureRecognizer) {
        
        let alert = UIAlertController(title: "どうも靴だけを買った男です", message: "癖がすごいー。。癖が", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.myImage.image = UIImage(named: "kutudake.jpg")}))
        
        present(alert, animated: true, completion: {() -> Void in print("swipeされました")})
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

