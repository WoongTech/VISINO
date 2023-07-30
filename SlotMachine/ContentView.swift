//
//  ContentView.swift
//  SlotMachine
//
//  Created by Min on 2023/07/25.
//  음악, UI재배열, 육각버튼 + 그라데이션 추가, 폰트변경, 확률별 테두리변경, 화면 은빛 테두리

import SwiftUI

let screenSize: CGRect = UIScreen.main.bounds

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("oshinokoBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(minWidth: 0, maxWidth: .infinity)
            
            Rectangle()
                .foregroundColor(.white)
                .opacity(0.7)
            
            VStack{
                VStack{
                    HStack{
                        Text("")
                            .frame(width: screenSize.width * 0.65, height: screenSize.width * 0.1)
                        
                        HStack{
                            Image("oshinokoRabbitHairpin")
                                .resizable()
                                .frame(width: screenSize.width * 0.1, height: screenSize.width * 0.1)
                            Text("100")
                                .bold()
                                .foregroundColor(.black)
                                .padding(.trailing)
                        }
                        .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.1)
                        .background(.purple)
                        .cornerRadius(20)
                    }
                    
                    HStack{
                        Text("")
                            .frame(width: screenSize.width * 0.65, height: screenSize.width * 0.1)
                        
                        HStack{
                            Button(action: {
                                //action for probability
                            }) {
                                Text("Paytable")
                                    .bold()
                                    .padding(.all)
                                    .foregroundColor(.black)
                            }
                            .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.1)
                            .background(.purple)
                            .cornerRadius(20)
                        }
                    }
                }
                
                Image("oshinokoLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
     
                HStack{
                    Image("volume2")
                        .resizable()
                        .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.6)
                        .cornerRadius(10)
                    
                    Image("volume8")
                        .resizable()
                        .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.6)
                        .cornerRadius(10)
                    
                    Image("volume11")
                        .resizable()
                        .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.6)
                        .cornerRadius(10)
                }.padding(.horizontal)
                
                HStack {
                    VStack{
                        HStack{
                            Button(action: {
                                //reduce current credit
                            }) {
                                Text("<")
                                    .bold()
                                    .foregroundColor(.black)
                                    .padding(.all, 10)
                                    .background(.purple)
                            }
                            
                            Text("Credits")
                                .bold()
                                .foregroundColor(.black)
                            
                            Button(action: {
                                //increase current credit
                            }) {
                                Text(">")
                                    .bold()
                                    .foregroundColor(.black)
                                    .padding(.all, 10)
                                    .background(.purple)
                            }
                        }
                        
                        HStack{
                            Button(action: {
                                //reduce current line
                            }) {
                                Text("<")
                                    .bold()
                                    .foregroundColor(.black)
                                    .padding(.all, 10)
                                    .background(.purple)
                            }
                            
                            Text("Lines")
                                .bold()
                                .foregroundColor(.black)
                            
                            Button(action: {
                                //reduce current credit
                            }) {
                                Text(">")
                                    .bold()
                                    .foregroundColor(.black)
                                    .padding(.all, 10)
                                    .background(.purple)
                            }
                        }
                        
                        Text("Total Bet: ")
                            .bold()
                            .foregroundColor(.black)
                        
                    }
                    
                    VStack{
                        Button(action: {
                            //action for Maximum betting
                        }) {
                            Text("Maximum Bet")
                                .bold()
                                .foregroundColor(.black)
                                .padding(.all)
                                .background(.purple)
                        }
                        .frame(width: screenSize.width * 0.4, height: screenSize.width * 0.1)
                        .background(.purple)
                        .cornerRadius(20)
                        
                        Button(action: {
                            //action for Auto Spin
                        }) {
                            Text("Auto Spin")
                                .bold()
                                .foregroundColor(.black)
                                .padding(.all)
                                .background(.purple)
                        }
                        .frame(width: screenSize.width * 0.4, height: screenSize.width * 0.1)
                        .background(.purple)
                        .cornerRadius(20)
                        
                        Button(action: {
                            //action for Regular spin
                        }) {
                            Text("SPIN")
                                .bold()
                                .padding(.all)
                                .foregroundColor(.black)
                        }
                        .frame(width: screenSize.width * 0.4, height: screenSize.width * 0.1)
                        .background(.purple)
                        .cornerRadius(20)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
