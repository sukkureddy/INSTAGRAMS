//
//  followviewmodel.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/27/23.
//

import Foundation
import Firebase




class followviewmodel : ObservableObject {
    
    
    var user:User
    
    init(user:User) {
        self.user = user
        
    }
    
    
    
    
    func followusers() {
        
        
        let currentuser = Authviewmodel.shared.currentUser
        let partner = Authviewmodel.shared.usersession
        
        guard let currentid  = currentuser?.id else { return }
       
        
        let data  = ["follower":currentuser?.username ?? "",
                     "following":user.username,
                     "followingId":user.id ?? "",
                     "follow":false
        
        
        
        ] as [String : Any]
        
        
        let data1 = ["followername":user.username
                     
         ]
        
        let data2 = ["followingname" :currentuser?.username ?? "",
        ]
        
        Firestore.firestore().collection("Followers").document(currentid).collection("list").document(user.id ?? "").setData(data) {_ in
            
            Firestore.firestore().collection("Followers").document(currentid).collection("list").document(self.user.id ?? "").updateData(["follow":true]) {_ in
                
                
                Firestore.firestore().collection("users").document(currentid).collection("Following").document(self.user.id ?? "").setData(data1)  {_ in
                    
                    Firestore.firestore().collection("users").document(currentid).updateData(["following":self.user.following + 1]) {_ in
                        
                        self.user.following += 1
                        
                        
                        
                    }
                    
              

                    
                    
                    
                    
                    Firestore.firestore().collection("users").document(self.self.user.id ?? "").collection("follower").document(currentid).setData(data2) {_ in
                        
                        
                        Firestore.firestore().collection("users").document(self.user.id ?? "").updateData(["followers":self.user.followers + 1]) {_ in
                            
                            self.user.followers += 1
                            
                            
                            
                        }
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                }
                
               
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
}
