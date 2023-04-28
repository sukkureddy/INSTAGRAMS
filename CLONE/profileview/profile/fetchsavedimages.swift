//
//  fetchsavedimages.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/27/23.
//

import Foundation
import Firebase




class fetchsavedimages:ObservableObject{
    
    @Published var saved = [UploadModel]()
    
    let user:User
    
    
    init(user:User) {
        self.user = user
        fetchsaved()
        
    }
    
    func fetchsaved() {
        
        guard let userid = user.id else { return }
        
        Firestore.firestore().collection("users").document(userid).collection("saved").getDocuments { QuerySnapshot, error in
            
            if let error  = error {
                print(error.localizedDescription)
                return
            }
            
            guard let douc = QuerySnapshot?.documents else { return }
            self.saved = douc.compactMap({try? $0.data(as:UploadModel.self)})
            
            
            print( " new saved post are \(self.saved)")
        }
        
        
    }
    
    
}

