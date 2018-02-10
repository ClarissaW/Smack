//
//  CreateAccountViewController.swift
//  Smack
//
//  Created by Wang, Zewen on 2018-02-09.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
        // use dismiss will come back to the previous view. dismiss(animated: true, completion: nil)
    }
    
}
