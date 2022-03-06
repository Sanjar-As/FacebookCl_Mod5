//
//  AddStory.swift
//  task_5.9.1
//
//  Created by Sanjar Aslonov on 05/03/22.
//

import SwiftUI

extension UIScreen {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
}

struct AddStory: View {
    var body: some View {
        ZStack {
            Image("user5").resizable().frame(width: 180, height: 180).scaledToFill().offset(x: 0, y: -40)
            VStack {
                Text("Create a").fontWeight(.medium)
                Text("Story").fontWeight(.medium)
            }
            .frame(height: 80)
            .frame(maxWidth: .infinity)
            .background(.gray.opacity(0.1))
            .offset(x: 0, y: 80)
            ZStack {
                Circle().frame(width: 41, height: 41).foregroundColor(.white)
                Image("add2").resizable().frame(width: 40, height: 40)
            }.offset(x: 0, y: 45)
        }.frame(width: 150, height: 250).cornerRadius(15)
    }
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
