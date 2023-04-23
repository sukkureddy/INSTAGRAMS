//
//  Followers.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct Followers: View {
    var body: some View {
        
        ScrollView {
            VStack {
                ForEach(0...10,id:\.self) { item in
                    singleFollower()
                    
                }
                
                
            }
        }
        
    }
}

struct Followers_Previews: PreviewProvider {
    static var previews: some View {
        Followers()
    }
}

struct singleFollower: View {
    var body: some View {
        HStack {
            
            
            Image("pooja").resizable()
                .scaledToFit()
                .frame(width:45,height: 45)
                .clipShape(Circle())
            
            VStack {
                Text("Sukku_Reddy").bold()
                Text("sukumar reddy")
                
            }
            
            
            
            
            
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Remove")
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 70,height: 03)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                
                
            }
            
            
        }.padding()
    }
}
