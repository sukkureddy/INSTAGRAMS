//
//  Main.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//




import SwiftUI

struct Main: View {
    @State var selectionview = 0
    @ObservedObject var viewmodel = Authviewmodel()
    let user:User
    var body: some View {
       
            TabView(selection:$selectionview){
                Homeview().tabItem {
                    Image(systemName:"house")
                        .foregroundColor(.gray)
                }.tag(0)
                
                searchView().tabItem {
                    Image(systemName:"magnifyingglass")
                        .foregroundColor(.gray)
                }.tag(1)
                uploadview().tabItem {
                    Image(systemName:"plus")
                        .foregroundColor(.gray)
                }.tag(2)
                Reels().tabItem {
                    Image(systemName:"heart")
                        .foregroundColor(.gray)
                }.tag(3)
                
                Profileview(user:user).tabItem {
                    Image(systemName:"person.circle")
                        .foregroundColor(.gray)
                }.tag(4)
                
                
                
                
                
            }
        
    }
}

//struct Main_Previews: PreviewProvider {
//    static var previews: some View {
//        Main()
//    }
//}
