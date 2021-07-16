//
//  Configs.swift
//  TableviewSample
//
//  Created by xuanquynhle on 2021/04/02.
//

import Foundation

public struct Configs {
    public struct Network {
        // set true for tests and generating screenshots with fastlane
        public static var useStaging = false
        #if DEBUG
        // Link for development
        public static var baseUrl = "https://api.github.com/"
        #else
        // Link for production
        public static var baseUrl = "https://api.github.com/"
        #endif
    }
}
