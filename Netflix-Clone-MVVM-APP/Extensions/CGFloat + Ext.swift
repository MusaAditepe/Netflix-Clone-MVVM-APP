//
//  CGFloat + Ext.swift
//  Netflix-Clone-MVVM-APP
//
//  Created by Musa Adıtepe on 23.08.2024.
//

import UIKit

extension UIViewController {
    var screenWidth: CGFloat {
        return view.frame.size.width
    }
    var screenHeight: CGFloat {
        return view.frame.size.height
    }
}
extension UIView {
    var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
}
