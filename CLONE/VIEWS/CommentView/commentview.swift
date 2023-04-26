//
//  commentview.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/25/23.
//

import SwiftUI

struct commentview: View {
    @State var comment  = ""
    var body: some View {
        
      
       NavigationView() {
           VStack(alignment:.leading) {
               ScrollView {
                   
                   ForEach(0...10, id:\.self) { item in
                       onecomment()
                   }
                   
                   Spacer()
                   
               }
                   CommentView(comment: $comment)
               
               .padding()
           }
                    .navigationBarTitle("Comments")
                }
    }
}

struct commentview_Previews: PreviewProvider {
    static var previews: some View {
        commentview()
    }
}

struct CommentView: View {
    @Binding var comment :String
    var body: some View {
        HStack {
            TextField("comment here",text: $comment)
            
            Button {
                comment = ""
            } label: {
                Text("send").bold()
            }
            
            
            
        }.padding()
    }
}

struct onecomment: View {
    var body: some View {
        VStack(alignment:.leading) {
            HStack {
                Text("Sukku reddy").bold() + Text("   comment of this post")
                
            }.padding(.top)
                .padding(.horizontal)
            Divider()
            
            
        }
    }
}


