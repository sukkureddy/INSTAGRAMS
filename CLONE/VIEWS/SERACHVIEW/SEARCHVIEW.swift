//
//  SEARCHVIEW.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//
import SwiftUI

struct searchView: View {
    @State var searchname = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("")
                    .searchable(text:$searchname,prompt:"looking for something ")
                
                grid()
                
            }
            
        }
    }
}

struct searchView_Previews: PreviewProvider {
    static var previews: some View {
        searchView()
    }
}
