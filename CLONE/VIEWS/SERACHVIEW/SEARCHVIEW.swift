//
//  SEARCHVIEW.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//
import SwiftUI

struct searchView: View {
    @State var searchname = ""
    @State var search = false
    
    @ObservedObject var viewmodel = searchviewmodel()
    var body: some View {
        NavigationView {
           
            VStack {
                if search {
                   grid()
                }
                else {
                  allusers()
                }
            }
            
            .searchable(text:$searchname,prompt:"looking for something ")
                .onChange(of: searchname, perform: { _ in // Handle text changes
                    search.toggle() // Toggle `showAllUsers` based on search text
                            })
             
            
        }
    }
}

struct searchView_Previews: PreviewProvider {
    static var previews: some View {
        searchView()
    }
}
