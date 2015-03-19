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
        let facebookLoginButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        facebookLoginButton.setTitle("Sign in With Facebook", forState: .Normal)
        facebookLoginButton.addTarget(self, action: "loginWithFacebook", forControlEvents: .TouchUpInside)
        facebookLoginButton.backgroundColor = UIColor.blueColor()
        facebookLoginButton.center.x = self.view.center.x
        facebookLoginButton.center.y = self.view.center.y
        self.view.addSubview(facebookLoginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loginWithFacebook() {
        FacebookLogin.login()
    }
}

