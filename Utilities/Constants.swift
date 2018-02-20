//
//  Constants.swift
//  Smack
//
//  Created by Wang, Zewen on 2018-02-09.
//

import Foundation

let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notificationUSerDataChanged")
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
let BASE_URL = "https://smackisachatapp.herokuapp.com/api/"
let URL_REGISTER = BASE_URL + "/register" // check postman's url for registration
let URL_LOGIN = "\(BASE_URL)" + "/login"
//let URL_USER_ADD = "\(BASE_URL)" + "/register"
//let URL_USER_BY_EMAIL = "\(BASE_URL)" + "user/byEmail/"

//Headers
let HEADER = ["Content-Type" : "application/json; charset=utf-8"]//check postman's header
let BEARER_HEADER = [
    "Authorization":"Bearer \(AuthService.instance.authToken)",
    "Content-Type": "application/json; charset=utf-8"
]
