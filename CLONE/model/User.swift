//
//  User.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import Foundation
import FirebaseFirestoreSwift




struct User:Identifiable,Decodable,Equatable,Hashable {
    
    @DocumentID var id:String?
    var Email:String
    var username:String
    var currentuser:Bool {
        Authviewmodel.shared.usersession?.uid == id 
    }
    
    
}
