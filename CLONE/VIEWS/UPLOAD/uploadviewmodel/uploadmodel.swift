//
//  uploadmodel.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import Foundation
import FirebaseFirestoreSwift
import Firebase




struct UploadModel:Identifiable,Decodable,Hashable{
    
    @DocumentID var id:String?
    var photo:String?
    var caption:String
    var name:String
    var Time:Timestamp
    var Tag:[String]?
    var didLike:Bool? = false
    var Likes:Int
 
    
    
    
}
