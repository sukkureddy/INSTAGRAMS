//
//  commentview.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/25/23.
//

import SwiftUI

struct commentview: View {
    @ObservedObject var viewmodel : commentviewmodel
//    @ObservedObject var viewmodel1  :  commentreplyviewmodel
//    @ObservedObject var viewmodel2 : RRR
    
   
    @State var comment  = ""
    let post:UploadModel
   
    
    init(post:UploadModel) {
        self.post = post
        self.viewmodel = commentviewmodel(post:post)
//        self.viewmodel1 = commentreplyviewmodel(reply:comment, post: post)
//        self.viewmodel2 = RRR(post:post)
        
        
    }
    
    var body: some View {
        
      
       NavigationView() {
           VStack(alignment:.leading) {
               ScrollView {
                   
                   ForEach(viewmodel.coment,id:\.self) { item in
                       onecomment1(comment:item, post:post)
                       
//                       if item.reply {
//                           ForEach(viewmodel2.commentreplys,id:\.self) {item in
//                               CommentsExperimentview(reply:item)
//                           }
////
//                       }
                       
                             
                       
                   }
                   
                   Spacer()
                   
               }
                   CommentView(comment:$comment, action:uploadcomment)
               
               .padding()
           }
                    .navigationBarTitle("Comments")
                }
    }
    
    
    func uploadcomment() {
        viewmodel.comment(comment:comment)
        comment = ""
        
    }
    
//    func commentreply() {
//        viewmodel1.commentreply(comment: <#T##String#>)
//        
//    }
}

//struct commentview_Previews: PreviewProvider {
//    static var previews: some View {
//        commentview(post: UploadModel(caption:"super", name: "sukku", Time:Date(), Likes: 1))
//    }
//}

struct CommentView: View {
    @Binding var comment :String
   
    var action: () -> Void    
    
    
    
    var body: some View {
        HStack {
            TextField("comment here",text: $comment)
            
            Button(action:action) {
                Text("send").bold()
            }
            
            
            
        }.padding()
    }
}

struct onecomment: View {
    var body: some View {
        VStack(alignment:.leading) {
            HStack {
                Text("Sukku reddy").bold() + Text(" comment of this post")
                
            }.padding(.top)
                .padding(.horizontal)
            Divider()
            
            
        }
    }
}


