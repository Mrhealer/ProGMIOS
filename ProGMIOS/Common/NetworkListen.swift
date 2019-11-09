//
//  NetworkListen.swift
//
//  Created by vu trong thien on 7/26/18.
//  Copyright © 2018 vu trong thien. All rights reserved.
//

import Reachability
import UIKit

func networkListener() {
    
    do {
        let reachability = try Reachability()
        reachability.whenReachable = { reachability in
            if reachability.connection == .wifi {
                // TODO with wifi
            } else {
                // TODO with 3G/4G
            }
        }
        reachability.whenUnreachable = { _ in
            UIAlertView(title: "Network disconnected", message: "Please connect to internet", delegate: nil, cancelButtonTitle: "OK").show()
        }
        try? reachability.startNotifier()
    } catch {
            UIAlertView(title: "Network disconnected", message: "Please connect to internet", delegate: nil, cancelButtonTitle: "OK").show()
    }
    
}
