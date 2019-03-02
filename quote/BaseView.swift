//
//  BaseView.swift
//  quote
//
//  Created by Elina Eickstädt on 02.03.19.
//  Copyright © 2019 Elina Eickstädt. All rights reserved.
//

import UIKit

class BaseView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    func commonInit() {
        self.addSubviews()
        self.stylize()
        self.setupConstraints()
    }
    
    func addSubviews() {/* no op */}
    func stylize() {/* no op */}
    func setupConstraints() {/* no op */}
}
