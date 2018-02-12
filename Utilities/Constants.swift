//
//  Constants.swift
//  Smack
//
//  Created by Wang, Zewen on 2018-02-09.
//

import Foundation

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATEACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//userdefaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

typealias CompletionHandler = (_ Success: Bool) -> () //type is  a simple closure, when the request is done ... check a request is successful or not

//URL constants
let BASE_URL = "https://smackisachatapp.herokuapp.com/v1"
let URL_REGISTER = BASE_URL + "/account/register" // check postman's url for registration
