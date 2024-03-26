//
//  AppTextStyle.swift
//  MovieApp
//
//  Created by Farshad Mousalou on 3/26/24.
//

import Foundation
import UIKit

enum AppTextStyle {
    
    case title1
    case title1Bold
    case title2
    case title2Bold
    case title3
    case title3Bold
    case body1
    case body1Bold
    case body2
    case body2Bold
    case body3
    case body3Bold
    case body4
    case body4Bold
    
    var textStyle: TextStyle {
        createTextStyle()
    }
    
    private func createTextStyle() -> TextStyle {
        var fontName: String
        var size: CGFloat
        var lineHeight: CGFloat
        var weight: TextStyle.Weight
        var kernel: CGFloat
        var offset: CGFloat
        fatalError("Implement me")
        return DefaultTextStyle(fontName: fontName,
                                size: size,
                                weight: weight,
                                lineHeight: lineHeight,
                                kernel: kernel,
                                baselineOffset: offset)
    }
    
}
