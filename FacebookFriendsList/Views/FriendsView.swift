//
//  FriendsView.swift
//  FacebookFriendsList
//
//  Created by Daniel Lopes on 26/12/2020.
//

import SwiftUI

struct Friend: Identifiable {
    var id: UUID = UUID()
    var name: String
    var mutualFriends: Int
    var avatar: String
    var poster: String
}

struct FriendsView: View {
    var friends: [Friend] = [
        Friend(name: "Kristina D.", mutualFriends: 350, avatar: "cristina", poster: "alps"),
        Friend(name: "David G.", mutualFriends: 1, avatar: "david", poster: "sanfrancisco"),
        Friend(name: "Robert B.", mutualFriends: 22, avatar: "robert", poster: "london"),
        Friend(name: "Ruxi A.", mutualFriends: 30, avatar: "ruxi", poster: "paris"),
        Friend(name: "George B.", mutualFriends: 2, avatar: "george", poster: "newyork")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(friends, id: \.id) { friend in
                    AddFriendRow(friend: friend).padding()
                }.navigationTitle("Friends")
            }
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
