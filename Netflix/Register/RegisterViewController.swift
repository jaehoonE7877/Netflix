//
//  RegisterViewController.swift
//  Netflix
//
//  Created by Seo Jae Hoon on 2022/08/22.
//

import UIKit

class RegisterViewController : BaseViewController {
    
    let mainView = RegisterView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func configure() {
        
    }
}
