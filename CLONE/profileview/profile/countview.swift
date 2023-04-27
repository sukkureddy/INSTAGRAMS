//
//  countview.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import SwiftUI

struct countview: View {
    @ObservedObject var viewmodel:followviewmodel
    let user:User
    init(viewmodel: followviewmodel, user: User) {
        self.viewmodel = followviewmodel(user:user)
        self.user = user
        
    }
    
    var isfollowed:Bool {
        viewmodel.user.isfollowed ?? false
    }
    
    var body: some View {
        if !user.currentuser {
            HStack {
                Spacer()
                NavigationLink(destination:Text("editprofile")) {
                    Text("Message")
                        .foregroundColor(.black)
                        .bold()
                        .frame(width: 120,height: 10)
                        .padding(10)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                    
                }
                
                
                Spacer()
                
                
                Button {
                    viewmodel.followusers()
                } label: {
                    Text(isfollowed ? "Following" : "Follow")
                        .foregroundColor(isfollowed ? .black : .blue)
                        .bold()
                        .frame(width: 120,height: 10)
                        .padding(10)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName:"person.badge.plus")
                        .resizable().scaledToFit().bold()
                        .foregroundColor(.black)
                        .frame(height: 10)
                        .padding(8)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                    
                    
                }
                
                Spacer()
                
                
                
                
                
            }.padding(.horizontal,10)
            
        }
        
        
        else {
            
            NavigationLink(destination:Text("Edit profileview ")) {
                Text("Edit")
                    .foregroundColor(.black)
                    .bold()
                    .frame(width: 320,height: 10)
                    .padding(10)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                
            }.padding(.horizontal,10)
            
        }
       
    }
}

//struct countview_Previews: PreviewProvider {
//    static var previews: some View {
//        countview()
//    }
//}
