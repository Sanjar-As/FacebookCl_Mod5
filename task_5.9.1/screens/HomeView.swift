//
//  HomeView.swift
//  task_5.9.1
//
//  Created by Sanjar Aslonov on 03/03/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                //profile, live, photo, room
                VStack {
                    HStack {
                        Image("user").resizable().frame(width: 60, height: 60).cornerRadius(30)
                        Text("What's on your mind ?").font(.system(size: 17))
                    }
                    .frame(height: 90)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading).padding(.trailing)
                    Divider()
                    
                    HStack {
                        Spacer()
                        HStack(spacing: 5) {
                            Image("facebook").resizable().frame(width: 24, height: 24)
                            Text("Live")
                        }
                        
                        Spacer()
                        HStack(spacing: 5) {
                            Image("picture").resizable().frame(width: 24, height: 24)
                            Text("Photo")
                        }
                        
                        Spacer()
                        HStack(spacing: 5) {
                            Image("camera").resizable().frame(width: 24, height: 24)
                            Text("Room")
                        }
                        Spacer()
                    }.frame(height: 50).frame(maxWidth: .infinity, alignment: .topLeading)
                }
                
                //create room
                VStack {
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity).background(.gray.opacity(0.3))
                    
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                AddRoom()
                                RoomItem(isOnline: true, onlineUser: "cat")
                                RoomItem(isOnline: true, onlineUser: "sarah")
                                RoomItem(isOnline: true, onlineUser: "user-1")
                                RoomItem(isOnline: true, onlineUser: "user2")
                                RoomItem(isOnline: true, onlineUser: "user3")
                            }
                        }
                    }.frame(height: 90).frame(maxWidth: .infinity).padding(.leading)
                }
                
                //create story
                VStack {
                    HStack{}
                    .frame(height: 10)
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.3))
                    
                    HStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                AddStory()
                                StoryItem()
                                StoryItem(imgStory: "jellyfish", fname: "Gulnoza", lname: "Navro'zova", user: "sarah")
                                StoryItem(imgStory: "feed1", fname: "Navro'zbek", lname: "Sharipov", user: "cat")
                                StoryItem(imgStory: "feed2", fname: "Suxrob", lname: "Navro'zov", user: "user3")
                                StoryItem(imgStory: "pattern", fname: "Sarah", lname: "Hedaya", user: "user-1")
                                StoryItem(imgStory: "feed5", fname: "Ibrohim", lname: "Rustamov", user: "user2")
                            }
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                }
                
                //post items
                VStack {
                    HStack {}.frame(height: 10).frame(maxWidth: .infinity).background(.gray.opacity(0.3))
                    PostItem()
                    PostItem(imgPost: "feed1")
                    PostItem(imgPost: "feed2")
                    PostItem(imgPost: "feed3")
                    PostItem(imgPost: "user5")
                    PostItem(imgPost: "user4")
                    UpdatedPost()
                    AdvertPost()
                    AdvertPost2()
                }
            }
                .navigationBarItems(
                leading: Text("facebook").fontWeight(.bold).foregroundColor(.blue).font(.system(size: 25)),
                trailing: HStack {
                    ZStack {
                        Circle().fill(.gray.opacity(0.3)).frame(width: 36, height: 36)
                        Image("ic_search")
                    }
                    ZStack {
                        Circle().fill(.gray.opacity(0.3)).frame(width: 36, height: 36)
                        Image("ic_send")
                    }
                })
                .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
