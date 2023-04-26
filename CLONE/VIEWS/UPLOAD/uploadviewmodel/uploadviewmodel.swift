//
//  uploadviewmodel.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import Foundation
import Firebase



class uploadviewmodel :ObservableObject {
    
    
    
    
    func uploadpost(photo:UIImage?,caption:String,taggedusers:[User]) {
        guard let photo = photo else { return }
        
        guard let uid = Authviewmodel.shared.usersession?.uid else { return }
        guard let user = Authviewmodel.shared.currentUser else { return }
        
        
        ImageUploader.uploadImage(image:photo) {item  in
            
            
            
            let data  = ["photo":item,
                         "caption":caption,
                         "Time":Timestamp(date:Date()),
                         "name":user.username,
                         "Likes":0,
                         "didLike":false,
                         "Tag":taggedusers.map({$0.username})
            
            
            
            
            ]as [String:Any]
            
           
            
            Firestore.firestore().collection("users").document(uid).collection("posts").addDocument(data:data) {_ in
                
                
                Firestore.firestore().collection("posts").addDocument(data: data) {_ in
                    
                    
                    
                    
                }
                
                
                
                
                
            }
            
            
            
        }
        
        
    }
    
    
    
    
//    func fetchtaggerpeople(post:UploadModel,people:[User]) {
//        
//        guard let taggerpeople = post.Tag else { return }
//        
//        Firestore.firestore().collection("posts").document(taggerpeople).getDocument { query , error in
//            
//            
//            
//        }
//        
//        
//        
//        
//        
//    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
