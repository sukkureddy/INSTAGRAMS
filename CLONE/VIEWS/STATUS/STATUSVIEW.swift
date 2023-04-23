//
//  STATUSVIEW.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

import SwiftUI

struct statusview: View {
    @State var statusview  = false
    @State var  isShowingImage = true
    @State var seen = false
    @State var selectedIndex:Int? = nil

    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false) {
            HStack {
                // profile
                profilestatus()
                ForEach(0...10,id:\.self) {index in
                    
                    Button {
                        withAnimation {
                            if selectedIndex == index {
                                // Tapping the same button again should hide the image
                                selectedIndex = nil
                               
                            } else {
                                selectedIndex = index
                                seen = true
                            }
                        }
                                      
                    }
                        
//                        Button {
//                        withAnimation {
//
//                            statusview.toggle()
//                            seen = false
//
//                        }
//
//                        if statusview {
//                            DispatchQueue.main.asyncAfter(deadline:.now()+5){
//                                withAnimation {
//                                    statusview = false
//
//                                }
//                            }
//
//                        }
//
//
//
//
//
                     label: {
                        UserStatus(seen: $seen)
                    }
                    
                    if selectedIndex == index {
                        withAnimation {
                            Image("pooja").resizable()
                                .scaledToFit()
                            
                        }
                        
                    }
                    
            
                    
                    
                    
                    
                    
                    
                    
                    
                
                    
                }
                
                // others status
                
                Spacer()
            }
        }
    }
}

struct statusview_Previews: PreviewProvider {
    static var previews: some View {
        statusview()
    }
}

struct profilestatus: View {
    var body: some View {
        ZStack(alignment:.bottomTrailing){
            Image("pooja").resizable()
                .scaledToFit()
                .frame(width: 47,height: 47)
                .clipShape(Circle())
            Image(systemName:"plus.circle").resizable()
                .scaledToFit()
                .bold()
                .foregroundColor(.white)
                .frame(width: 20,height:20).foregroundColor(.blue)
                .padding(.horizontal,-2)
                .background(Color.blue)
                .clipShape(Circle())
            
            
        }
    }
}

struct UserStatus: View {
    @Binding var seen:Bool
    var body: some View {
        ZStack {
            Circle()
            
                .stroke(lineWidth: 2.0)
                .opacity(0.8)
                .foregroundColor(seen ? .red :.gray)
                .frame(width: 52,height: 52)
            
            Image("pooja").resizable()
                .scaledToFit()
                .frame(width: 49,height: 49)
                .clipShape(Circle())
            
            
        }
    }
}
