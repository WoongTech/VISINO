//
//  ContentView.swift
//  SlotMachine
//
//  Created by Min on 2023/07/25.
//
// 디자인관련 전달사항...
// 칸토리아 폰트 뜨는현상 방지, 에셋 데이터 정리 + 이미지 소스 추가 삽입(Oshinoko Fandom), 레전더리 은빛 테두리, 버튼 모양변경(+꾸미기), 세부UI + UX 조정(테두리 색상 그라데이션? etc.), plist랑 프로젝트 설정 변경(시계라던가,,,배터리라던가,,), 흰색뒷배경 사이즈조율, 백엔드 결과에따른 최적화용 코드변경, 코드 정리(자주쓰이는 디자인셋 모듈화). 

// 프로그래밍 전달사항...
// 설정(언어, 음악, ...), 최근100게임 통계, 확률정보 및 당첨금배율, 고액당첨 알림, 현재 잭팟금액, 크레딧 및 라인적용, 최종베팅금액 계산, 자동 스핀 및 일반 스핀, 최고베팅설정.

// 왜 노션을 냅두고 여기적는가.. 오늘만 봐줘라...

import SwiftUI

let screenSize: CGRect = UIScreen.main.bounds

struct ContentView: View {
    
    private let image_names = ["volume2", "volume4", "volume5", "volume8", "volume9", "volume11"]
    private let slot1 = [0,3,3,1,2,5,5,4]
    private let slot2 = [2,0,3,1,2,3,5,4,1,1]
    private let slot3 = [5,3,1,2,5,0,0]
    
    @State private var slot1_image = "volume2"
    @State private var slot2_image = "volume5"
    @State private var slot3_image = "volume11"
    
