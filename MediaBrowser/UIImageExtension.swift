//
//  UIImageExtension.swift
//  MediaBrowser
//
//  Created by Seungyoun Yi on 2017. 9. 6..
//  Copyright © 2017년 Seungyoun Yi. All rights reserved.
//
//

import Foundation

public extension UIImage {
    /// Get bundle Image or return nil when it is not exist
//    class func imageForResourcePath(name: String, inBundle: Bundle) -> UIImage? {
//        return UIImage(named: name, in: inBundle, compatibleWith: nil)
//    }

    class func br_bundleImage(named name: String) -> UIImage? {
        // As clumsy as it is, this seems to be the way to access images
        // when using resource_bundle.
        //
        // https://github.com/CocoaPods/CocoaPods/issues/1892#issuecomment-232931856

        guard let bundlePath = Bundle.main.path(forResource: "MediaBrowser", ofType: "bundle"),
              let bundle = Bundle(path: bundlePath) else {
            return nil
        }

        return UIImage(named: name, in: bundle, compatibleWith: nil)
    }
}
