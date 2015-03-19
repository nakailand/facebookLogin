//
//  ViewController.swift
//  TestFacebook
//
//  Created by nakazy on 2015/03/20.
//  Copyright (c) 2015年 nakazy. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        FacebookLogin.login()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

