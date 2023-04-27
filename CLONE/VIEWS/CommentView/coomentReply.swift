//
//  coomentReply.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/26/23.
//

import SwiftUI

struct coomentReply: View {
    @Environment(\.presentationMode) var mode
    
    @State var replytext = ""
    @ObservedObject var viewmodel:RRR
    
    init(comment:comments,post:UploadModel) {
        self.viewmodel = RRR(post:post, reply: comment)
        
    }
    
//    var action: () -> Void
    
    var body: some View {
        
        VStack {
            ZStack {
                Color.gray.opacity(0.4)
                VStack {
                    HStack {
                        Text("Replying to virat").foregroundColor(.black.opacity(0.3))
                            .font(.caption)
                        Spacer()
                        Button {
                            
                            mode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName:"xmark").font(.system(size:10))
                        }

                        
                        
                    }
                }
                
            }.frame(width:380,height: 30)
            
            
            
            
            HStack {
                Image("sukku").resizable()
                    .scaledToFit()
                    .frame(width: 35,height: 35)
                    .clipShape(Circle())
                
                TextField("@sukku",text:$replytext)
                    .textFieldStyle(.roundedBorder)
                 
                Button(action:{
                    viewmodel.replycomment(comment: replytext)
                    replytext = ""
                }) {
                    Text("Post").bold()
                        .padding(.vertical,3)
                }

                
                
            }
            
            
            Spacer()
        }
    }
}

//struct coomentReply_Previews: PreviewProvider {
//    static var previews: some View {
//        coomentReply()
//    }
//}
