//
//  TextStyle.swift
//  MovieApp
//
//  Created by Farshad Mousalou on 3/26/24.
//

import Foundation
import UIKit

protocol TextStyle {
    
    typealias Weight = UIFont.Weight
    
    var fontName: String { get }
    var size: CGFloat { get }
    
    var weight: Weight { get }
    
    var lineHeight: CGFloat { get }
    var kernel: CGFloat { get }
    var baselineOffset: CGFloat { get }
    
}

extension TextStyle {
    
    var font: UIFont {
        guard let font = UIFont(name: fontName, size: size) else {
            assert("Could not found the font name \(fontName)")
        }
        return font
    }
    
}

protocol TextStyleable {
    
    var textStyle: TextStyle { get }
    
    func apply(textStyle: TextStyle)
    
}
