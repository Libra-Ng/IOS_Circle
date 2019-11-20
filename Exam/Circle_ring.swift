//
//  Circle_ring.swift
//  Exam
//
//  Created by student on 2019/11/20.
//  Copyright © 2019 吴谭波. All rights reserved.
//

import UIKit

class Circle_ring: UIView {
    var flag = false
    var a:CGFloat = 0
    func setup(){
        //pan--移动
        let panGesturer = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
        self.addGestureRecognizer(panGesturer);
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    //移动
    @objc func pan(recognizer: UIPanGestureRecognizer){
        
        switch recognizer.state {
        case .began,.changed,.ended:
            let translation = recognizer.translation(in: self)
            
            self.center.x += translation.x
            self.center.y += translation.y
            
            recognizer.setTranslation(CGPoint.zero, in: self)
        default:
            break
        }
        flag = true
        a += 0.05
        setNeedsDisplay()
    }
    
    // 缩放比例
    var scale: CGFloat = 0.9
    
    override func draw(_ rect: CGRect) {
        if flag {
            
            let path = UIBezierPath()
            var endAngle: CGFloat = 2 * CGFloat.pi - a
            if endAngle <= 0 {
                endAngle = 0
            }
            path.addArc(withCenter: CGPoint(x: self.bounds.midX, y: self.bounds.midY), radius: min(bounds.width / 2, bounds.height / 2)*scale, startAngle: 0, endAngle: endAngle, clockwise: true)
            
            path.lineWidth = 5.0
            
            UIColor.red.set()
            
            path.stroke()
            
        } else {
            let path = UIBezierPath()
            path.addArc(withCenter: CGPoint(x: self.bounds.midX, y: self.bounds.midY), radius: min(bounds.width / 2, bounds.height / 2)*scale, startAngle: 0, endAngle: CGFloat(2 * CGFloat.pi), clockwise: true)
            path.lineWidth = 5.0
            
            UIColor.red.set()
            
            path.stroke()
        }
    }
    
    
}

