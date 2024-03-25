//
//  UIViewController+Additionals.swift
//  MovieApp
//
//  Created by Farshad Mousalou on 3/25/24.
//

import Foundation
import UIKit

extension UIViewController {

    @objc
    open class var storyboardName: String {
        return "Main"
    }

    class var className: String {
        return String(describing: self)
    }
    
    class var storyboardIdentifier: String {
        return className
    }
    
    var className: String {
        return String(describing: self)
    }
}
