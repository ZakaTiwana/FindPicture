//
//  Resources+Color.swift
//  
//

import UIKit

enum Resource {
    
    enum Color: Int, CaseIterable {
        case primary
        case secondary
        case card
        case grey
        case greyLight
        
        var filename: String {
            switch self {
            case .primary: return "primary"
            case .secondary: return "secondary"
            case .card: return "card-color"
            case .grey: return "grey"
            case .greyLight: return "grey-light"
            }
        }
    }
}

extension UIColor {
    static func resource(_ resource: Resource.Color) -> UIColor {
        return UIColor(named: resource.filename)!
    }
}
