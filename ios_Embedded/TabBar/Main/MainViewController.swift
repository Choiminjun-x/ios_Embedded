//
//  MainViewController.swift
//  ios_Embedded
//
//  Created by 최민준 on 2021/08/07.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - Properties
    private let pageView: MainView = .init()
    
    //MARK: - LifeCycle
    override func loadView() {
        self.view = pageView.self
        //민준
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //취업시켜주삼
    }
}
