//
//  TableViewAnimatuinKit.swift
//  crm
//
//  Created by yzj on 2017/11/28.
//  Copyright © 2017年 long. All rights reserved.
//

import UIKit

class TableViewAnimatuinKit: NSObject {

    class func moveAnimationWithTableView(_ tableView:UITableView) {
        let cells = tableView.visibleCells
        let totalTime = 0.3

        for i in 0 ..< cells.count {
            let cell = tableView.visibleCells[i]
            cell.transform = CGAffineTransform(translationX: -565, y: 0)
            UIView.animate(withDuration: totalTime, delay: (Double(i) * totalTime/Double(cells.count)), usingSpringWithDamping: 0.7, initialSpringVelocity: 1/0.7, options: .curveEaseIn, animations: {
                cell.transform = __CGAffineTransformMake(1, 0, 0, 1, 0, 0)
            }, completion: { (finish) in
                
            })
        }
    }
    
    class func alphaAnimationWithTableView(_ tableView:UITableView) {
        let cells = tableView.visibleCells
        let totalTime = 0.3

        for i in 0 ..< cells.count {
            let cell = tableView.visibleCells[i]
            cell.alpha = 0.0
            UIView.animate(withDuration: totalTime, delay: TimeInterval(Float(i)*0.05), options: .curveEaseInOut, animations: {
                cell.alpha = 1.0
            }, completion: { (finish) in
                
            })
        }
    }
    
    class func fallAnimationWithTableView(_ tableView:UITableView) {
        let cells = tableView.visibleCells
        let totalTime = 0.7
        for i in 0 ..< cells.count {
            let cell = tableView.visibleCells[i]
            cell.transform = CGAffineTransform(translationX: 0, y: -kScreenHeight())
            UIView.animate(withDuration: totalTime, delay: (Double(i) * totalTime/Double(cells.count)), usingSpringWithDamping: 0.3, initialSpringVelocity: 1/0.7, options: .curveEaseIn, animations: {
                cell.transform = __CGAffineTransformMake(1, 0, 0, 1, 0, 0)
            }, completion: { (finish) in
                
            })
        }
    }
    
    class func shakeAnimationWithTableView(_ tableView:UITableView) {
        let cells = tableView.visibleCells
        let totalTime = 0.5

        for i in 0 ..< cells.count {
            let cell = tableView.visibleCells[i]
            
            if 1%2 == 0 {
                cell.transform = CGAffineTransform(translationX: -565, y: 0)
            } else {
                cell.transform = CGAffineTransform(translationX: 565, y: 0)
            }
            
            UIView.animate(withDuration: totalTime, delay: (Double(i) * 0.05), usingSpringWithDamping: 0.7, initialSpringVelocity: 1/0.7, options: .curveEaseInOut, animations: {
                cell.transform = __CGAffineTransformMake(1, 0, 0, 1, 0, 0)
            }, completion: { (finish) in
                
            })
        }
    }
    
    class func overTurnAnimationWithTableView(_ tableView:UITableView) {
        let cells = tableView.visibleCells
        let totalTime = 0.5

        for i in 0 ..< cells.count {
            let cell = tableView.visibleCells[i]
            cell.layer.opacity = 0.0
            cell.layer.transform = CATransform3DMakeRotation(CGFloat(M_PI), 1, 0, 0)
            
            UIView.animate(withDuration: 0.5, delay: (Double(i) * totalTime/Double(cells.count)), usingSpringWithDamping: 0.7, initialSpringVelocity: 1/0.7, options: .curveEaseIn, animations: {
                cell.layer.opacity = 1.0
                cell.layer.transform = CATransform3DIdentity
            }, completion: { (finish) in
                
            })
        }
    }
    
    class func toTopAnimationWithTableView(_ tableView:UITableView) {
        let cells = tableView.visibleCells
        let totalTime = 0.8

        for i in 0 ..< cells.count {
            let cell = tableView.visibleCells[i]
            cell.transform = CGAffineTransform(translationX: 0, y: kScreenHeight())
            UIView.animate(withDuration: totalTime, delay: (Double(i) * totalTime/Double(cells.count)), usingSpringWithDamping: 0.7, initialSpringVelocity: 1/0.7, options: .curveEaseOut, animations: {
                cell.transform = __CGAffineTransformMake(1, 0, 0, 1, 0, 0)
            }, completion: { (finish) in
                
            })
        }
    }
    
    class func springListAnimationWithTableView(_ tableView:UITableView) {
        let cells = tableView.visibleCells
        let totalTime = 0.4

        for i in 0 ..< cells.count {
            let cell = tableView.visibleCells[i]
            cell.layer.opacity = 0.7
            cell.layer.transform = CATransform3DMakeTranslation(0, -kScreenHeight(), 20)
            
            UIView.animate(withDuration: totalTime, delay: (Double(i) * totalTime/Double(cells.count)), usingSpringWithDamping: 0.7, initialSpringVelocity: 1/0.7, options: .curveEaseIn, animations: {
                cell.layer.opacity = 1.0
                cell.layer.transform = CATransform3DMakeTranslation(0, 0, 20)
            }, completion: { (finish) in
                
            })
        }
    }
    
    class func shrinkToTopAnimationWithTableView(_ tableView:UITableView) {
        let cells = tableView.visibleCells
        let totalTime = 0.5

        for i in 0 ..< cells.count {
            let cell = tableView.visibleCells[i]
            let rect = cell.convert(cell.bounds, from: tableView)
            cell.transform = CGAffineTransform(translationX: 0, y: -rect.origin.y);
            
            UIView.animate(withDuration: totalTime, animations: {
                cell.transform = __CGAffineTransformMake(1, 0, 0, 1, 0, 0)
            })            
        }
    }
    
    class func layDonwAnimationWithTableView(_ tableView:UITableView) {
        let cells = tableView.visibleCells
        var rectArr = [AnyObject]()
        let totalTime = 0.3

        for i in 0 ..< cells.count {
            let cell = tableView.visibleCells[i]
            var rect = cell.frame
            rectArr.append(rect as AnyObject)
            rect.origin.y = CGFloat(i * 10)
            cell.frame = rect
            cell.layer.transform = CATransform3DMakeTranslation(0, 0, CGFloat(i*5))
        }
        
        for i in 0 ..< cells.count {
            let cell = tableView.visibleCells[i]
            let rect = rectArr[i]
            
            UIView.animate(withDuration: totalTime, delay: (Double(i) * totalTime/Double(cells.count)), usingSpringWithDamping: 0.7, initialSpringVelocity: 1/0.7, options: .curveEaseIn, animations: {
                cell.frame = rect as! CGRect
            }, completion: { (finish) in
                cell.layer.transform = CATransform3DIdentity
            })
        }
    }
    
    class func roteAnimationWithTableView(_ tableView:UITableView) {
        let cells = tableView.visibleCells
        
        let animation = CABasicAnimation.init(keyPath: "transform.rotation.y")
        animation.fromValue = [-Double.pi]
        animation.toValue = 0
        animation.duration = 0.5
        animation.isRemovedOnCompletion = false
        animation.repeatCount = 3
        animation.fillMode = kCAFillModeForwards
        animation.autoreverses = false
        
        for i in 0 ..< cells.count {
            let totalTime = 0.3
            let cell = tableView.visibleCells[i]
            cell.alpha = 0.0
            
            UIView.animate(withDuration: totalTime, delay: (Double(i) * 0.3),  options: .curveEaseInOut, animations: {
                cell.alpha = 1.0
            }, completion: { (finish) in
                cell.layer.animation(forKey: "rotationYkey")
            })
        }
    }
}
