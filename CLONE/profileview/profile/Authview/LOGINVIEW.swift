//
//  LOGINVIEW.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct LOGINVIEW: View {
    @State var Email = ""
    @State var password = ""
    @ObservedObject var viewmodel = Authviewmodel()
    var body: some View {
        
        
        VStack(alignment:.center){
            
            Text("Instragram")
                .font(.custom("GreatVibes-Regular", size: 40)).bold()
            
            VStack(spacing:15){
                
                TextField("Phone number,username or email",text:$Email)
                    
                    .textFieldStyle(.roundedBorder)
                   
                
                SecureField("Enter password", text:$password )
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black)
                
                
                Button {
                    viewmodel.login(Email:Email, password: password)
                } label: {
                    Text("Login")
                        .foregroundColor(.white)
                        .frame(width: 320,height: 10)
                        .padding()
                        .background(Color.blue.opacity(0.4))
                        .cornerRadius(10)
                }
                
                HStack {
                    Spacer()
                    VStack {
                        Divider().frame(width: 140)
                    }
                    Spacer()
                    Text("or")
                    Spacer()
                    VStack {
                        Divider().frame(width: 140)
                    }
                    Spacer()
                }
                
                
                NavigationLink {
                    signup()
                } label: {
                    Text("Login with Facebook").bold()
                        .foregroundColor(.blue)
                }

               

                
                
            }.padding(10)
           
            
            HStack {
                Text("Don't have an account ? ").foregroundColor(.black.opacity(0.6))
                
                
                NavigationLink {
                    
                } label: {
                    Text("sign up").bold()
                        .foregroundColor(.blue)
                }
                
            }
            
        }
        
    }
}

struct LOGINVIEW_Previews: PreviewProvider {
    static var previews: some View {
        LOGINVIEW()
    }
}
