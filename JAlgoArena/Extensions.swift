//
//  Extensions.swift
//  JAlgoArena
//
//  Created by Maciej Łobodziński on 20/01/2018.
//  Copyright © 2018 Maciej Łobodziński. All rights reserved.
//

import Foundation
import UIKit

//MARK: addSubviewWithConstraints(_:)
extension UIView {
    
    public func addSubviewWithConstraints(_ subview: UIView) {
        addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: subview.leadingAnchor, constant: 0).isActive = true
        trailingAnchor.constraint(equalTo: subview.trailingAnchor, constant: 0).isActive = true
        topAnchor.constraint(equalTo: subview.topAnchor, constant: 0).isActive = true
        bottomAnchor.constraint(equalTo: subview.bottomAnchor, constant: 0).isActive = true
    }
    
}
