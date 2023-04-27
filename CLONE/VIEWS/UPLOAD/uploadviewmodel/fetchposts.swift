//
//  fetchposts.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import Foundation
import Firebase





class fetchposts:ObservableObject {
    @Published var posts  = [UploadModel]()
    @Published var posts1  = [UploadModel]()
   
    
    
    init() {
        fetchposts1()
        
    }
    
    
    func fetchposts1() {
        
        Firestore.firestore().collection("posts").getDocuments { snapshot, error in
            if let error = error {
                print("\(error.localizedDescription) there is error ")
                return
            }
            
            guard let users = snapshot?.documents else { return }
            self.posts = users.compactMap({try? $0.data(as:UploadModel.self)})
          
            
            print(" users list are \(self.posts)")
            
            
        }
        
    }
    
    
    
    func fetchuserpost() {
        
        guard let user = Authviewmodel.shared.currentUser?.id else{ return }
        
        
                
        Firestore.firestore().collection("posts").document(user).collection("DATA").getDocuments { query, error in
            
            guard let douc  = query?.documents else { return }
            self.posts1 = douc.compactMap({try? $0.data(as:UploadModel.self)})
            
            print("user posts are grid \(self.posts1)")
            
        }
        
        
    }
    
    
    
    
    
}
