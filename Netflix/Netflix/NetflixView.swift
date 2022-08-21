//
//  NetflixView.swift
//  Netflix
//
//  Created by Seo Jae Hoon on 2022/08/21.
//

import UIKit


class NetflixView: BaseView {
    
    static let circleSize = (UIScreen.main.bounds.width / 3) - 12
    
    let backgroundImageView =  UIImageView().then {
        $0.image = UIImage(named: "Netflix\(Int.random(in: 1...20))")
        $0.contentMode = .scaleAspectFill
    }
    
    let backgroungBlurView = UIImageView().then {
        $0.image = UIImage(named: "background")
    }
    
    let bottomBlackView = UIView().then {
        $0.backgroundColor = .black
    }
    
    let nButton = UIButton().then {
        $0.setTitle("N", for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 40)
        $0.tintColor = .white
    }
    
    let tvButton = UIButton().then {
        $0.setTitle("TV 프로그램", for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 14)
        $0.tintColor = .white
    }
    
    let movieButton = UIButton().then {
        $0.setTitle("영화", for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 14)
        $0.tintColor = .white
    }
    
    let myContentButton = UIButton().then {
        $0.setTitle("내가 찜한 컨텐츠", for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 14)
        $0.tintColor = .white
    }
    
    let checkImageView = UIImageView().then {
        $0.image = UIImage(named: "check")
    }
    
    let checkLabel = UILabel().then {
        $0.text = "내가 찜한 콘텐츠"
        $0.textAlignment = .center
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 12)
    }
    
    let checkButton = UIButton().then {
        $0.setTitle("", for: .normal)
    }
    
    let playButton = UIButton().then {
        $0.setBackgroundImage(UIImage(named: "play_normal"), for: .normal)
        $0.setBackgroundImage(UIImage(named: "play_highlighted"), for: .highlighted)
    }
    
    let infoImageView = UIImageView().then {
        $0.image = UIImage(named: "info")
    }
    let infoLabel = UILabel().then {
        $0.text = "정보"
        $0.textAlignment = .center
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 12)
    }
    let infoButton = UIButton().then {
        $0.setTitle("", for: .normal)
    }
    
    let previewLabel = UILabel().then {
        $0.text = "미리보기"
        $0.textAlignment = .center
        $0.textColor = .white
        $0.font = .boldSystemFont(ofSize: 20)
    }
    
    let previewLeftImageView: UIImageView = {
        let view = CircleImageView(frame: CGRect(x: 0, y: 0, width: circleSize, height: circleSize))
        view.image = UIImage(named: "Netflix1")
        return view
    }()
    
    let previewCenterImageView: UIImageView = {
        let view = CircleImageView(frame: CGRect(x: 0, y: 0, width: circleSize, height: circleSize))
        view.image = UIImage(named: "Netflix2")
        return view
    }()
    
    let previewRightImageView: UIImageView = {
        let view = CircleImageView(frame: CGRect(x: 0, y: 0, width: circleSize, height: circleSize))
        view.image = UIImage(named: "Netflix3")
        return view
    }()
    
    lazy var topStackView = UIStackView(arrangedSubviews: [tvButton, movieButton, myContentButton]).then {
        $0.axis = .horizontal
        $0.spacing = 20
        $0.distribution = .equalSpacing
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func configureUI() {
        [backgroundImageView, bottomBlackView].forEach { self.addSubview($0)}
        backgroundImageView.addSubview(backgroungBlurView)
        bottomBlackView.addSubview(backgroungBlurView)
        
        [nButton, topStackView, checkImageView, checkLabel, playButton, infoImageView, infoLabel, previewLabel, previewLeftImageView, previewCenterImageView, previewRightImageView].forEach { backgroungBlurView.addSubview($0)
        }
        checkLabel.addSubview(checkButton)
        infoLabel.addSubview(infoButton)
        
    }
    
    override func setConstraints() {
        
        backgroundImageView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(self).multipliedBy(0.78)
        }
        
        bottomBlackView.snp.makeConstraints { make in
            make.top.equalTo(backgroundImageView.snp.bottom)
            make.left.right.bottom.equalToSuperview()
        }
        
        backgroungBlurView.snp.makeConstraints { make in
            make.edges.equalTo(backgroundImageView)
        }
        
        nButton.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leading.equalTo(12)
        }
        
        topStackView.snp.makeConstraints { make in
            make.centerY.equalTo(nButton)
            make.right.equalTo(-24)
        }
        
        checkLabel.snp.makeConstraints { make in
            make.bottom.equalTo(bottomBlackView.snp.top).offset(-40)
            make.centerX.equalTo(self).offset(-UIScreen.main.bounds.width / 3)
        }
        
        checkImageView.snp.makeConstraints { make in
            make.centerX.equalTo(checkLabel)
            make.bottom.equalTo(checkLabel.snp.top).offset(-8)
        }
        
        checkButton.snp.makeConstraints { make in
            make.bottom.left.right.equalTo(checkLabel)
            make.top.equalTo(checkImageView)
        }
        
        playButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(checkButton)
        }
        
        infoLabel.snp.makeConstraints { make in
            make.bottom.equalTo(bottomBlackView.snp.top).offset(-40)
            make.centerX.equalTo(self).offset(UIScreen.main.bounds.width / 3)
        }
        
        infoImageView.snp.makeConstraints { make in
            make.centerX.equalTo(infoLabel)
            make.bottom.equalTo(infoLabel.snp.top).offset(-8)
        }
        
        infoButton.snp.makeConstraints { make in
            make.bottom.left.right.equalTo(infoLabel)
            make.top.equalTo(infoImageView)
        }
        
        previewLabel.snp.makeConstraints { make in
            make.left.equalTo(4)
            make.top.equalTo(bottomBlackView.snp.top).offset(8)
        }
        
        previewCenterImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(previewLabel.snp.bottom).offset(8)
            make.width.equalTo(NetflixView.circleSize)
            make.height.equalTo(previewCenterImageView.snp.width)
        }
        
        previewLeftImageView.snp.makeConstraints { make in
            make.centerY.equalTo(previewCenterImageView)
            make.right.equalTo(previewCenterImageView.snp.left).offset(-8)
            make.width.equalTo(previewCenterImageView.snp.width)
            make.height.equalTo(previewCenterImageView.snp.height)
        }
        
        previewRightImageView.snp.makeConstraints { make in
            make.centerY.equalTo(previewCenterImageView)
            make.left.equalTo(previewCenterImageView.snp.right).offset(8)
            make.width.equalTo(previewCenterImageView.snp.width)
            make.height.equalTo(previewCenterImageView.snp.height)
        }
    }
}
