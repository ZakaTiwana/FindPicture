//
//  Resources+Font.swift
//  

import UIKit

extension Resource {
    
    enum Font: Int, CaseIterable {
        
        case h1
        case h2
        case b1
        case b2
        
        var font: (name: String, size: CGFloat) {
            switch self {
            case .h1: return ("Poppins-SemiBold", 18)
            case .h2: return ("Poppins-SemiBold", 16)
            case .b1: return ("Poppins-Regular", 14)
            case .b2: return ("Poppins-Regular", 10)
            }
        }
    }
}

extension UIFont {
    static func resource(_ resource: Resource.Font) -> UIFont {
        return UIFont(name: resource.font.name, size: resource.font.size)!
    }
}
