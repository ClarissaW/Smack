//
//  ChannelViewController.swift
//  Smack
//
//  Created by Wang, Zewen on 2018-02-08.
//

import UIKit

class ChannelViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.width - 60
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelViewController.userDataDidChange(_:)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: self)
    }
    @objc func userDataDidChange(_ notif: Notification){
        if AuthService.instance.isLoggedIn{
            loginButton.setTitle(UserDataService.instance.name, for: .normal)
            //UI image
        }else{
            loginButton.setTitle("Login", for: .normal)
            //UI image
        
        }
    }
}
