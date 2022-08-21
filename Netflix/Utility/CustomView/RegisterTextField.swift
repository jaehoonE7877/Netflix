//
//  RegisterTextField.swift
//  Netflix
//
//  Created by Seo Jae Hoon on 2022/08/22.
//

import UIKit

class RegisterTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = .lightGray
        textAlignment = .center
        borderStyle = .none
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        font = .boldSystemFont(ofSize: 15)
    }
}
