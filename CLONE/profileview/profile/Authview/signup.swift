//
//  signup.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct signup: View {
    @State var email = ""
    @State var password = ""
    @State var username =  ""
    @ObservedObject var viewmodel = Authviewmodel()
    var isvaild:Bool {
        !email.isEmpty && !password.isEmpty && !username.isEmpty
    }
    
    
    var body: some View {
        
        VStack {
            
            Text("Instragram")
                .font(.custom("GreatVibes-Regular", size: 40)).bold()
            
            
            TextField("email",text:$email )
                .textFieldStyle(.roundedBorder)
            TextField("password",text:$password )
                .textFieldStyle(.roundedBorder)
            
            TextField("username",text:$username)
                .textFieldStyle(.roundedBorder)
            
            
            
            
            Button {
                viewmodel.signin(Email:email, password:password, username:username)
            } label: {
                Text("signup")
                    .foregroundColor(.white)
                    .frame(width: 320,height: 10)
                    .padding()
                    .background(isvaild ? Color.blue.opacity(0.8):Color.blue.opacity(0.4))
                    .cornerRadius(10)
            }.disabled(!isvaild)
            
        }.padding()
    }
}

struct signup_Previews: PreviewProvider {
    static var previews: some View {
        signup()
    }
}
