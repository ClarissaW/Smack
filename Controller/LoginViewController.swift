//
//  LoginViewController.swift
//  Smack
//
//  Created by Wang, Zewen on 2018-02-09.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func toCreateAccountButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_CREATEACCOUNT, sender: self)
    }
    
}
