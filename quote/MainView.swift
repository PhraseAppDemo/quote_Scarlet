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
    
    let logoImageView = UIImageView(frame: .zero)
    
    override func commonInit() {
        super.commonInit();
        self.authorLabel.text = NSLocalizedString("author1", comment: "");
        self.quoteLabel.text = NSLocalizedString("quote1", comment: "");
    }
    override func addSubviews() {
        self.addSubview(quoteLabel);
        self.addSubview(authorLabel);
        self.addSubview(logoImageView);
        
    }
    override func stylize() {
        self.backgroundColor = UIColor(red: 0.0, green: 122.0/255.0, blue: 239.0/255.0, alpha: 1.0);
        self.quoteLabel.textColor = UIColor.white;
        self.quoteLabel.textAlignment = .left;
        self.quoteLabel.font = font;
        self.quoteLabel.lineBreakMode = .byWordWrapping;
        self.quoteLabel.numberOfLines = 0;
        self.authorLabel.textColor = UIColor.white;
        self.authorLabel.textAlignment = .right;
        self.authorLabel.font = authorLabelFont;
        
        self.logoImageView.image = UIImage(named: "logo.jpg")
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
        
        self.logoImageView.snp.makeConstraints{ make in
            make.top.equalTo(self.quoteLabel.snp.bottom).offset(30)
            make.width.height.equalTo(50)
            make.centerX.equalTo(self)                        
        }
    }
    
}
