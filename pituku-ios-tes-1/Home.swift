//
//  Home.swift
//  pituku-ios-tes-1
//
//  Created by Bamantara S on 10/11/23.
//

import SwiftUI

struct Home : View {
    
    @State var index = 0
    @State var detail = false
    
    var body: some View {
        VStack(spacing: 0) {
            
            if !self.detail {
                MainView(detail: self.$detail)
            } else {
                Detail()
            }
            
            Spacer()
            CustomNavigation(index: self.$index, detail: self.$detail)
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
