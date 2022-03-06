//
//  StoryItem.swift
//  task_5.9.1
//
//  Created by Sanjar Aslonov on 05/03/22.
//

import SwiftUI

struct StoryItem: View {
    
    var imgStory = "feed3"
    var fname = "Benjamin"
    var lname = "Mathew"
    var user = "user3"
    
    var body: some View {
        ZStack {
            Image(imgStory)
                .resizable()
                .frame(width: 150, height: 250)
                .scaledToFit()
            
            VStack(alignment: .leading) {
                Image(user)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(.blue, lineWidth: 5))
                Spacer()
                Text(fname)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                Text(lname)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 17))
            }.padding(.top).padding(.bottom).padding(.leading, -30)
        }.frame(width: 150, height: 250).cornerRadius(15)
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
