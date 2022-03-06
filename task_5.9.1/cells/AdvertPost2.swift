//
//  AdvertPost2.swift
//  task_5.9.1
//
//  Created by Sanjar Aslonov on 06/03/22.
//

import SwiftUI

struct AdvertPost2: View {
    var imgPost = "itpark"
    
    var body: some View {
        VStack {
            HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(.gray.opacity(0.3))
            //top
            VStack {
                HStack (alignment: .top) {
                    ZStack {
                        Circle().frame(width: 62, height: 62).foregroundColor(.gray.opacity(0.3))
                        Image(imgPost).resizable().scaledToFill().frame(width: 60, height: 60).cornerRadius(30)
                    }
                        VStack(alignment: .leading, spacing: 5) {
                            HStack {
                                Text("IT-Park").font(.system(size: 18)).fontWeight(.bold)
                                Spacer()
                                Image("ic_more")
                            }.frame(maxWidth: .infinity, alignment: .leading)
                            HStack {
                                Text("1d ·").foregroundColor(.gray.opacity(0.9))
                                Image("ic_public").resizable().frame(width: 20, height: 20)
                            }
                        }
                }.frame(height: 70).frame(maxWidth: .infinity, alignment: .top).padding(.leading).padding(.trailing).padding(.top)
                HStack {
                    Text("⁉️  IT sohada frilansermisiz ?!")
                }.frame(height: 40).frame(maxWidth: .infinity, alignment: .topLeading).padding(.leading)
                HStack {
                    Text("Unda oxirigacha o'qib ko'r...")
                    Text("See More").foregroundColor(.gray)
                }.frame(height: 40).frame(maxWidth: .infinity, alignment: .topLeading).padding(.leading)
            }
            
            //middle
            VStack (alignment: .leading) {
                VStack {
                    Image("itpark")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
//                        .frame(width: UIScreen.width/2)
                    Image("itpark3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
//                        .frame(width: UIScreen.width/2)
                }
                
                HStack(spacing: 5) {
                    Image("thumbs-up").resizable().frame(width: 18, height: 18)
                    Text("13").font(.system(size: 15))
                    Spacer()
                    Text("5 Share").font(.system(size: 15)).foregroundColor(.black.opacity(0.6))
                }.frame(height: 45).frame(maxWidth: .infinity, alignment: .leading).padding(.leading).padding(.trailing)
            }
            
            //bottom
            Divider()
            VStack {
                HStack {
                    Spacer()
                    HStack{
                        Image("thumbs-up2").resizable().frame(width: 22, height: 22)
                        Text("Like").font(.system(size: 18)).foregroundColor(.black.opacity(0.6)).fontWeight(.semibold)
                    }
                    Spacer()
                    HStack{
                        Image("comment").resizable().frame(width: 22, height: 22)
                        Text("Comment").font(.system(size: 18)).foregroundColor(.black.opacity(0.6)).fontWeight(.semibold)
                    }
                    Spacer()
                    HStack{
                        Image("share").resizable().frame(width: 22, height: 22)
                        Text("Share").font(.system(size: 18)).foregroundColor(.black.opacity(0.6)).fontWeight(.semibold)
                    }
                    Spacer()
                }.frame(height: 50).frame(maxWidth: .infinity)
            }
        }
    }
}

struct AdvertPost2_Previews: PreviewProvider {
    static var previews: some View {
        AdvertPost2()
    }
}
