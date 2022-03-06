//
//  RoomItem.swift
//  task_5.9.1
//
//  Created by Sanjar Aslonov on 05/03/22.
//

import SwiftUI

struct RoomItem: View {
    
    var isOnline = false
    var onlineUser = "user"
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(onlineUser).resizable().scaledToFill().frame(width: 60, height: 60).cornerRadius(30)
            if isOnline {            
                ZStack {
                    Circle().frame(width: 24, height: 24).foregroundColor(.white)
                    Circle().frame(width: 17, height: 17).foregroundColor(.green)
                }
            }
        }
    }
}

struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        RoomItem()
    }
}
