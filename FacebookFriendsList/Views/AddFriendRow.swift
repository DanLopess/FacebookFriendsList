//
//  FriendRow.swift
//  FacebookFriendsList
//
//  Created by Daniel Lopes on 26/12/2020.
//

import SwiftUI

struct AddFriendRow: View {
    var friend: Friend
    
    var body: some View {
        NavigationLink(destination: FriendDetailsView(friend: friend)) {
            HStack {
                Image(friend.avatar)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                    
                VStack (alignment: .leading, spacing: 10) {
                    VStack (alignment: .leading, spacing: 2) {
                        Text(friend.name)
                            .foregroundColor(.primary)
                        Text("\(friend.mutualFriends) mutual friends")
                            .foregroundColor(.secondary)
                    }
                    HStack {
                        Button(action: {print("Add friend")}) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 100, height: 35)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                Text("Add Friend")
                                    .font(.system(size: 13))
                                    .foregroundColor(.white)
                            }
                        }
                        Button(action: {print("Remove")}) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 100, height: 35)
                                    .foregroundColor(.gray)
                                Text("Remove")
                                    .font(.system(size: 13))
                                    .foregroundColor(.white)
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}


struct FriendRow_Previews: PreviewProvider {
    static var previews: some View {
        AddFriendRow(friend: Friend(name: "Kristina D.", mutualFriends: 350, avatar: "cristina", poster: "alps"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
