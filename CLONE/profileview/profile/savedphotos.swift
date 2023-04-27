////
////  savedphotos.swift
////  CLONE
////
////  Created by Sukumar Reddy Pannala on 4/27/23.
////
//
//import Foundation
//import Firebase
//
//
//
//
//
//class savedposts:ObservableObject {
//    
//    @Published var fetchpost = [UploadModel]()
//    let user:User
//    let post:UploadModel
//    
//    
//    init(user:User,post:UploadModel) {
//        self.user = user
//        self.post = post
//        fetchsavedpost()
//    }
//    
//    
//    func savedpost() {
//        guard let userid = user.id else{ return }
//        
//        
//        let data = ["photo":post.photo
//                    
//        ]as [String:Any]
//       
//        Firestore.firestore().collection("users").document(userid).collection("saved").document().setData(data) {_ in
//            
//         
//            
//            
//            
//            
//            
//            
//        }
//        
//        
//    }
//    
//    
//    
//    func fetchsavedpost() {
//        guard let userid = user.id else{ return }
//        Firestore.firestore().collection("users").document(userid).collection("saved").addSnapshotListener { query, error in
//            
//            if let error = error {
//                print(error.localizedDescription)
//                return
//            }
//            
//            guard let douc  = query?.documentChanges.filter({$0.type == .added}) else { return }
//            self.fetchpost.append(contentsOf:douc.compactMap({try?$0.document.data(as:UploadModel.self)}))
//            
//            
//            print("fetchsaved post are \(self.fetchpost)")
//            
//            
//        }
//    }
//    
//    
//    
//}
//
