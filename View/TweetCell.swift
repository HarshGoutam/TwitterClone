//
//  TweetCell.swift
//  Twitter
//
//  Created by Harsh Goutam on 06/02/22.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top,spacing: 12){
                Image("plus")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56 / 2)
                    .padding(.leading)
                VStack(alignment: .leading,spacing: 4){
                    HStack {
                        Text("name")
                        Text("@name")
                            .foregroundColor(.gray)
                        Text("2w")
                            .foregroundColor(.gray)
                    }
                    Text("matter")
                    
                }
                
            }
            .padding(.bottom)
            .padding(.trailing)
            HStack{
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width:32,height:32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width:32,height:32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width:32,height:32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width:32,height:32)
                })
            }
            .foregroundColor(.gray)
            .padding()
            Divider()
        }
        .padding(.leading,-16)
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
