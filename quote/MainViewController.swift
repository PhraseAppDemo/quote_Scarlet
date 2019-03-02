//
//  ViewController.swift
//  quote
//
//  Created by Elina Eickstädt on 02.03.19.
//  Copyright © 2019 Elina Eickstädt. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView();
    override func loadView() {
        self.view = self.mainView;
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

