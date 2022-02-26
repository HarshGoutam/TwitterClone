//
//  SearchView.swift
//  Twitter
//
//  Created by Harsh Goutam on 06/02/22.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText)
                .padding()
            VStack{
                ForEach(
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
