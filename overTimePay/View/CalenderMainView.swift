//
//  CalenderMainView.swift
//  overTimePay
//
//  Created by 백시훈 on 2022/07/24.
//

import SwiftUI

struct CalenderMainView: View {
    @State private var date = Date()
    var body: some View {
        NavigationView{
            DatePicker("야근일자 캘린더", selection: $date)
                .datePickerStyle(GraphicalDatePickerStyle())
                
        }
    }
}

struct CalenderMainView_Previews: PreviewProvider {
    static var previews: some View {
        CalenderMainView()
    }
}
