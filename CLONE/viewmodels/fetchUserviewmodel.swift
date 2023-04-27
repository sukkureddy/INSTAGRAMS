//
//  fetchUserviewmodel.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import Foundation
import Firebase




class searchviewmodel:ObservableObject {
    
    @Published var user = [User]()
    @Published var posts = [UploadModel]()
    
    
    
    init() {
        fetchuser()
        
    }
    
    func fetchuser() {
        
        
        
        Firestore.firestore().collection("users").getDocuments { snapshot, error in
            if let error = error {
                print("\(error.localizedDescription) there is error ")
                return
            }
            
            guard let users = snapshot?.documents else { return }
            self.user = users.compactMap({try? $0.data(as:User.self)})
          
            
            print(" users list are \(self.user)")
            
            
        }
        
    }
    
    
    func fetchposts() {
        
        guard let currentid = Authviewmodel.shared.currentUser?.id else { return }
        
        Firestore.firestore().collection("users").document(currentid).collection("posts").getDocuments { photos, error in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
          
            guard let douc  = photos?.documents else { return }
            self.posts = douc.compactMap({try? $0.data(as:UploadModel.self)})
            
            print("\(self.posts)")
            
            
        }
        
    }
    
    
    
    
}
