//
//  LoginViewController.swift
//  Smack
//
//  Created by Wang, Zewen on 2018-02-09.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func toCreateAccountButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_CREATEACCOUNT, sender: self)
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        guard let email = userNameTextField.text , userNameTextField.text != "" else{return}
         guard let password = passwordTextField.text , passwordTextField.text != "" else{return}
        AuthService.instance.loginUser(email: email, password: password) { (success) in
            if success{
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success{
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.activityIndicator.isHidden = true
                        self.activityIndicator.stopAnimating()
                        print("successLogin")
                        self.dismiss(animated: true, completion: nil)
                    }
                })
            }
        }
        
    }
    func setUpView(){
        activityIndicator.isHidden = true
        userNameTextField.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.2588235294, green: 0.3294117647, blue: 0.7254901961, alpha: 1)])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.2588235294, green: 0.3294117647, blue: 0.7254901961, alpha: 1)])
    }
}
