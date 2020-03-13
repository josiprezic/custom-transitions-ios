//
//  View.swift
//  custom-transitions-ios
//
//  Created by Josip Rezic on 13/03/2020.
//  Copyright © 2020 Josip Rezic. All rights reserved.
//

import UIKit

final class View: UIView {
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
