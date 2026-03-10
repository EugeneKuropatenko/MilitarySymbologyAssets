// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

//public extension Bundle {
//    static let militarySymbologyAssets = Bundle.module
//}
//
public extension Bundle {
    static let militarySymbologyAssets: Bundle = {
        let bundleName = "Resources"
        
        guard let bundleURL = Bundle.module.url(forResource: bundleName, withExtension: "bundle"),
              let resourceBundle = Bundle(url: bundleURL) else {
            return Bundle.module
        }
        return resourceBundle
    }()
}
