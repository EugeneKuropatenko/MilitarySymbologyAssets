//
//  MilitarySymbologyAssets.swift
//  MilitarySymbologyAssets
//
//  Created by Ukropsoft
//

import Foundation
import MilitaryAssetsDB

public extension Bundle {
    static let militarySymbologyAssets: Bundle = {
        let frameworkName = "MilitaryAssetsDB.framework"
        
        if let frameworksURL = Bundle.main.privateFrameworksURL {
            let bundleURL = frameworksURL.appendingPathComponent(frameworkName)
            if let bundle = Bundle(url: bundleURL) {
                return bundle
            }
        }
        
        if let bundleURL = Bundle.main.url(forResource: "MilitaryAssetsDB", withExtension: "framework"),
           let bundle = Bundle(url: bundleURL) {
            return bundle
        }
        
        print("🛑 Fatal Error: MilitaryAssetsDB.framework can not be found in the main bundle. Please ensure that MilitaryAssetsDB is properly linked and included in the app bundle.")
        return Bundle.main
    }()
}
