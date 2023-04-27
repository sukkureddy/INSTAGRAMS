//
//  profilefiltermodel.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/27/23.
//

import Foundation



enum proilefiltermodel:Int,CaseIterable {
    
    case ownphotos
    case saved
    case taged
    
    
    
    var title:String {
        switch self {
            
        case .ownphotos:
            return "gridphotos"
        case .saved:
            return "saved"
        case .taged:
            return "taged"
        }
        
    }
    
    
    
    
}
