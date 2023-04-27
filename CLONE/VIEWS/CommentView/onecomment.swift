//
//  onecomment.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/26/23.
//

import SwiftUI

struct onecomment1: View {
    @State var commentReply =  false
    @State var commenReplytext = ""
    let comment:comments
    let post:UploadModel
    
    
    var body: some View {
       
        
        VStack(alignment:.leading) {
            HStack {
                Image("sukku").resizable().scaledToFit().frame(width:25,height: 25).clipShape(Circle())
                
                VStack(alignment:.leading){
                    Text(comment.user).bold().font(.system(size: 14))
                    HStack {
                        Text(comment.comment)
                        Spacer()
                        Image(systemName:"heart").font(.system(size:8))
                        
                    }
                    
                    HStack {
                        Text("8 Likes").font(.caption2)
                        
                        Button {
                            commentReply.toggle()
                        } label: {
                            Text("Reply").font(.caption2).foregroundColor(.black)
                        }.sheet(isPresented:$commentReply) {
                            coomentReply(comment:comment, post:post)
                                .presentationDetents([.height(120)])
                        }


                        
                    }
                    
                }
               
                
                
            }.padding(.top)
                .padding(.horizontal)
            Divider()
            
            
        }
    }
}

//struct onecomment1_Previews: PreviewProvider {
//    static var previews: some View {
//        onecomment1()
//    }
//}
