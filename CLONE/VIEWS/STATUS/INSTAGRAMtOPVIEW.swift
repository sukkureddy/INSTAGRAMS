//
//  INSTAGRAMtOPVIEW.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct InstagramTopView: View {
    @State var arrow  =  false
    var body: some View {
        
        NavigationView() {
            VStack(alignment:.leading){
                
                HStack {
                    
                    instagram(arrowdown: $arrow)
                    
                    
                    
                    
                    
                    Spacer()
                    
                    Notification()


                    
                }
                
                
                
                
                Spacer()
                
            }
        }
        
    }
}

struct InstagramTopView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramTopView()
    }
}

struct instagram: View {
    @Binding var arrowdown:Bool
    var body: some View {
        
        if !arrowdown {
            Button(action: {
                
            }, label: {
                HStack {
                    Button {
                        arrowdown.toggle()
                    } label: {
                        Text("Instragram")
                            .font(.custom("GreatVibes-Regular", size: 30))
                        
                        
                        
                        Image(systemName:arrowdown ? "chevron.compact.down" : "chevron.compact.up")
                            .foregroundColor(.gray.opacity(0.6))
                        
                        
                    }
                    
                    
                }})
        } else {
            
            if arrowdown {
                
                VStack {
                    Button {
                        
                    } label: {
                        HStack(spacing:5){
                            Text("Followers").bold()
                                .frame(width:80,height: 20)
                                .foregroundColor(.black)
                             
                                
                            Image(systemName:"person")
                            
                        }
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        

                            
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Followers")
                    }

                    
                }
                
                
            }
        }
        
        
        
    }
}

struct Notification: View {
    var body: some View {
        HStack(spacing:10){
            NavigationLink {
              Text("NOTIFICTAION")
            } label: {
                Image(systemName:"heart").resizable()
                    .scaledToFit()
                    .bold()
                    .frame(width: 23,height: 23)
                    .foregroundColor(.black)
            }
            
            
            NavigationLink {
                Text("navigation link")
            } label: {
                Image(systemName:"ellipsis.message").resizable()
                    .scaledToFit()
                    .bold()
                    .frame(width: 23,height: 23)
                    .foregroundColor(.black)
            }
            
        }.padding(6)
    }
}
