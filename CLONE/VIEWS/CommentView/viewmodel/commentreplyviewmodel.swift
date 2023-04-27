//
//  commentreply.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/26/23.
//

import Foundation
import Firebase




class commentreplyviewmodel:ObservableObject {
    
    let reply:comments
    
    
    
    init(reply:comments) {
        self.reply = reply
        
        
    }
    
    
    

    
//    func commentreply(comment:String) {
//
//        guard let user = Authviewmodel.shared.currentUser else { return }
//        guard let postid = reply.post.id else { return }
//        guard let commentid = reply.id else { return }
//
//        let data  = ["comment":comment,
//                     "user" :user.username,
//                     "Time":Timestamp(date:Date()),
//                     "reply":false
//
//
//        ] as [String : Any]
//
//
//        Firestore.firestore().collection("replay").document().setData(data) {error in
//
//            print("this are comment reply working ")
//
//            if let error =  error {
//                print("there is an error in commentviewmodel\(error.localizedDescription)")
//                return
//            }
//
//
//
//        }
//
//
//
//    }
    
  }
    
    
    
    
    
    
    
    

