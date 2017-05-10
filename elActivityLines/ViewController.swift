//
//  ViewController.swift
//  elActivityLines
//
//  Created by Santosh Guruju  | MACROKIOSK on 10/05/2017.
//  Copyright © 2017 workstreak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect(origin: CGPoint(x: 10,y :20), size: CGSize(width: 300, height: 600))
        let timeline = elTimeline(frame: frame)
        timeline.backgroundColor = .clear
        timeline.bubbleColor = .green
        let point = elPoint(title: "Activity One")
        
        point.description = "Sample Description"
        point.lineColor = .red
        point.fill = true
        point.pointColor = .darkText
        self.view.addSubview(timeline)
        
        let point2 = elPoint(title: "Activity Two")
        point2.description = "Sample Description"
        point2.lineColor = .red
        point2.fill = true
        point2.pointColor = .darkText
        
        let myPoints = [
            elPoint(title: "first set node"),
            elPoint(title: "second set node"),
            elPoint(title: "third set node")
        ]
        timeline.points = [point,point2]
        timeline.points.append(contentsOf: myPoints)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

