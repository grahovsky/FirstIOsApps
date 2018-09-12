//
//  ViewController.swift
//  FirstIOSApps
//
//  Created by Konstantin on 12.09.2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func pressButton(_ sender: UIButton) {
    
        label.text = "First App!"
    
    }
    
}

