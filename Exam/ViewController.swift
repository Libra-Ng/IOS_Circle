//
//  ViewController.swift
//  Exam
//
//  Created by student on 2019/11/20.
//  Copyright © 2019 吴谭波. All rights reserved.
//

import UIKit


class ViewController: UIViewController{

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        super.didReceiveMemoryWarning()
               // Dispose of any resources that can be recreated.
               let r1 = Circle(frame: CGRect(x: 67, y: 376, width: 300, height: 300))
        r1.backgroundColor = UIColor.clear
               view.addSubview(r1)
               
               let r2 = Circle_ring(frame: CGRect(x: 117, y: 108, width: 150, height: 150))
        r2.backgroundColor = UIColor.clear
               view.addSubview(r2)
        
    }
    override func didReceiveMemoryWarning() {
       
    }
    


}



