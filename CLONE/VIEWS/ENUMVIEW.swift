//
//  ENUMVIEW.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//


import Foundation
import UIKit
import SwiftUI


enum Sheet:Int,CaseIterable {
    case Qr
    case notInterested
    case Report
    
    
    var imagetitle: String{
        switch self {
        case .Qr:
            return "qrcode.viewfinder"
        case .notInterested:
            return "eye.slash"
        case .Report:
            return "exclamationmark.bubble"
        }
        
        
    }
    
    
    var Name:String {
        switch self {
        case .Qr:
            return "QR code"
        case .notInterested:
            return "Not Interested"
        case .Report:
            return "Report"
        }
    }
    
    var color:Color {
        switch self {
        case .Qr:
            return .gray
        case .notInterested:
            return .gray
        case .Report:
            return .red
        }
        
    }
    
    
    
    
    
    
}
