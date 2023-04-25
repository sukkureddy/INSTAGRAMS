//
//  Tagpeople.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/24/23.
//

import SwiftUI

struct Tagpeople: View {
    @State var selected = true
    @ObservedObject var viewmodel = searchviewmodel()
    @State var selectedItems: [User] = []
    @State var name  = ""
    @Environment(\.presentationMode) var mode
    var onComplete: (([User]) -> Void)?
    
    var body: some View {
        NavigationView() {
            ScrollView {
                LazyVStack {
                    ForEach(viewmodel.user) { item in
                        listoftag(isSelected: selectedItems.contains(item), user: item)
                            .onTapGesture {
                                if let index = selectedItems.firstIndex(of: item) {
                                    selectedItems.remove(at: index)
                                } else {
                                    selectedItems.append(item)
                                }
                            }
                    }
                }
            }.searchable(text:$name,prompt:"searching for someone")
            
            .navigationBarItems(trailing:
               
            Button(action: {
                
                mode.wrappedValue.dismiss()
                onComplete?(selectedItems)
                
            }, label: {
                Text("done").bold()
            })
            
            
            )
            .navigationTitle("Tag people")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Tagpeople_Previews: PreviewProvider {
    static var previews: some View {
        Tagpeople()
    }
}

struct listoftag: View {
    var isSelected: Bool
    let user: User
    
    var body: some View {
        HStack {
            Image("friend")
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .clipShape(Circle())
            
            Text(user.username)
            
            Spacer()
            
            if isSelected {
                Image(systemName: "checkmark.seal.fill")
            } else {
                Image(systemName: "circle")
            }
        }
    }
}

