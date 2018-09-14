//
//  SecondViewController.swift
//  FirstIOSApps
//
//  Created by Konstantin on 13.09.2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sendPressed(button: UIButton){
        performSegue(withIdentifier: "uwindSegue", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else {return}
        label.text = "Hello , \(login)"
    }
    
}
