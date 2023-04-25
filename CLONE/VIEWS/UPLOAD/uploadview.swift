//
//  uploadview.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct uploadview: View {
    
   
    @State var caption = ""
    @State var ison  = false
    @State var ispresented  = false
    @State var selectedimage:UIImage?
    @State var profileimage:Image?
    @State var selectedUsers: [User] = []
    @ObservedObject var viewmodel = uploadviewmodel()
    var body: some View {
        
        NavigationView() {
            VStack {
                
                HStack {
                    
                    Button {
                        ispresented.toggle()
                    } label: {
                        if let profileimage = profileimage {
                            
                            profileimage .resizable()
                                .scaledToFit()
                                .frame(width: 60,height: 60)
                        }else {
                            
                            Image("pooja").resizable()
                                .scaledToFit()
                                .frame(width: 60,height: 60)
                            
                        }
                    }.sheet(isPresented:$ispresented,onDismiss:loadimage) {
                        ImagePicker(selectedImage:$selectedimage)
                    }

                        
                        
                        
                        
                        TextField("Write a caption .. ",text: $caption)
                       
                        .padding(.bottom)
                    
                    
                        
                        
                    }
                
                Divider().padding(.top,20)
                
                VStack(alignment:.leading){
                    NavigationLink(destination: Tagpeople(onComplete: { selectedUsers = $0 })) {
                        Text("Tag people").padding(8)
                    }
                    Divider()
                    Text("Add location").padding(8)
                    Divider()
                    Text("Add music").padding(8)
                    Divider()
                    
                   Toggle("Share to Fcaebook",isOn:$ison)
                        .toggleStyle(SwitchToggleStyle(tint:Color.blue))
                    
                    
                }
                    
                   Spacer()
                
                
            }.navigationBarItems(trailing:
            
        Button(action: {
                viewmodel.uploadpost(photo:selectedimage, caption: caption, taggedusers:selectedUsers)
            }, label: {
                Text("Share").bold()
            })
            )
            .navigationTitle("New Post")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
            
            // tag people
            // add location
            // add music
            
            // share to Facebook
            
            
            
            
        }
        
    func loadimage() {
        guard let selectedimage = selectedimage else { return  }
     profileimage = Image(uiImage:selectedimage)
        
    }
        
    }


struct uploadview_Previews: PreviewProvider {
    static var previews: some View {
        uploadview()
    }
}
