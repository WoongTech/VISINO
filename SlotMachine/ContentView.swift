//
//  ContentView.swift
//  SlotMachine
//
//  Created by Min on 2023/07/25.
//  일단 만들긴했는데 코드를 생각하면 UI를 짜는게 맞는듯...

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle() //fill background
            .foregroundColor(Color(
            red: 255,
            green: 255,
            blue: 255))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack{ //Title
                    Text("League of Gamble")
                        .bold()
                        .foregroundColor(.black)
                }.scaleEffect(1.5)
                
                Text("Jackpot announcement goes here")
                    .foregroundColor(.black)
                    .padding(.all, 5)
                
                HStack { //Slot Images
                    Image("doranB")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.black)
                    
                    Image("doranB")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.black)
                    
                    Image("doranB")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.black)
                    
                    Spacer()
                }
                .padding(.leading)
                
                HStack { //Deposits and Betting Informations
                    VStack{
                        Text("Deposit: £100")
                            .padding(.all, 10)
                            .foregroundColor(.black)
                        
                        HStack{
                            Button(action: {
                                //reduce current credit
                            }) {
                                Text("<")
                                    .bold()
                                    .foregroundColor(.black)
                                    .padding(.all, 10)
                                    .background(.blue)
                            }
                            
                            Text("Credits")
                                .foregroundColor(.black)
                            
                            Button(action: {
                                //increase current credit
                            }) {
                                Text(">")
                                    .bold()
                                    .foregroundColor(.black)
                                    .padding(.all, 10)
                                    .background(.blue)
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
                                    .background(.blue)
                            }
                            
                            Text("Lines")
                                .foregroundColor(.black)
                            
                            Button(action: {
                                //reduce current credit
                            }) {
                                Text(">")
                                    .bold()
                                    .foregroundColor(.black)
                                    .padding(.all, 10)
                                    .background(.blue)
                            }
                        }
                        
                        Text("Total Bet: ")
                            .foregroundColor(.black)

                    }
                    
                    VStack{
                        Button(action: {
                            //action for Maximum betting
                        }) {
                            Text("Maximum Bet")
                                .bold()
                                .foregroundColor(.black)
                                .padding(.all, 10)
                                .background(.blue)
                        }
                        
                        Button(action: {
                            //action for Auto Spin
                        }) {
                            Text("Auto Spin")
                                .bold()
                                .foregroundColor(.black)
                                .padding(.all, 10)
                                .background(.green)
                        }
                        
                        Button(action: {
                            //action for Regular spin
                        }) {
                            Text("Spin")
                                .bold()
                                .foregroundColor(.black)
                                .padding(.all, 10)
                                .background(.yellow)
                        }
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
