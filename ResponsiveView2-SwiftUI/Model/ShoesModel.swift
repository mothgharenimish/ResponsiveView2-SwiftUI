//
//  ShoesModel.swift
//  ResponsiveView2-SwiftUI
//
//  Created by Nimish Mothghare on 12/04/25.
//

import Foundation
import SwiftUI


struct ShoesInfo : Identifiable {
    
    let id = UUID().uuidString
    let shoesname : String
    let shoesprice : String
    let shoesImg : String
}

