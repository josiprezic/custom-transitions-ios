//
//  ViewController.swift
//  custom-transitions-ios
//
//  Created by Josip Rezic on 13/03/2020.
//  Copyright © 2020 Josip Rezic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let contentView = View()
    
    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("View did load")
    }
}

