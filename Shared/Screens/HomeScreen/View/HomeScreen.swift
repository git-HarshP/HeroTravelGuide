//
//  ContentView.swift
//  Shared
//
//  Created by HarshPipaliya on 28/03/2022.
//

import SwiftUI

struct HomeScreen: View {
    @State var selected = Travel().all()[0]
    @State var show = false
    @Namespace var nameSpace
    
    @State var loadView = false
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
        
                Text("Hero")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                // Grind view
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2), spacing: 25) {
                    ForEach(Travel().all()) { travel in
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Image(travel.image ?? "Dubai")
                                .resizable()
                                .frame(height: 128)
                                .cornerRadius(16)
                                .onTapGesture {
                                    withAnimation(.spring()){
                                        show.toggle()
                                        selected = travel
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                            loadView.toggle()
                                        }
                                    }
                                }
                                .matchedGeometryEffect(id: travel.id, in: nameSpace)
                            
                            Text(travel.title ?? "Dubai")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                .padding(.horizontal)
            }
            
            // Hero View
            if show {
                DetailsScreen(selected: self.$selected, show: self.$show, nameSpace: self.nameSpace, loadView: self.$loadView)
            }
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
        .statusBar(hidden: show)
    }
}


