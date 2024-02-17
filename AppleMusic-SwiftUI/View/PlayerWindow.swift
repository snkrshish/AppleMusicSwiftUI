//
//  PlayerWindow.swift
//  AppleMusic-SwiftUI
//
//  Created by Никита Шиляев on 29.01.2024.
//

import SwiftUI

struct PlayerWindow: View {

    @Binding var expand: Bool
    var animation: Namespace.ID
    var height = UIScreen.main.bounds.height / 2
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    var width = UIScreen.main.bounds.width


    @State var timeMusic: Double = 0.00
    @State var valume: Double = 0.3


    var body: some View {
        VStack {

            Capsule()
                .fill(.gray)
                .frame(width: expand ? 60 : 0 , height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? 30 : 0)
                .padding(.vertical, expand ? 30 : 0)

            HStack(spacing: 15) {

                if expand{Spacer(minLength: 0)}

                Image("music")
                    .resizable()
                    .frame(width: expand ? height : 70, height: expand ? height / 1.4 : 50)
                    .shadow(radius: 7)

                if !expand {
                    Text("Не исполняется")
                        .matchedGeometryEffect(id: "Label", in: animation)
                }

                Spacer(minLength: 0)

                if !expand {
                    Button(action: {
                    }, label: {
                        Image(systemName: "play.fill")
                            .foregroundStyle(.black)
                    })

                    Button(action: {
                    }, label: {
                        Image(systemName: "forward.fill")
                            .foregroundStyle(.black)
                            .opacity(0.3)
                            .padding(.trailing)
                    })
                }
            }
            .padding(.horizontal)

            VStack {
                HStack(spacing: 150) {
                    if expand {
                            Text("Не исполняется")
                                .font(.title2)
                                .foregroundStyle(.primary)
                                .bold()
                                .matchedGeometryEffect(id: "Label", in: animation)
                    }

                    if expand {
                        Button(action: {}) {
                            Image(systemName: "ellipsis.circle")
                                .font(.title2)
                                .foregroundStyle(.primary)
                        }
                    }
                }
                .padding()
                .padding(.top)
                
                VStack {
                    Slider(value: $timeMusic,
                           in: 0...4.12,
                           step: 0.01)
                        .tint(.gray)

                    HStack{
                        Text(String(format: "%.2f", timeMusic))
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        Spacer()
                        Text("-4:12")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                }
                .padding(.horizontal)
                
                Spacer()
                
                HStack(spacing: 80) {
                    Button {} label: {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .tint(.black)
                            .frame(width: 35, height: 25)
                    }

                    Button {} label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .tint(.black)
                            .frame(width: 25, height: 25)
                    }

                    Button {} label: {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .tint(.black)
                            .frame(width: 35, height: 25)
                    }
                }
                
                Spacer()

                HStack {
                    Image(systemName: "speaker.wave.1.fill")
                    Slider(value: $valume,
                           in: 0...1,
                           step: 0.01)
                        .tint(.gray)
                    Image(systemName: "speaker.wave.3.fill")
                }
                .padding(.horizontal, 15)

                Spacer()

                HStack(spacing: 50) {
                    Image(systemName: "quote.bubble")
                        .resizable()
                        .foregroundStyle(.gray)
                        .frame(width: 20, height: 20)
                    Image(systemName: "airplayaudio")
                        .resizable()
                        .foregroundStyle(.gray)
                        .frame(width: 20, height: 20)
                    Image(systemName: "list.bullet")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 20, height: 20)
                }


                Spacer(minLength: 0)
            }
            .frame(width: expand ? nil : 0, height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        .frame(maxWidth: width, maxHeight: expand ? .infinity : 80)
        .background(
            VStack(spacing: 0) {
                BlurView()
                Divider()
            }
                .onTapGesture {
                    withAnimation(.spring()) { expand.toggle()}
                }
        )
        .ignoresSafeArea()
        .offset(y: expand ? 0 : -47)

    }
}

