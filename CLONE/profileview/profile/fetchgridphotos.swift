//
//  fetchgridphotos.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/27/23.
//

import Foundation
import Firebase

class FetchPostsss: ObservableObject {
    @Published var posts = [UploadModel]()
    let user:User
    init(user:User) {
        self.user = user
        fetchUserPosts()
        
    }
    
    func fetchUserPosts() {
        

        guard let userid = user.id else{ return }
        
        Firestore.firestore().collection("users").document(userid).collection("posts").getDocuments { QuerySnapshot, error in
            
            if let error = error {
                print("\(error.localizedDescription) there is error in instagram fetch posts ")
                return
            }
            
            guard let douc  = QuerySnapshot?.documents else { return }
            
            self.posts =  douc.compactMap({try? $0.data(as:UploadModel.self)})
            
            print("self.posts are \(self.posts)")
            

                 
            
        }
        
        
            
           
        }
    }

