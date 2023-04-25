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
    
    
    
    
    
}
