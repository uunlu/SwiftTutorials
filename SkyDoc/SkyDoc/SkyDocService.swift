//
//  SkyDocService.swift
//  SkyDoc
//
//  Created by arbenjusufhayati on 5/22/16.
//  Copyright © 2016 Versus UE. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire
import Foundation


class SkyDocService
{
    let skydocUrlProd = "https://skydoc.us/api/"
    let resourceAuthenticate = "authenticate"
    let states = "states"
    let resourcePatientQueuePhysicianswaitingforappointment = "patient/queue/physiciansWaitingForAppointment";
    
    let username = "ingrid@bluedressinc.com"
    let password = "alwaysdotherightthingforothers*777"
    
    let apiKey:[String:String] = ["publishKey": "pub-c-7d79a83f-c1b1-4310-8529-40133dbb1e08", "subscribeKey": "sub-c-abbdf782-9833-11e5-baf7-02ee2ddab7fe"]
    
    func getAvailablePhysiciansForPatient()
    {
        login(){
            data, error in
            print(data)
        }
    }
   
    func login(completionHandler: (NSArray?, NSError?) -> Void) {
        
             let params = ["username":username, "password":password]
        
        let login = "\(skydocUrlProd)\(resourceAuthenticate)"
        
        Alamofire.request(.POST, login, parameters: params,encoding: ParameterEncoding.URL, headers: ["X-API-KEY": apiKey["publishKey"]!, "Accept application" : "json"]).response() {
            request, response, data, error in
            print(response?.statusCode)
            
            if let receivedResults = data
            {
//                print(receivedResults)
                let jObject = response?.allHeaderFields;
                let json = JSON(jObject!)
               // print(json["Etag"])

            }
        }
        
    }

        
        
        func getOrders(completionHandler: (NSArray?, NSError?) -> ()) {
            let statesUrl = "\(self.skydocUrlProd)\(self.states)"
            makeCall(statesUrl, completionHandler: completionHandler)
        }
        
        func makeCall(url: String, completionHandler: (NSArray?, NSError?) -> ()) {
            let params = ["username":username, "password":password]
            
            
            Alamofire.request(.GET, url, parameters: params)
                // .authenticate(user: consumerKey, password: consumerSecret)
                .responseJSON { response in
                    switch response.result {
                    case .Success(let value):
                        completionHandler(value as? NSArray, nil)
                        //                    completionHandler(value as! ))
                    //print(response)
                    case .Failure(let error):
                        completionHandler(nil, error)
                    }
            }
}

}

