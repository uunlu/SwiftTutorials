//
//  ChatApi.swift
//  SwiftTutorials
//
//  Created by uunlu on 7/2/16.
//  Copyright © 2016 Versus UE. All rights reserved.
//

import UIKit


class ChatApi {

    // singleton Swift 2.0
    static let sharedInstanceSwift2 = ChatApi()
    
    // singleton Swift 1.2
    class var sharedInstance: ChatApi {
        // singleton wraps static property
        struct Singleton {
            static let instance = ChatApi()
        }
        
        return Singleton.instance
    }
    
    // singleton Objective-C way
    class var sharedInstanceObjC : ChatApi{
        struct  Static {
            static var onceToken : dispatch_once_t = 0
            static var instance : ChatApi? = nil
        }
        
        dispatch_once(&Static.onceToken){
            Static.instance = ChatApi()
        }
        
        return Static.instance!
    }

}
