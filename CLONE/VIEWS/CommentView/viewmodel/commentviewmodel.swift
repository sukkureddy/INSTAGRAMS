//
//  commentviewmodel.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/26/23.
//

import Foundation
import Firebase


class commentviewmodel:ObservableObject{
    
    @Published var coment = [comments]()
   let  post:UploadModel
    
    
    
    
    
    init(post: UploadModel) {
        self.post = post
        fetchcomment()
    }
    
    
    
    func comment(comment:String) {
        
        guard let user = Authviewmodel.shared.currentUser else { return }
        guard let postid = post.id else { return }
        let data  = ["comment":comment,
                     "user" :user.username,
                     "Time":Timestamp(date:Date()),
                     "reply":false
                     
                     
        ] as [String : Any]
    
        
        Firestore.firestore().collection("posts").document(postid).collection("comments").addDocument(data:data) {error in
            
            if let error =  error {
                print("there is an error in commentviewmodel\(error.localizedDescription)")
                return
            }
            
            
            
        }

        
        
    }
    
    
    func fetchcomment() {
        guard let postid = post.id else { return }
        let query  =    Firestore.firestore().collection("posts").document(postid).collection("comments")
        query.addSnapshotListener { QuerySnapshot, error in
            
            
            guard let douc  = QuerySnapshot?.documentChanges.filter({$0.type == .added}) else { return }
            self.coment.append(contentsOf: douc.compactMap({try? $0.document.data(as:comments.self)}))
            
            print("fetch comment are \(self.coment)")
          
            
          
            
          
            
            
        }
        
        
    }
    
    
    
   
    
    
    
    
    
    
    
}


