//
//  AuthService.swift
//  Smack
//
//  Created by Wang, Zewen on 2018-02-11.
//

import Foundation
import Alamofire
class AuthService{
    static let instance = AuthService()
    let defaults = UserDefaults.standard // create singleton so that these varialbe can be accessed by other files
    var isLoggedIn : Bool {
        get{
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set{
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    var authToken: String{
        get{
            return defaults.value(forKey: TOKEN_KEY) as! String
        }
        set{
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    var userEmail: String{
        get{
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        set{
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    // use Alamofire to create the web request and write the body and header...
    func registerUser(email: String, password: String, completion: @escaping CompletionHandler){ // escaping is a key word that we need for completion
        let lowerCasedEmail = email.lowercased()
        let header = [
            "Content-Type" : "application/json; charset=utf-8" //check postman's header
        ]
        let body: [String:Any] = [
            "email":lowerCasedEmail,
            "password":password
        ]
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString { (response) in
            if response.result.error == nil{
                completion(true)
            }else{
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
}
