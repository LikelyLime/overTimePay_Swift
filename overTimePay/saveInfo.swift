//
//  saveInfo.swift
//  overTimePay
//
//  Created by 백시훈 on 2022/07/18.
//

import SwiftUI

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

struct ContentView2: View {
    @State private var id = ""
    @State private var pw = ""
    @State private var pwCheck = ""
    @State private var name = ""
    @State private var phonNo = ""
    @State private var email = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Group{
            Text("아이디")
                
                HStack(spacing: 30){
                    TextField(" ID", text: $id)
                        .frame(width: 240, height: 25, alignment: Alignment.center)
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.blue, lineWidth: 2))
                    Button("중복체크"){
                        
                    }
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 40)
                        .background(Color.blue)
                        .cornerRadius(10)
                } 
            }
            Group{
                Text("비밀번호")
                TextField(" **********", text: $pw)
                    .padding(8)
                    .overlay(RoundedRectangle(cornerRadius: 14)
                    .stroke(Color.blue, lineWidth: 2))
                    .frame(width: 360)
            }
            Group{
                Text("비밀번호 확인")
                TextField(" **********", text: $pwCheck)
                    .padding(8)
                    .overlay(RoundedRectangle(cornerRadius: 14)
                    .stroke(Color.blue, lineWidth: 2))
                    .frame(width: 360)
            }
            Group{
                Text("이메일")
                HStack(spacing: 30){
                    TextField(" Email", text: $email)
                        .frame(width: 240, height: 25, alignment: Alignment.center)
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.blue, lineWidth: 2))
                    Button("확인"){
                        
                    }
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 40)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            Text("이름")
            TextField(" **********", text: $name)
                .padding(8)
                .overlay(RoundedRectangle(cornerRadius: 14)
                .stroke(Color.blue, lineWidth: 2))
                .frame(width: 360)
            
            Text("전화번호")
            TextField(" **********", text: $phonNo)
                .padding(8)
                .overlay(RoundedRectangle(cornerRadius: 14)
                .stroke(Color.blue, lineWidth: 2))
                .frame(width: 360)
            
            Button("회원가입"){
                
            }
            
                .foregroundColor(Color.white)
                .frame(width: 360, height: 40)
                .background(Color.blue)
                .cornerRadius(10)
                
                
        }
        .padding(.horizontal, 20.0)
        
    }
    
}
