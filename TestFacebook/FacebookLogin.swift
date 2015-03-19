//
//  FacebookLogin.swift
//  TestFacebook
//
//  Created by nakazy on 2015/03/20.
//  Copyright (c) 2015年 nakazy. All rights reserved.
//

import Foundation
import Accounts

class FacebookLogin {
    class func login() {
        let facebookLogin = FacebookLogin()
        let accountStore = ACAccountStore()
        let accountType = accountStore.accountTypeWithAccountTypeIdentifier(ACAccountTypeIdentifierFacebook)
        let options: [String : AnyObject] = [ACFacebookAppIdKey : "xxxxxxxxxxxxxxxx", ACFacebookAudienceKey : ACFacebookAudienceOnlyMe, ACFacebookPermissionsKey : ["email"]]
        accountStore.requestAccessToAccountsWithType(accountType, options: options) {
            granted, error in
            if granted {
                let facebookAccounts = accountStore.accountsWithAccountType(accountType)
                if facebookAccounts.count > 0 {
                    let facebookAccount = facebookAccounts[0] as! ACAccount
                    let email = facebookAccount.valueForKey("username") as! String
                    let facebookCredential = facebookAccount.credential
                    let accessToken = facebookCredential.oauthToken
                    println(email)
                    println(accessToken)
                    // ログイン後のViewへ遷移など
                }
            } else {
                println(error)
            }
        }
    }
}