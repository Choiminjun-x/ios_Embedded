//
//  ViewController.swift
//  ios_Embedded
//
//  Created by 최민준 on 2021/07/18.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let pageView: LoginView = .init()
    
    override func loadView() {
        self.view = pageView.self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }


}

