//
//  postview.swift
//  CLONE
//
//  Created by Sukumar Reddy Pannala on 4/23/23.
//

//
//  POSTVIEW.swift
//  instagram_clone
//
//  Created by Sukumar Reddy Pannala on 4/20/23.
//

import SwiftUI
import Kingfisher

struct POSTVIEW: View {
    @State var following  = false
    @State var ispresented = false
    @State var tagpeople = false
    let post:UploadModel
//    let comment:comments
    
    var body: some View {
        VStack(alignment:.leading){
            VStack(spacing:1){
                HStack {
                    Image("pooja").resizable()
                        .scaledToFit()
                        .frame(width: 40,height: 40)
                        .clipShape(Circle())
                    VStack(alignment:.leading){
                        Text(post.name)
                            .font(.callout)
                            .bold()
                        
                        Text("Goa")
                        
                        
                    }.padding(.horizontal,10)
                    
                    Spacer()
                    HStack {
                        Button {
                            
                        } label: {
                            Text(following ? "Following": "Follow")
                                .bold().foregroundColor(.black)
                                .padding(10)
                                .background(Color.gray.opacity(0.3))
                                .cornerRadius(10)
                        }.padding(.vertical)
                        
                        
                        Button {
                            ispresented.toggle()
                        } label: {
                            Image(systemName:"ellipsis")
                        }.sheet(isPresented:$ispresented) {
                            withAnimation {
                                PostInfo()
                                    .presentationDetents([.medium,.medium])
                                    .presentationDragIndicator(.visible)
                                    .presentationCornerRadius(30)
                            }
                            }
                           
                        
                        
                        
                    }
                    
                    
                    
                }
                
                ZStack(alignment:.bottomLeading){
                    
                    KFImage(URL(string:post.photo ?? "")).resizable()
                        .scaledToFit()
                    Button {
                        tagpeople.toggle()
                    } label: {
                        Image(systemName:"person.circle").resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width:20,height: 20)
                            .padding(10)
                            .background(Color.gray.opacity(0.6))
                            .clipShape(Circle())
                            
                    }.sheet(isPresented:$tagpeople) {
                        od(post:post)
                    }
                    
                }
            }
                
            
            LMS(viewmodel:LikeViweModel(post:post), post: post)
            
           commentsview(post:post)
            
            
            
            
            
            Divider()
        }
    }
}

//struct POSTVIEW_Previews: PreviewProvider {
//    static var previews: some View {
//        POSTVIEW()
//    }
//}

struct LMS: View {
    @ObservedObject var viewmodel : LikeViweModel
   
    var didLike:Bool{ viewmodel.post.didLike ?? false }
//    let comment:comments
    
    init(viewmodel:LikeViweModel,post:UploadModel) {
        self.viewmodel = viewmodel
        
        
        
    }
    
    
    
    var body: some View {
        HStack {
            Button {
               didLike ? viewmodel.dislike() : viewmodel.Likepost()
            } label: {
                Image(systemName:didLike ? "heart" : "heart.fill")
                    .foregroundColor(didLike ? Color.gray  : Color.red)
                
                    .font(.system(size: 20))
            }

            NavigationLink {
                commentview(post:viewmodel.post)
            } label: {
                Image(systemName:"message")
                 .font(.system(size: 20))
            }

            
            Image(systemName:"paperplane")
            
                .font(.system(size: 20))
            
            Spacer()
            
            Image(systemName:"bookmark")
            
                .font(.system(size: 20))
            
            
        }
    }
}

struct commentsview: View {
    let post:UploadModel
    var body: some View {
        VStack(alignment:.leading){
            Text("2,142 Likes").bold().font(.system(size:12)).padding(.top,4)
                .padding(.horizontal,6)
            
            Text("  Gouri_vineeth : ").font(.system(size: 10)).bold() + Text("\(post.caption)").font(.system(size:12))
            
            
             Text(" #hashtags").font(.system(size: 10))
            
        }
    }
}

