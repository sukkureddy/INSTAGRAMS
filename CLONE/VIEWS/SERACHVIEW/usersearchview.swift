//
//  usersearchview.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import SwiftUI

struct usersearchview: View {
    let user:User
    var body: some View {
        VStack(alignment:.leading){
            HStack(spacing:20){
                Image("friend").resizable()
                    .scaledToFit()
                    .frame(width:45,height: 45)
                    .clipShape(Circle())
                
                
                VStack(alignment:.leading){
                    Text(user.username).bold()
                    
                    Text(user.Email)
                    
                }
                
                Spacer()
                
            }
            
            Divider()
            
            
            
            
        }
        
    }
}

//struct usersearchview_Previews: PreviewProvider {
//    static var previews: some View {
//        usersearchview(user: <#User#>)
//    }
//}
