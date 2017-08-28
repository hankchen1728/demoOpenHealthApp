//
//  ViewController.swift
//  demoOpenHealthApp
//
//  Created by 陳鈞廷 on 2017/8/29.
//  Copyright © 2017年 陳鈞廷. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let openHealthButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.openHealthButton.frame = CGRect(x: (self.view.frame.size.width - 100)/2, y: self.view.frame.size.height - 200, width: 100, height: 50)
        self.openHealthButton.backgroundColor = UIColor.gray
        self.openHealthButton.setTitle("open Health", for: .normal)
        self.openHealthButton.addTarget(self, action: #selector(openHealth), for: .touchUpInside)
        
        self.view.addSubview(self.openHealthButton)
        
    }
    @objc func openHealth(sender: UIButton){
        UIApplication.shared.open(URL(string: "x-apple-health://")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

