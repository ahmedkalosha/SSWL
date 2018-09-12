//
//  Api.swift
//  SSWL
//
//  Created by Ahmed on 9/7/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Api: NSObject {
    
    class func LogIn(email:String , password:String , completion : @escaping (_ error:Error , _ success:Bool) -> Void){
    let url = "https://sswls.com/oauth/token"
        let headers = ["Accept" :"application/json"]
        Alamofire.request(url, method: .post, encoding: URLEncoding.default, headers: headers).responseJSON { response in
            switch response.result {
                
            case .failure(let error) :completion(error, false)
            print("error")
            
            case .success(let value) :
              
                print("value")
                
                
            }
        }
    }
    class func Regster(name:String, email:String , password:String , confirmPassword:String , completion : @escaping (_ error:Error , _ success:Bool) -> Void){
        let url = "https://sswls.com/api/registration"
        let headers = ["Accept" :"application/json" , "Content-Type" : "application/json"]
        Alamofire.request(url, method: .post, encoding: URLEncoding.default, headers: headers).responseJSON { response in
            switch response.result {
                
            case .failure(let error) :completion(error, false)
            print("error")
                
            case .success(let value) :
                
                print("value")
                
                
            }
        }
    }
    
        
        
        
    }
    
    


