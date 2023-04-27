//
//  CommentsExperimentview.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/26/23.
//

import SwiftUI

struct CommentsExperimentview: View {
    @State var commentReplys =  false
    let reply:commentReply
    
    var body: some View {
        VStack(alignment:.leading) {
            HStack {
                Image("sukku").resizable().scaledToFit().frame(width:25,height: 25).clipShape(Circle())
                
                VStack(alignment:.leading){
                    Text("sukumar").bold().font(.system(size: 14))
                    HStack {
                        Text(reply.comment).font(.system(size: 14))
//                        Spacer()
//                        Image(systemName:"heart").font(.system(size:8))
                        
                    }
                    
                    HStack {
                        Text("8 Likes").font(.caption2)
                        
                        Button {
                            commentReplys.toggle()
                        } label: {
                            Text("Reply").font(.caption2).foregroundColor(.black)
                        }.sheet(isPresented:$commentReplys) {
//                            coomentReply(replytext: <#Binding<String>#>, action: <#() -> Void#>)
//                                .presentationDetents([.height(120)])
                        }


                        
                    }
                    
                }
            
                
                Image(systemName:"heart").font(.system(size:8)).padding(.vertical,120)
                
            }.padding(.top)
                .padding(.horizontal)
         
            
            
        }.frame(width:280,height: 80)
    }
}

//struct CommentsExperimentview_Previews: PreviewProvider {
//    static var previews: some View {
//        CommentsExperimentview()
//    }
//}
