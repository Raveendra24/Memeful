//
//  ViewController.swift
//  Memeful
//
//  Created by Raveendra on 14/12/19.
//  Copyright © 2019 Raveendra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        TokenProvider.shared.requestToken()
    }
    
    func setup() {
        TokenProvider.shared.tokenDelegate = self
        self.loginButton.layer.cornerRadius = 5
        self.loginButton.clipsToBounds = true
    }
}

extension ViewController: TokenDelegate {
    func loginSuccessfull() {
        let listVC = self.storyboard?.instantiateViewController(withIdentifier: "MemeListViewController") as! MemeListViewController
        self.navigationController?.pushViewController(listVC, animated: true)
    }
}

