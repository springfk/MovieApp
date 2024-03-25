//
//  SampleView.swift
//  MovieApp
//
//  Created by Farshad Mousalou on 3/7/24.
//

import Foundation
import UIKit

class SampleView: UIView {
    
    // MARK: - Object LifeCycle
    
    deinit {
        print(#function, "Called.")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print(#function, "Called.")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print(#function, "Called.")
    }
    
    // MARK: - View LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        print(#function, "Called.")
        print(clipsToBounds == layer.masksToBounds)
        
        print(type(of: layer.self))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print(#function, "Called.")
    }
    
    // * Drawing on canvas(CGContext) *
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print(#function, "Called.")
        // this method used background color property to draw the background color.
//        UIColor.red.setFill()
//        let canvas = UIGraphicsGetCurrentContext()
//        canvas?.fill([rect])
//        UIColor.blue.setFill()
//        canvas?.move(to: .zero)
//        canvas?.addLine(to: CGPoint(x: rect.width, y: rect.height))
    }
    
    override func draw(_ layer: CALayer, in ctx: CGContext) {
        super.draw(layer, in: ctx)
        print(#function, "Called.")
    }
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        print(#function, "Called.")
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        print(#function, "Called.")
    }
    
    override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
        print(#function, "Called.")
    }
    
    override func didMoveToWindow() {
        super.didMoveToWindow()
        print(#function, "Called.")
    }
    
}
