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
    @Published var currentUser:User?
    
    
    static let shared  = Authviewmodel()
    
    init() {
        usersession = Auth.auth().currentUser
        fetchuser()
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
    
    func login(Email:String,password:String) {
        
        Auth.auth().signIn(withEmail:Email, password:password) {result,error in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user  = result?.user else { return }
            self.usersession = user
            
            
        }
        
   
        
    }
   func signout() {

           usersession = nil
           try? Auth.auth().signOut()
      
       
    }
    
    
    func fetchuser() {
        
        guard let uid = usersession?.uid else { return }
        
        Firestore.firestore().collection("users").document(uid).getDocument { query,error in
            if let error = error {
                print(error)
                return
            }
            
            guard let user = try? query?.data(as:User.self) else { return }
            self.currentUser = user
        }
        
        
        
        
    }
    
    
}
