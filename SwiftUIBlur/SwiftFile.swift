//
//  SwiftFile.swift
//  SwiftUIBlur
//
//  Created by Chris Yang on 6/29/22.
//

import Foundation
import SwiftUI
@objc
class SwiftInterface: NSObject {

  @objc func makeSwiftUI(_ name: String, inputRadius: Double) -> UIViewController{
        let details = SwiftUIView().blur(radius: inputRadius);
        return UIHostingController(rootView: details)
    }
}
