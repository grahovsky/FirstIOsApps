//
//  ViewController.swift
//  FirstIOSApps
//
//  Created by Konstantin on 12.09.2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var returnedLabel: UILabel!
    
    @IBAction func sendPressed(button: UIButton){
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func uwindToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "uwindSegue" else {return}
        guard let svc = segue.source as? SecondViewController else {return}
        
        returnedLabel.text = svc.label.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

