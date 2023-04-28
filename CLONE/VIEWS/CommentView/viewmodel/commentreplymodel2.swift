//
//  commentreplymodel2.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/26/23.
//

import Foundation
import Firebase


//class RRR:ObservableObject {
//    private var  post:UploadModel
//    let reply:comments
//
//    @Published var commentreplys = [commentReply]()
//
//
//
//
//    init(post:UploadModel,reply:comments) {
//        self.post = post
//        self.reply = reply
//
//    }
//
//
//
//
//    func replycomment(comment:String) {
//
//        guard let postid = post.id else { return }
//        guard let cid = reply.id else { return }
//        let data  = ["comment":comment,
//                     "Time":Timestamp(date:Date()),
//                     "reply":false
//
//
//        ] as [String : Any]
//
//        Firestore.firestore().collection("posts").document(postid).collection("comments").document(cid).collection("replayess").document().setData(data) {_ in
//
//
//            Firestore.firestore().collection("posts").document(postid).collection("comments").document(cid).updateData(["reply":true]) { _ in
//
//
//
//
//
//            }
//
//
//        }
//
//    }
//
//
//    func fetchreplycomment() {
//        guard let postid = post.id else { return }
//        guard let cid = reply.id else { return }
//        Firestore.firestore().collection("posts").document(postid).collection("comments").document(cid).collection("replayess").addSnapshotListener { query, error in
//
//            guard let douc  = query?.documentChanges.filter({$0.type == .added}) else{ return }
//
//
//            self.commentreplys.append(contentsOf: douc.compactMap({try? $0.document.data(as:commentReply.self)}) )
//
//
//            print("complet replayes \(self.commentreplys)")
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
//}

class RRR: ObservableObject {
    private var post: UploadModel
    let reply: comments
    
    @Published var commentreplys = [commentReply]()
    
    init(post: UploadModel, reply: comments) {
        self.post = post
        self.reply = reply
        fetchreplycomment()
    }
    
    func replycomment(comment: String) {
     
        guard let postid = post.id else { return }
                guard let cid = reply.id else { return }
                let data  = ["comment":comment,
                             "Time":Timestamp(date:Date()),
                             "reply":false
        
        
                ] as [String : Any]
        
                Firestore.firestore().collection("posts").document(postid).collection("comments").document(cid).collection("replayess").document().setData(data) {_ in
        
        
                    Firestore.firestore().collection("posts").document(postid).collection("comments").document(cid).updateData(["reply":true]) { _ in
        
        
        
        
        
                    }
        
        
                }
    }
    
    func fetchreplycomment() {
        guard let postid = post.id else { return }
        guard let cid = reply.id else { return }
        Firestore.firestore().collection("posts").document(postid).collection("comments").document(cid).collection("replayess").addSnapshotListener { query, error in
            guard let douc  = query?.documentChanges.filter({$0.type == .added}) else{ return }
            self.commentreplys.append(contentsOf: douc.compactMap({try? $0.document.data(as:commentReply.self)}) )
            print("complet replayes \(self.commentreplys)")
        }
    }
    
    
//    func ss() {
//        
//        guard let user = Authviewmodel.shared.currentUser?.id else { return }
//        
//        let data =  ["photo":post.photo
//        
//        
//        ] as [String:Any]
//        
//        Firestore.firestore().collection("users").document(user).collection("saved").document().setData(data as [String : Any]) {_ in
//            
//            
//            
//            
//        }
//    }
    
}
