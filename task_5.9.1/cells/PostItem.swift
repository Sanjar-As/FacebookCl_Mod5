//
//  PostItem.swift
//  task_5.9.1
//
//  Created by Sanjar Aslonov on 05/03/22.
//

import SwiftUI

struct PostItem: View {
    
    var imgPost = "feed5"
    
    var body: some View {
        VStack {
            //header
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("user").resizable().scaledToFill().frame(width: 50, height: 50).cornerRadius(25)
                    ZStack {
                        Circle().frame(width: 22, height: 22).foregroundColor(.white)
                        Circle().frame(width: 15, height: 15).foregroundColor(.green)
                    }
                }
                
                VStack {
                    Text("Niklas097").fontWeight(.bold)
                    HStack(alignment: .bottom) {
                        Text("18m").foregroundColor(.black.opacity(0.8))
                        Image("ic_public").resizable().frame(width: 20, height: 20)
                    }
                }
                Spacer()
                Image(systemName: "tortoise")
            }.padding(.trailing).padding(.leading).padding(.top)
            
            //image
            HStack {
                Image(imgPost).resizable().scaledToFit()
            }
            
            //icons
            HStack(spacing: 5) {
                HStack(spacing: -8) {
                    Image("thumbs-up").resizable().frame(width: 20, height: 20)
                    Image("likee").resizable().frame(width: 24, height: 24)
                }
                Text("13.2K").foregroundColor(.black.opacity(0.7))
                Spacer()
                Text("133 Comments").foregroundColor(.black.opacity(0.7))
                Text("89 Shares").foregroundColor(.black.opacity(0.7))
            }.padding(.leading).padding(.trailing).padding(.top, 5)
            Divider()
            
            HStack(alignment: .center) {
                Spacer()
                HStack(spacing: 5) {
                    Image("thumbs-up2").resizable().frame(width: 21, height: 21)
                    Text("Like")
                }
                
                Spacer()
                HStack(spacing: 5) {
                    Image("comment").resizable().frame(width: 21, height: 21)
                    Text("Comment")
                }
                
                Spacer()
                HStack(spacing: 5) {
                    Image("share").resizable().frame(width: 21, height: 21)
                    Text("Share")
                }
                Spacer()
            }.frame(height: 40).frame(maxWidth: .infinity).padding(.top, 5)
            
            HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(.gray.opacity(0.3))
        }
    }
}

struct PostItem_Previews: PreviewProvider {
    static var previews: some View {
        PostItem()
    }
}
