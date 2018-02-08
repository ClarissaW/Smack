//
//  ChatViewController.swift
//  Smack
//
//  Created by Wang, Zewen on 2018-02-08.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.revealViewController().panGestureRecognizer()//swipe to show the rear screen
        self.revealViewController().tapGestureRecognizer()
        //tap to be back the front screen
        // Do any additional setup after loading the view.
    }

    
}
