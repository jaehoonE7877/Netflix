//
//  NetflixViewController.swift
//  Netflix
//
//  Created by Seo Jae Hoon on 2022/08/21.
//

import UIKit

class NetflixViewController: BaseViewController {

    var mainView = NetflixView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func configure() {
        
        mainView.nButton.addTarget(self, action: #selector(nButtonTapped), for: .touchUpInside)
    }
    
    @objc func nButtonTapped() {
       
        print(#function)
        //vc.modalPresentationStyle = .fullScreen
        present(RegisterViewController(), animated: true)
    }
    
}
