//
//  commentreply.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/26/23.
//

import Foundation
import FirebaseFirestoreSwift
import Firebase




struct commentReply : Identifiable,Decodable,Hashable {
    
    @DocumentID var id:String?
    var comment:String
    var Time:Timestamp
    var reply:Bool
    
    
    
    
    
    
    
}
