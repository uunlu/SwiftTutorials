//
//  ChatApi.swift
//  SwiftTutorials
//
//  Created by uunlu on 7/2/16.
//  Copyright © 2016 Versus UE. All rights reserved.
//

import UIKit

// singleton 1
class ChatApi {

    class var sharedInsance: ChatApi {
        // singleton wraps static property
        struct Singleton {
            static let instance = ChatApi()
        }
        
        return Singleton.instance
    }

}
