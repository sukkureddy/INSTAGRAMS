//
//  commentmodel.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/26/23.
//

import Foundation
import FirebaseFirestoreSwift
import Firebase



struct comments:Identifiable,Decodable,Hashable {
    @DocumentID var id:String?
    var  comment:String
    var user:String
    var Time:Timestamp
    var reply:Bool
    
  
    
    
    
    
    
}
