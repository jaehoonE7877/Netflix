//
//  NetflixViewController.swift
//  Netflix
//
//  Created by Seo Jae Hoon on 2022/08/21.
//

import UIKit

class NetflixViewController: BaseviewController {

    var mainView = NetflixView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func configure() {
        
    }
    
}
