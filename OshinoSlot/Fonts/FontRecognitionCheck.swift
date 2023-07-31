//
//  FontRecognitionCheck.swift
//  OshinoSlot
//
//  Created by Min on 2023/07/30.
//

// 폰트 적용이 잘 안되신다구요? 프로그램에서 인식하는 폰트이름을 확인해보는건 어떨까요?
// 그래도 안되신다구요? 제 알빠인가요? :D 

import SwiftUI

struct FontRecognitionCheck: View {
    var body: some View {
        Text("Font Recognition Check")
            .onAppear {
                for family: String in UIFont.familyNames {
                    print(family)
                    for names : String in UIFont.fontNames(forFamilyName: family){
                        print("=== \(names)")
                    }
                }
            }
    }
}

#Preview {
    FontRecognitionCheck()
}
