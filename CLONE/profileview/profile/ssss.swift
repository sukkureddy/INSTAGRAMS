//
//  ssss.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/27/23.
//

import Foundation
import Firebase

class ssssss:ObservableObject {
    
    let post:UploadModel
    
    init(post: UploadModel) {
        self.post = post
       
    }
    
    
    func ss() {
        
        guard let uid = Authviewmodel.shared.usersession?.uid else { return }
        
        
        let data =  ["photo":post.photo!
                     
                     
        ] as [String:Any]
        
        Firestore.firestore().collection("users").document(uid).collection("saved").document().setData(data) {_ in
            
            
            
            
        }
    }
    
}
