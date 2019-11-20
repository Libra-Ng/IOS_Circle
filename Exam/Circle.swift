//
//  Circle.swift
//  Exam
//
//  Created by student on 2019/11/20.
//  Copyright © 2019 吴谭波. All rights reserved.
//
import UIKit

class Circle: UIView {

    var h = 0
    func setup(){
        //pinch--缩放
        let pinchGesturer = UITapGestureRecognizer(target: self, action: #selector(pinch(recognizer:)))
        self.addGestureRecognizer(pinchGesturer);
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    //缩放
    @objc func pinch(recognizer: UIPinchGestureRecognizer){
       
       
        if h >= 280 {
            h = 0
        }
        else{
             h += 20
        }
        
        setNeedsDisplay()
    
    }
    
    override func draw(_ rect: CGRect) {
        
        
        
        let cil = UIBezierPath(rect: CGRect(x: 0, y:  h , width: 280, height: 280-h))
            
        UIColor.clear.setFill()
            
        cil.fill()
        
        
        let path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 280, height: 280))
        
        path.lineWidth = 5.0
        
        UIColor.red.setFill()
        
        cil.addClip()
        
        path.fill()
        
    }

}


