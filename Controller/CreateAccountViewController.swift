//
//  CreateAccountViewController.swift
//  Smack
//
//  Created by Wang, Zewen on 2018-02-09.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
        // use dismiss will come back to the previous view. dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
        guard let name = usernameTextField.text , usernameTextField.text != "" else {return}
        guard let email = emailTextField.text , emailTextField.text != "" else{return} // the coma denotes where, is used to check
        guard let password = passwordTextField.text , passwordTextField.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    if success {
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success {
                                print(UserDataService.instance.name, UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                        })
                    }
                })
            }
        }
    }
    
    @IBAction func chooseAvatarPressed(_ sender: UIButton) {
    }
    
    @IBAction func generateBGColorPressed(_ sender: UIButton) {
    }
    
    
}
