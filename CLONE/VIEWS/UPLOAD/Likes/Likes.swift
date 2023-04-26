//
//  Likes.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/25/23.
//

import Foundation
import SwiftUI
import Firebase


class LikeViweModel:ObservableObject {
    @Published var post : UploadModel
    
    init(post:UploadModel) {
        self.post = post
       checkLikepost()
        
    }
    
    
    
    func Likepost() {
        
        guard let id  = post.id else { return }
        
        
        Firestore.firestore().collection("posts").document(id).collection("post_likes").document(id).setData([:]) { _ in
            
            Firestore.firestore().collection("posts").document(id).updateData(["Likes":self.post.Likes + 1,"didLike":true])
            
            
            self.post.didLike = true
            self.post.Likes += 1
            
            
            
            
            
        }
        
        
        
        
    }
    
    
    
    func dislike() {
        
        guard let id  = post.id else { return }
        
        
        Firestore.firestore().collection("posts").document(id).collection("post_likes").document(id).delete{_ in
            
            Firestore.firestore().collection("posts").document(id).updateData(["Likes":self.post.Likes - 1,"didLike":false])
            
            
            self.post.didLike = false
            self.post.Likes -= 1
            
            
            
            
            
        }
    }
        
        
        
        func checkLikepost() {
            guard let id  = post.id else { return }
            Firestore.firestore().collection("posts").document(id).collection("post_likes").document(id).getDocument { quey, error in
                
                guard let didlike  = quey?.exists else { return }
                self.post.didLike = didlike
                
            }
            
        }
        
        
        
    
    
    
    
    
    
    
    
    
    
    
}

