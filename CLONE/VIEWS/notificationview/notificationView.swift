//
//  notificationView.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct notificationview: View {
    var body: some View {
        
        VStack(alignment:.leading){
            HStack {
                FriendRequestImages()
                VStack(alignment:.leading){
                    Text("Follow requests").bold()
                    
                    Text("sukku_reddy" + " + others 39").font(.caption)
                    
                }
                
                Spacer()
                
            }.padding(.horizontal,10)
            
            Divider()
            
            RequestAcceptedView()
            
            
           Spacer()
        }
    }
}

struct notificationview_Previews: PreviewProvider {
    static var previews: some View {
        notificationview()
    }
}

struct FriendRequestImages: View {
    var body: some View {
        HStack(spacing:-8){
            Image("sukku").resizable()
                .scaledToFit()
                .frame(width: 30,height: 30)
                .clipShape(Circle())
            
            Image("sukku").resizable()
                .scaledToFit()
                .frame(width: 30,height: 30)
                .clipShape(Circle())
            
        }
    }
}

struct RequestAcceptedView: View {
    var body: some View {
        HStack {
            Image("friend").resizable()
                .scaledToFit()
                .frame(width: 25,height: 25)
                .clipShape(Circle())
            
            Text("Pavan_Reddy").font(.caption2).bold() +  Text(" stated following you").font(.caption2)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Follwing").font(.system(size:10,weight: .bold))
                    .foregroundColor(.black)
                    .frame(width: 50,height: 6)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                
            }.padding(.trailing)
            
            
            
        }
    }
}
