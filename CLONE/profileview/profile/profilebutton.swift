//
//  profilebutton.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import SwiftUI

struct profilebutton: View {
   
    let user:User
    var body: some View {
        
        VStack {
        
            if user.currentuser {
                
                Button {
                    
                } label: {
                    
                    Text("Edit button").bold()
                        .frame(width: 280,height: 10)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                }
            }
            
            else {
                        HStack {
                        Button {
                            
                        } label: {
                            
                                Text("Follow").bold()
                                    .frame(width: 140,height: 10)
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(Color.gray.opacity(0.3))
                                    .cornerRadius(10)
                            }
                            
                            Button {
                                
                            } label: {
                                Text("message").bold()
                                    .frame(width: 140,height: 10)
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(Color.gray.opacity(0.3))
                                    .cornerRadius(10)
                            }

                                
                                
                                
                                
                            
                            
                        }
                    }
                }

                
                
            
            
            
            
        }
        
    }


//struct profilebutton_Previews: PreviewProvider {
//    static var previews: some View {
//        profilebutton(currentuser: .constant(true))
//    }
//}
