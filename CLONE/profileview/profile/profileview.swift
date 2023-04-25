//
//  profileview.swift
//  CLONE
//
//
//  Profileview.swift
//  instagram_clone
//
//  Created by Sukumar Reddy Pannala on 4/20/23.
//

import SwiftUI

struct Profileview: View {
    @State var alertview = false
    @State var logout = false
    let user:User
    
     
    var body: some View {
        NavigationView() {
            VStack(alignment:.leading){
                
                ProfileHeader(alterview:$alertview, user:user)
                
                
                countview(user:user)
                
//                CountView()
//
//                profilebutton(user:user)
                
                
                
                
                
                
                
                
                
                
                
                Spacer()
            }
            .navigationBarItems(leading:Text("sukku reddy").bold()
                .onTapGesture(count:2){
                
                print("double tap is working")
                    logout = true
                
            }
            )
            .sheet(isPresented:$logout) {
               TrYNewAccount()
                    .presentationDetents([.height(280)])
                    .presentationDragIndicator(.visible)
                    .presentationCornerRadius(10)
            }
        }
            
        }
        
        
        
        
                    
                 
                    
                    

            
                
                
                
            }
            
            
            
        



//struct Profileview_Previews: PreviewProvider {
//    static var previews: some View {
//        Profileview()
//    }
//}

struct ProfileHeader: View {
    @Binding var alterview:Bool
    let user:User
    var body: some View {
        HStack {
            VStack(alignment:.leading){
                Button {
                    alterview.toggle()
                } label: {
                    ZStack(alignment:.bottomTrailing){
                        Image("friend").resizable()
                            .scaledToFit()
                            .frame(width:65,height: 65)
                            .clipShape(Circle())
                        
                        Image(systemName:"plus.circle").resizable()
                            .scaledToFit()
                            .bold()
                            .foregroundColor(.white)
                            .frame(width: 20,height:20).foregroundColor(.blue)
                            .padding(.horizontal,-2)
                            .background(Color.blue)
                            .clipShape(Circle())
                        
                        
                        
                        //                        .padding(.bottom,3)
                        
                        
                        
                        
                    }
                    
                    
                }.alert("upload phot",isPresented: $alterview) {
                    
                    Text("upload photos").bold()
                    
                    
                    Button("upload photo") {
                        
                    }
                    Button("add story") {
                        
                    }
                    
                    Button("delete photo",role:.destructive){}
                    
                    
                    
                    
                }
                
                Text(user.Email).bold()
                
                
            }.padding(.horizontal,7)
            Spacer()
            
            HStack {
                Spacer()
                VStack {
                    Text("1").bold()
                    Text("Post")
                }
                Spacer()
                
                    NavigationLink(destination:Followers()) {
                        VStack {
                            Text("296").bold()
                        Text("Followers")
                    }.foregroundColor(.black)
                    
                    
                }
                Spacer()
                
                NavigationLink(destination:Followers()) {
                    VStack {
                        Text("311").bold()
                        Text("Following")
                }.foregroundColor(.black)
                        
                
                
            }
                
                
                Spacer()
            }
            
        }
    }
}


struct SlideFromLeading: ViewModifier {
    func body(content: Content) -> some View {
        content.transition(.move(edge:.leading))
    }
}

struct CountView: View {
    var body: some View {
        HStack {
            Spacer()
            NavigationLink(destination:Text("editprofile")) {
                Text("Edit profile")
                    .foregroundColor(.black)
                    .bold()
                    .frame(width: 120,height: 10)
                    .padding(10)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                
            }
            
            
            Spacer()

            
            Button {
                
            } label: {
                Text("Share profile")
                    .foregroundColor(.black)
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
}

