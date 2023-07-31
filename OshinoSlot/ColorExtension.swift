//
//  ColorExtension.swift
//  OshinoSlot
//
//  Created by Min on 2023/07/31.
//

// 이곳은 해당앱에서 사용할 커스텀색상(hex)을 저장하고, 해당색상을 rgb 형태로 변환해주는 개꿀 장소입니당.
// hex코드를 저장하실때, #의 존재여부는 중요하지않습니다

import SwiftUI

extension Color {
    static let oshinoPink = Color(hex: "#fbc2eb")
    static let oshinoPurple = Color(hex: "#a18cd1")
    
    static let oshinoLightPurple = Color(hex: "#e0c3fc")
    static let oshinoLightBlue = Color(hex: "#8ec5fc")
    
    //색상 만들기 귀찮아... 너도? 나도!, 힘들게 만들면 뭐해? 처음이 더 낫더라...
    //아쉬움의 온기가 남아있는 장소인듯하다.
    
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
