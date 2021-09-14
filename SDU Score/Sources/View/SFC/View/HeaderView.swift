//
//  HeaderView.swift
//  SDU Score
//
//  Created by Akzhol Imangazin on 12/13/20.
//  Copyright © 2020 Akzhol Imangazin and Madi Kupessov. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - UI Components
    
    var titleLabel = UILabel().then {
        $0.textAlignment = .left
        $0.font = .systemFont(ofSize: 16)
        $0.textColor = .white
    }
}

//MARK: - ConfigUI
extension HeaderView {
    private func setupViews() {
        backgroundColor = UIColor(hexString: "#2C435B")
        addSubview(titleLabel)
        
        makeConstraints()
    }
    
    private func makeConstraints() {
        titleLabel.snp.makeConstraints { (m) in
            m.left.equalTo(5)
            m.centerY.equalToSuperview()
        }
    }
}