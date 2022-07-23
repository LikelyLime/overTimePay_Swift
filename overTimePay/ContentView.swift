//
//  ContentView.swift
//  overTimePay
//
//  Created by 백시훈 on 2022/07/13.
//

import SwiftUI

struct ContentView: View {
    @State private var id = ""
    @State private var pw = ""
    @State private var rememberId = true
    @State private var tag:Int? = nil
    var body: some View {
        NavigationView{
            ZStack{
                
                Image("backgroundDotNoColor.001")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    .offset(x: 80, y: -250)
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 270, height: 550)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.blue, lineWidth: 1))
                    .shadow(radius: 8)
                    .offset(x: 0 ,y: -30)
                VStack(spacing: 50){
                    VStack(alignment: .leading,spacing: 30){
                        Text("아이디")
                        TextField(" Id", text: $id)
                            .frame(width: 230, height: 25)
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.blue, lineWidth: 2))
                        
                        HStack{
                            Text("비밀번호")
                            Button("비밀번호 찾기") {
                                self.tag = 2
                            }.padding(.leading, 80.0)
                        }
                        TextField(" Pw", text: $pw)
                            .frame(width: 230, height: 25)
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.blue, lineWidth: 2))
                        
                        
                        Toggle(isOn: $rememberId) {
                            Text("Remember Me")
                        }.frame(width: 230, height: 25)
                    }
                    
                    VStack(spacing: 30){
                        Button("로그인"){
                            
                        }
                        .foregroundColor(Color.white)
                        .frame(width: 230, height: 40)
                        .background(Color.blue)
                        .cornerRadius(10)
                        Button("회원가입"){
                            self.tag = 1
                        }
                        .foregroundColor(Color.blue)
                        .frame(width: 230, height: 40)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 2)
                        )
                        
                    }
                }.offset(x: 0, y: -50)
                ZStack{
                    
                    NavigationLink(destination: ContentView2(), tag: 1, selection: self.$tag) {
                        
                    }
                    NavigationLink(destination: ContentView3(), tag: 2, selection: self.$tag) {
                        
                    }
                    
                    
                    
                }
            }.navigationTitle("로그인")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
