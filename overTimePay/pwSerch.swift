//
//  ContentView.swift
//  overTimePay
//
//  Created by 백시훈 on 2022/07/16.
//

import SwiftUI

struct ContentView3: View {
    @State private var email = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
         Text("비밀번호 찾기")
                .font(.title)
            Text("이메일 입력시 아이디와 비밀번호를 \n변경할 수 있는 링크를 보내드립니다.")
            Text("이메일")
            TextField(" *****@*****", text: $email)
                .padding(8)
                .overlay(RoundedRectangle(cornerRadius: 14)
                .stroke(Color.blue, lineWidth: 2))
                .frame(width: 360)
            Button("메일발송"){
                
            }
                .foregroundColor(Color.white)
                .frame(width: 360, height: 40)
                .background(Color.blue)
                .cornerRadius(10)
            
            
            Button("로그인 화면으로"){
                
            }
                .foregroundColor(Color.blue)
                .frame(width: 360, height: 40)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2)
                  )
                
        }
        
        
    }
    
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
