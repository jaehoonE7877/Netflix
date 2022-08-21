//
//  CircleView.swift
//  Netflix
//
//  Created by Seo Jae Hoon on 2022/08/21.
//

import UIKit

class CircleImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        layer.masksToBounds = true
        layer.borderWidth = 2
        layer.borderColor = UIColor.gray.cgColor
        layer.cornerRadius = self.frame.width / 2
        
    }
    
}
