//
//  addnewaccount.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct TrYNewAccount: View {
    var photos  = ["pooja","friend","sukku"]
    var body: some View {
        
        VStack(alignment:.leading,spacing: 15){
            HStack(spacing:-3){
                Spacer()
                
                ForEach(photos,id:\.self) {item in
                    
                    Image(item).resizable()
                        .scaledToFit().frame(width:22,height: 22)
                        .clipShape(Circle())
                       
                        
                    
                    
                }
                
                
                
                Spacer()
            }
            
            VStack(alignment:.leading,spacing: 10) {
                Text("Keep up with a smaller group of friends").bold()
                    .padding(.horizontal,10)
                
                Text("create another account to stay in touch with a group of friends").font(.callout)
                    .foregroundColor(.gray.opacity(0.8))
                    .padding(.horizontal,10)
                NewAccountButton().padding(.horizontal,10)
                
                
                
                
                

                
            }.padding(.horizontal,30)
            Divider()
            HStack {
                Spacer()
                Text("Add account").bold().foregroundColor(.blue)
                Spacer()
            }
        }
    }
}

struct TruNewAccount_Previews: PreviewProvider {
    static var previews: some View {
        TrYNewAccount()
    }
}

struct NewAccountButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Try a new account")
                .bold()
                .foregroundColor(.white)
                .frame(width: 290,height: 15)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
            
        }
    }
}
