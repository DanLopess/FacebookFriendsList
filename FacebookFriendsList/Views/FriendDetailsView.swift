//
//  FriendDetails.swift
//  FacebookFriendsList
//
//  Created by Daniel Lopes on 26/12/2020.
//

import SwiftUI

struct FriendDetailsView: View {
    var friend: Friend
    
    var body: some View {
        VStack {
            Image(friend.poster)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding([.leading, .trailing])
            VStack {
                Image(friend.avatar)
                    .resizable()
                    .clipped()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 120, height: 120)
                Text(friend.name)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
            }.offset(y: -70)
            Spacer()
        }.navigationBarTitle(Text(friend.name), displayMode: .inline)
    }
}

struct FriendDetails_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailsView(friend: Friend(name: "Kristina D.", mutualFriends: 350, avatar: "cristina", poster: "alps"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
