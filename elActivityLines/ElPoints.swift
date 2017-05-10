//
//  ElPoints.swift
//  elActivityLines
//
//  Created by Santosh Guruju  | MACROKIOSK on 10/05/2017.
//  Copyright © 2017 workstreak. All rights reserved.
//

import Foundation
import UIKit

open class elPoint {
    
    open var title:String
    open var description:String?
    open var pointColor:UIColor
    open var lineColor:UIColor
    open var touchUpInside:Optional<(_ point:elPoint) -> Void>
    open var fill:Bool
    
    public init(title:String, description:String, pointColor:UIColor, lineColor:UIColor, touchUpInside:Optional<(_ point:elPoint) -> Void>, fill:Bool) {
        self.title = title
        self.description = description
        self.pointColor = pointColor
        self.lineColor = lineColor
        self.touchUpInside = touchUpInside
        self.fill = fill
    }
    
    public convenience init(title:String, description:String, touchUpInside:Optional<(_ point:elPoint) -> Void>) {
        let defaultColor = UIColor.init(red: 0.75, green: 0.75, blue: 0.75, alpha: 1.0)
        self.init(title: title, description: description, pointColor: defaultColor, lineColor: defaultColor, touchUpInside: touchUpInside, fill: false)
    }
    
    public convenience init(title:String, touchUpInside:Optional<(_ point:elPoint) -> Void>) {
        self.init(title: title, description: "", touchUpInside: touchUpInside)
    }
    
    public convenience init(title:String) {
        self.init(title: title, touchUpInside: nil)
    }
}
