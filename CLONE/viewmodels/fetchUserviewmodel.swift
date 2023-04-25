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
    
    
    
    
}
