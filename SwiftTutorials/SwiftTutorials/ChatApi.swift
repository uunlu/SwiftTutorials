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

}
