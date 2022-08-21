//
//  RegisterView.swift
//  Netflix
//
//  Created by Seo Jae Hoon on 2022/08/22.
//

import UIKit

class RegisterView : BaseView {
    
    let backgroundView = UIView().then {
        $0.backgroundColor = .black
    }
    
    let mainLabel = UILabel().then {
        $0.text = "NETFLIX"
        $0.textColor = .red
        $0.textAlignment = .center
        $0.font = .boldSystemFont(ofSize: 36)
    }
    
    let idTextField = RegisterTextField().then {
        $0.placeholder = "이메일 주소 또는 전화번호"
    }
    
    let passwordTextField = RegisterTextField().then {
        $0.placeholder = "비밀번호"
        $0.textContentType = .password
    }
    
    let nicknameTextField = RegisterTextField().then {
        $0.placeholder = "닉네임"
    }
    let locatioinTextField = RegisterTextField().then {
        $0.placeholder = "위치"
    }
    let recommandTextField = RegisterTextField().then {
        $0.placeholder = "추천 코드 입력"
    }
    
    let registerButton = UIButton().then {
        $0.setTitle("회원가입", for: .normal)
        $0.backgroundColor = .white
        $0.tintColor = .black
    }
    
    let addInfoButton = UIButton().then {
        $0.setTitle("추가 정보 입력", for: .normal)
        $0.backgroundColor = .black
        $0.tintColor = .white
    }
    
    let switchButton = UISwitch().then {
        $0.thumbTintColor = .white
        $0.onTintColor = .red
        $0.isOn = true
    }
    
    lazy var midStackView = UIStackView(arrangedSubviews: [idTextField, passwordTextField, nicknameTextField, locatioinTextField, recommandTextField]).then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
        $0.spacing = 8
        $0.distribution = .fillEqually
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func configureUI() {
        [backgroundView, mainLabel, midStackView, registerButton, addInfoButton, switchButton].forEach { self.addSubview($0) }
    }
    
    override func setConstraints() {
        
        backgroundView.snp.makeConstraints { make in
            make.edges.equalTo(self.safeAreaLayoutGuide)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(backgroundView.snp.top).offset(20)
            make.centerX.equalToSuperview()
        }
        
        midStackView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(backgroundView.snp.centerY)
            make.width.equalTo(UIScreen.main.bounds.width).multipliedBy(0.8)
            make.height.equalTo(UIScreen.main.bounds.height).multipliedBy(0.36)
        }
        
        registerButton.snp.makeConstraints { make in
            make.top.equalTo(midStackView.snp.bottom).offset(8)
            make.centerX.equalTo(midStackView)
            make.width.equalTo(midStackView.snp.width)
            make.height.equalTo(44)
        }
        
        addInfoButton.snp.makeConstraints { make in
            make.left.equalTo(registerButton.snp.left)
            make.top.equalTo(registerButton.snp.bottom).offset(16)
            make.width.equalTo(registerButton.snp.width).multipliedBy(0.4)
            make.height.equalTo(28)
        }
        
        switchButton.snp.makeConstraints { make in
            make.right.equalTo(registerButton.snp.right)
            make.centerY.equalTo(addInfoButton)
            make.width.equalTo(addInfoButton.snp.height)
        }
        
    }
}
