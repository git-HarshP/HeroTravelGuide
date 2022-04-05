//
//  DetailsScreen.swift
//  HeroTheTravelAgent
//
//  Created by HarshPipaliya on 30/03/2022.
//

import SwiftUI

struct DetailsScreen: View {
    @Binding var selected: Travel
    @Binding var show: Bool
    let nameSpace: Namespace.ID
    
    @Binding var loadView: Bool
    
    var body: some View {
        VStack {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                Image(selected.image ?? "Dubai")
                    .resizable()
                    .frame(height: 256)
                    .matchedGeometryEffect(id: selected.id, in: nameSpace)
                
                if loadView {
                
                    HStack {
                        Button {
                            loadView.toggle()
                            withAnimation(.spring()) {
                                show.toggle()
                            }
                        } label: {
                            Image(systemName: "xmark")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black.opacity(0.5))
                                .clipShape(Circle())
                        }
                        
                        Spacer()
                    }
                    .padding(.top, 34)
                    .padding(.horizontal)
                }
            }
            
            //Detail View...
            ScrollView(.vertical, showsIndicators: false) {
                if loadView {
                    VStack {
                        Text(selected.title ?? "Dubai")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top)
                            .padding(.horizontal)
                                                
                        Text(selected.desc ?? "")
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            .padding(.top)
                            .padding(.horizontal)
                            
                        
                        Text("Reviews")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top)
                            .padding(.horizontal)
                        
                        HStack {
                            ForEach (1...5, id: \.self) { i in
                                Image(i%2==0 ? "Dubai" : "Amsterdam")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 44, height: 44)
                                    .clipShape(Circle())
                                    .offset(x: -CGFloat(i * 16))
                            }
                            Spacer(minLength: 0)

                            Button {} label: {
                                Text("View All")
                                    .fontWeight(.bold)
                            }
                        }
                        .padding(.leading, 16)
                        .padding(.top)
                        .padding(.horizontal)
                        
                        TabView {
                            ForEach(1...6, id: \.self) { i in
                                Image(i%2==0 ? "Dubai" : "Amsterdam")
                                    .resizable()
                                    .cornerRadius(16)
                                    .padding(.horizontal)
                            }
                        }
                        .frame(height: 250)
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .padding(.top)
                        
                        Button {} label: {
                            Text("Book Trip")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 32)
                                .background(Color.blue)
                                .cornerRadius(16)
                        }
                        .padding(.top, 16)
                    }
                }
            }
        }
        .background(Color.white)
        .ignoresSafeArea(edges: .top)
    }
}
