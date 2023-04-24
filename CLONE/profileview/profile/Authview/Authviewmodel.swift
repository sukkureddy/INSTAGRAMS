//
//  Authviewmodel.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import Foundation
import Firebase
import FirebaseAuth




class Authviewmodel:ObservableObject {
    
    
    @Published var usersession : FirebaseAuth.User?
    
    init() {
        usersession = Auth.auth().currentUser
    }
    
    
    func signin(Email:String,password:String,username:String) {
        Auth.auth().createUser(withEmail:Email, password:password) {result,error in
            
            if let error =  error {
                print(error.localizedDescription)
            }
            
            
            guard let user = result?.user else { return }
            self.usersession = user
            
            print("user is sucesfillu")
            
            
            let data = ["Email":Email,
                        "password":password,
                        "username":username
             ]
            
            Firestore.firestore().collection("users").document(user.uid).setData(data) {_  in
                
               
                
                self.usersession = user
                
                print("user is done with registration")
                
                
                
            }
            
            
            
        }
        
    }
    
    func login() {
        
   
        
    }
   func signout() {

           usersession = nil
           try? Auth.auth().signOut()
      
       
    }
    
    
}
