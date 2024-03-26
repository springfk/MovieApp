//
//  AppTintColors.swift
//  MovieApp
//
//  Created by Farshad Mousalou on 3/26/24.
//

import Foundation
import UIKit

enum AppTintColors: String, Color {
    
    case primary
    case secondary
    case tertiary
    case white
    case red
    case blue
    case green
    case yellow
    
    var color: UIColor {
        rawValue.color
    }
    
    var hexColor: String {
        rawValue.hexColor
    }
}

/* Convenient way to access to the app colors */
extension UIColor {
    
    static let primary = AppTintColors.primary.color
    static let secondary = AppTintColors.secondary.color
    static let tertiary = AppTintColors.tertiary.color
    
    static let tintWhite = AppTintColors.white.color
    static let tintRed = AppTintColors.red.color
    static let tintBlue = AppTintColors.blue.color
    static let tintGreen = AppTintColors.green.color
    static let tintYellow = AppTintColors.yellow.color
    
}