    var body: some View {
        ZStack{
            Image("oshinokoBackground") //ContentView BKGRD IMG
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(minWidth: 0, maxWidth: .infinity)
            
            Rectangle()
                .foregroundColor(.white)
                .opacity(0.7)
            
            VStack{
                VStack{
                    // Low prob winning announcement
                    Text("---User3107 won a Jackpot!!!---")
                        .frame(width: screenSize.width, height: screenSize.height * 0.025)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .font(.custom("CantoriaMTStd-Bold", size: 16))
                    
                    HStack{ //Setting view
                        Text("Setting    ")
                            .font(.custom("CantoriaMTStd-Bold", size: 16))
                            .foregroundColor(.black)
                            .padding(.leading)
                            .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.1)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(20)
                        
                        Text("")
                            .frame(width: screenSize.width * 0.33, height: screenSize.width * 0.1)
                        
                        HStack{ //Deposit display
                            Image("oshinokoRabbitHairpin")
                                .resizable()
                                .frame(width: screenSize.width * 0.1, height: screenSize.width * 0.1)
                            Text("100 ")
                                .font(.custom("CantoriaMTStd-Bold", size: 16))
                                .foregroundColor(.black)
                                .padding(.trailing)
                        }
                        .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.1)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(20)
                    }
                    
                    HStack{ //recent game log display ratio
                        Text("Results    ")
                            .font(.custom("CantoriaMTStd-Bold", size: 16))
                            .foregroundColor(.black)
                            .padding(.leading)
                            .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.1)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(20)
                        
                        Text("")
                            .frame(width: screenSize.width * 0.33, height: screenSize.width * 0.1)
                        
                        HStack{ //paytable
                            Button(action: {
                                //action for probability
                            }) {
                                Text(" Paytable")
                                    .font(.custom("CantoriaMTStd-Bold", size: 16))
                                    .padding(.all)
                                    .foregroundColor(.black)
                            }
                            .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.1)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(20)
                        }
                    }
                }
                
                Image("oshinokoLogo") //Logo
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 15)
                
                Text("JACKPOT £1M") //Jackpot
                    .frame(width: screenSize.width, height: screenSize.height * 0.03)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .opacity(0.8)
                    .font(.custom("CantoriaMTStd-Bold", size: 16))
                
                HStack{
                    ZStack{
                        Rectangle() //Slot 1 border
                            .foregroundColor(.purple)
                            .frame(width: screenSize.width * 0.31, height: screenSize.width * 0.60)
                            .cornerRadius(10)
                        
                        Image(slot1_image) //Slot 1 img
                            .resizable()
                            .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.59)
                            .cornerRadius(10)
                    }
                    
                    ZStack{
                        Rectangle() //Slot 2 border
                            .foregroundColor(.green)
                            .frame(width: screenSize.width * 0.31, height: screenSize.width * 0.60)
                            .cornerRadius(10)
                        
                        Image(slot2_image) //Slot 2 img
                            .resizable()
                            .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.59)
                            .cornerRadius(10)
                    }
                    
                    ZStack{
                        Rectangle() //Slot 3 border
                            .foregroundColor(.yellow)
                            .frame(width: screenSize.width * 0.31, height: screenSize.width * 0.60)
                            .cornerRadius(10)
                        
                        Image(slot3_image) //Slot 3 img
                            .resizable()
                            .frame(width: screenSize.width * 0.3, height: screenSize.width * 0.59)
                            .cornerRadius(10)
                    }
                }.padding(.horizontal)
                
                HStack {
                    Button(action: {
                        //reduce current credit
                    }) {
                        Text("<") //reduce one credit unit
                            .bold()
                            .foregroundColor(.black)
                            .padding(.all, 10)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(20)
                    }
                    
                    VStack{
                        Text("Credits") //Credits Text
                            .font(.custom("CantoriaMTStd-Bold", size: 16))
                            .foregroundColor(.black)
                        
                        Text("£1") //Current Credit
                            .font(.custom("CantoriaMTStd-Bold", size: 16))
                            .foregroundColor(.black)
                    }.frame(width: screenSize.width * 0.15, height: screenSize.width * 0.1)
                    
                    Button(action: {
                        //increase current credit
                    }) {
                        Text(">") //Increase one credit unit
                            .bold()
                            .foregroundColor(.black)
                            .padding(.all, 10)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(20)
                    }
                    
                    Text("")
                        .frame(width: screenSize.width * 0.1, height: screenSize.width * 0.1)
                    
                    Button(action: {
                        //reduce current line
                    }) {
                        Text("<") //decrease one line unit
                            .bold()
                            .foregroundColor(.black)
                            .padding(.all, 10)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(20)
                    }
                    
                    VStack{
                        Text("Lines") //Line Text
                            .font(.custom("CantoriaMTStd-Bold", size: 16))
                            .foregroundColor(.black)
                        
                        Text("1") //Current betting lines
                            .font(.custom("CantoriaMTStd-Bold", size: 16))
                            .foregroundColor(.black)
                    }.frame(width: screenSize.width * 0.15, height: screenSize.width * 0.1)
                    
                    Button(action: {
                        //reduce current credit
                    }) {
                        Text(">") //increase one line unit
                            .bold()
                            .foregroundColor(.black)
                            .padding(.all, 10)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(20)
                    }
                }
                
                HStack{
                    VStack{
                        Text("Total Bet:     1  ") //Total bet display
                            .font(.custom("CantoriaMTStd-Bold", size: 16))
                            .foregroundColor(.black)
                            .frame(width: screenSize.width * 0.4, height: screenSize.width * 0.1)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(20)
                        
                        Button(action: {
                            //action for Maximum betting
                        }) {
                            Text("Maximum Bet")
                                .font(.custom("CantoriaMTStd-Bold", size: 16))
                                .foregroundColor(.black)
                                .padding(.all)
                                .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        }
                        .frame(width: screenSize.width * 0.4, height: screenSize.width * 0.1)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(20)
                    }
                    
                    Text("")
                        .frame(width: screenSize.width * 0.03, height: screenSize.width * 0.1)
                    
                    VStack{
                        
                        Button(action: {
                            //action for Auto Spin
                        }) {
                            Text("Auto Spin")
                                .font(.custom("CantoriaMTStd-Bold", size: 16))
                                .foregroundColor(.black)
                                .padding(.all)
                        }
                        .frame(width: screenSize.width * 0.4, height: screenSize.width * 0.1)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(20)
                        
                        Button(action: {
                            let slot1_idx = spin_slot(slot_len:slot1.count)
                            assign_image(number: slot1_idx, slot: slot1, slot_image: &slot1_image)
                            let slot2_idx = spin_slot(slot_len:slot2.count)
                            assign_image(number: slot2_idx, slot: slot2, slot_image: &slot2_image)
                            let slot3_idx = spin_slot(slot_len:slot3.count)
                            assign_image(number: slot3_idx, slot: slot3, slot_image: &slot3_image)
                            
                        }) {
                            Text("SPIN")
                                .font(.custom("CantoriaMTStd-Bold", size: 16))
                                .padding(.all)
                                .foregroundColor(.black)
                        }
                        .frame(width: screenSize.width * 0.4, height: screenSize.width * 0.1)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.oshinoPink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(20)
                    }
                }
            }
        }
    }
    
    func spin_slot(slot_len: Int)->Int {
        let velocity = Int.random(in: 0...100)
        
        let init_number = Int.random(in: 0...5)
        
        let slot_result_idx = (init_number + velocity)%slot_len
        
        return slot_result_idx
    }
    
    func assign_image(number: Int,slot:Array<Int>, slot_image:inout String) {
        slot_image = image_names[slot[number]]
    }
}

#Preview {
    ContentView()
}
