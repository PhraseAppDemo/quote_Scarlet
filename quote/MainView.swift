//
//  MainView.swift
//  quote
//
//  Created by Elina Eickstädt on 02.03.19.
//  Copyright © 2019 Elina Eickstädt. All rights reserved.
//
import UIKit
import SnapKit

class MainView: BaseView {
    var quoteLabel = UILabel();
    var authorLabel = UILabel();
    let font = UIFont(name: "HelveticaNeue-Bold", size: 20)
    let authorLabelFont = UIFont(name: "HelveticaNeue-Italic", size: 15)
    
    override func commonInit() {
        super.commonInit();
        self.authorLabel.text = "Banksy";
        self.quoteLabel.text = NSLocalizedString("quote", comment: "");
    }
    override func addSubviews() {
        self.addSubview(quoteLabel);
        self.addSubview(authorLabel);
        
    }
    override func stylize() {
        self.backgroundColor = UIColor.purple;
        self.quoteLabel.textColor = UIColor.white;
        self.quoteLabel.textAlignment = .left;
        self.quoteLabel.font = font;
        self.quoteLabel.lineBreakMode = .byWordWrapping;
        self.quoteLabel.numberOfLines = 0;
        self.authorLabel.textColor = UIColor.white;
        self.authorLabel.textAlignment = .right;
        self.authorLabel.font = authorLabelFont;
    }
    override func setupConstraints() {
        self.quoteLabel.snp.makeConstraints { make in
            make.center.equalToSuperview();
            make.leading.equalToSuperview().offset(10);
            make.trailing.equalToSuperview().offset(-10);
            
        }
        self.authorLabel.snp.makeConstraints{make in
            make.top.equalTo(self.quoteLabel.snp.bottom).offset(10);
            make.trailing.equalToSuperview().offset(-10);
            make.leading.equalToSuperview();
            
        }
        
    }
    
}
