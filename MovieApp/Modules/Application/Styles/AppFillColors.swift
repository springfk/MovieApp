//
//  AppFillColors.swift
//  MovieApp
//
//  Created by Farshad Mousalou on 3/26/24.
//

import Foundation
import UIKit.UIColor

enum AppFillColors: Int, Color {
    
    case primary
    case secondary
    
    var color: UIColor {
        switch self {
        case .primary:
            UIColor(lightHex: "#D8D8D8", darkHex: "#262626") ?? UIColor(rgb: 0xd8d8d8)
        case .secondary:
            UIColor(lightHex: "#BFBFBF", darkHex: "#3F3F3F") ?? UIColor(rgb: 0xbfbfbf)
        }
    }
    
    var hexColor: String {
        color.hexString
    }
    
}

extension UIColor {
    
    static let primaryFillColor = AppFillColors.primary.color
    static let secondaryFillColor = AppFillColors.secondary.color
}
