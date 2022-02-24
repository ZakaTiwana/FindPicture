//
//  Resource+Image.swift
//  FindPicture
//
//  Created by MacBook on 24/02/2022.
//

import Foundation
import UIKit

extension Resource {
    enum Image: Int, CaseIterable {
        case catalog
        case search
        case tick

        var filename: String {
            switch self {
            case .catalog: return "catalog"
            case .search : return "search"
            case .tick : return "tick"
            }
        }
    }
}

extension UIImage {
    static func resource(_ resource: Resource.Image) -> UIImage {
        return UIImage(named: resource.filename)!
    }
}
