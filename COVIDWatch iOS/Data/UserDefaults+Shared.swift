//
//  Created by Zsombor Szabo on 04/07/2018.
//  Copyright © 2018 IZE. All rights reserved.
//

import Foundation

extension UserDefaults {        
    
    public static let shared: UserDefaults = .standard
    
    public struct Key {
        public static let isCurrentUserSick = "isCurrentUserSick"
        public static let wasCurrentUserNotifiedOfExposure = "wasCurrentUserNotifiedOfExposure"
        
        public static let registration: [String : Any] = [
            isCurrentUserSick: false,
            wasCurrentUserNotifiedOfExposure: false,
        ]
    }
    
    @objc dynamic public var isCurrentUserSick: Bool {
        get {
            return bool(forKey: Key.isCurrentUserSick)
        }
        set {
            setValue(newValue, forKey: Key.isCurrentUserSick)
        }
    }
    
    @objc dynamic public var wasCurrentUserNotifiedOfExposure: Bool {
        get {
            return bool(forKey: Key.wasCurrentUserNotifiedOfExposure)
        }
        set {
            setValue(newValue, forKey: Key.wasCurrentUserNotifiedOfExposure)
        }
    }
    
}
