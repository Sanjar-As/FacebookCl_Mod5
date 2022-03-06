//
//  UpdatedPost.swift
//  task_5.9.1
//
//  Created by Sanjar Aslonov on 05/03/22.
//

import SwiftUI

struct UpdatedPost: View {
    var imgPost = "user"
    
    var body: some View {
        VStack {
            //top
            HStack (alignment: .top) {
                    Image(imgPost).resizable().frame(width: 60, height: 60).cornerRadius(30)
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text("Samad Yuldashev").fontWeight(.semibold)
                            Text("updated his profile")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                        Text("picture.")
                        HStack {
                            Text("1d ·").foregroundColor(.gray.opacity(0.9))
                            Image("ic_public").resizable().frame(width: 20, height: 20)
                        }
                    }
                    Spacer()
                    Image("ic_more")
            }.frame(height: 100).frame(maxWidth: .infinity, alignment: .top).padding(.leading).padding(.trailing).padding(.top)
            
            //middle
            ZStack {
                Circle()
                    .frame(width: 410, height: 410)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 200).stroke(.black.opacity(0.1), lineWidth: 2))
                Image("trick2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 400)
                    .cornerRadius(200)
            }
            HStack(spacing: 5) {
                Image("thumbs-up").resizable().frame(width: 18, height: 18)
                Text("13").font(.system(size: 15))
            }.frame(maxWidth: .infinity, alignment: .leading).padding(.leading)
            
            //bottom
            Divider()
            HStack {
                Spacer()
                HStack{
                    Image("thumbs-up2").resizable().frame(width: 22, height: 22)
                    Text("Like").font(.system(size: 18)).foregroundColor(.black.opacity(0.6))
                }
                Spacer()
                HStack{
                    Image("comment").resizable().frame(width: 22, height: 22)
                    Text("Comment").font(.system(size: 18)).foregroundColor(.black.opacity(0.6))
                }
                Spacer()
                HStack{
                    Image("share").resizable().frame(width: 22, height: 22)
                    Text("Share").font(.system(size: 18)).foregroundColor(.black.opacity(0.6))
                }
                Spacer()
            }.frame(height: 50).frame(maxWidth: .infinity)
        }
    }
}

struct UpdatedPost_Previews: PreviewProvider {
    static var previews: some View {
        UpdatedPost()
    }
}
