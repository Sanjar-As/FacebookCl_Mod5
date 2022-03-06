//
//  AddRoom.swift
//  task_5.9.1
//
//  Created by Sanjar Aslonov on 05/03/22.
//

import SwiftUI

struct AddRoom: View {
    var body: some View {
        HStack {
            Image("video-camera")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.top, 5).padding(.leading, 20).padding(.bottom, 5)
            VStack {
                Text("Create").foregroundColor(.blue).font(.system(size: 18)).fontWeight(.semibold)
                Text("Room").foregroundColor(.blue).font(.system(size: 18)).fontWeight(.semibold)
            }.padding(.top, 5).padding(.trailing, 20).padding(.bottom, 5)
        }
        .overlay(RoundedRectangle(cornerRadius: 40).stroke(.blue.opacity(0.4), lineWidth: 3)).padding()
    }
}

struct AddRoom_Previews: PreviewProvider {
    static var previews: some View {
        AddRoom()
    }
}
