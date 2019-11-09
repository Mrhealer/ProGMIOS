//
//  AppCommon.swift
//
//  Created by Mac Pro on 6/2/18.
//  Copyright © 2018 vu trong thien. All rights reserved.
//

import Foundation

class AppCommon: NSObject {
    
    class var shareInstance: AppCommon {
        struct Instance {
            static let instance = AppCommon()
        }
        return Instance.instance
    }

}
