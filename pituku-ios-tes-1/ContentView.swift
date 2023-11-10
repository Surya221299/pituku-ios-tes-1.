//
//  ContentView.swift
//  pituku-ios-tes-1
//
//  Created by Bamantara S on 10/11/23.
//

import SwiftUI

//
//  ContentView.swift
//  pituku-ios-tes-1.
//
//  Created by Bamantara S on 08/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home2 : View {
    
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

struct MainView: View {
    
    @Binding var detail : Bool
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                HStack(spacing: 64) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Hi, Davis Dias!")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        Text("Please check email to verify!")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.white)
                        
                        Button(action: {}) {
                            Text("Resend")
                                .font(.system(size: 12, weight: .medium))
                                .padding(.vertical, 9)
                                .padding(.horizontal, 24)
                                .foregroundColor(Color("Primary"))
                                .background(Color.white)
                                .cornerRadius(100)
                        }
                        .padding(.top, 10)
                    }
                    .padding(.top, -24)
                    .padding(.leading, 24)
                    VStack {
                        Image("freepik--character-1--inject-81")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 114, height: 152)
                        
                    }
                    .offset(x: -40)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .padding(.bottom, 24)
                }
                .padding(.top, 48)
                .frame(height: UIScreen.main.bounds.size.height * 0.27)
                .frame(maxWidth: .infinity)
                .background(Color("Primary"))
                
                
                VStack(alignment: .center, spacing: 12) {
                    Image("first-carousel")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                    
                    HStack(spacing: 14) {
                        Capsule()
                            .fill(Color("Primary"))
                            .frame(width: 48, height: 8)
                        Capsule()
                            .fill(Color("Gray"))
                            .frame(width: 48, height: 8)
                        Capsule()
                            .fill(Color("Gray"))
                            .frame(width: 24, height: 8)
                    }
                    
                    HStack {
                        Text("Pituku Services")
                            .font(.system(size: 16, weight: .semibold))
                        Spacer()
                    }
                    
                    HStack(spacing: 16) {
                        Button(action: {
                            self.detail.toggle()
                        }) {
                            VStack {
                                ZStack {
                                    Image("Union")
                                    Image("handshake")
                                }
                                Text("Inquiry\nRequest")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        VStack {
                            ZStack {
                                Image("Union")
                                Image("fast-delivery")
                            }
                            Text("Pickup\nRequest")
                                .font(.system(size: 12, weight: .medium))
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            ZStack {
                                Image("Union")
                                Image("folder")
                            }
                            Text("All\nReport")
                                .font(.system(size: 12, weight: .medium))
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            ZStack {
                                Image("Union")
                                Image("chat-box")
                            }
                            Text("Client\nSupport")
                                .font(.system(size: 12, weight: .medium))
                                .multilineTextAlignment(.center)
                        }
                    }
                    
                    HStack {
                        Text("How Pituku Works?")
                            .font(.system(size: 16, weight: .semibold))
                        Spacer()
                    }
                    Image("banner")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                    
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 24)
                .padding(.top, 24)
                .background(Color.white)
                .cornerRadius(40)
                .offset(y: -44)
                
            }
            .frame(maxWidth: .infinity)
            
        }
        .ignoresSafeArea(.all)
    }
}

struct CustomNavigation : View {
    
    @Binding var index : Int
    @Binding var detail : Bool
    
    var body: some View {
        
        if !self.detail {
            HStack {
                Group {
                    
                    Button(action: {
                        
                        self.index = 0
                        
                    }) {
                        HStack(spacing: 15) {
                            Image("Home")
                                .renderingMode(.template)
                            if self.index == 0 {
                                Text("Home")
                                    .font(.system(size: 14, weight: .medium))
                            }
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                    }
                    .foregroundColor(Color(self.index == 0 ? "Primary" : "Gray"))
                    .background(Color("tabBarActiveBG").opacity(self.index == 0 ? 1 : 0))
                    .clipShape(Capsule())
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        self.index = 1
                        
                    }) {
                        HStack(spacing: 15) {
                            Image("Wallet")
                                .renderingMode(.template)
                            
                            if self.index == 1 {
                                Text("Payment")
                                    .font(.system(size: 14, weight: .medium))
                            }
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                    }
                    .foregroundColor(Color(self.index == 1 ? "Primary" : "Gray"))
                    .background(Color("tabBarActiveBG").opacity(self.index == 1 ? 1 : 0))
                    .clipShape(Capsule())
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        self.index = 2
                        
                    }) {
                        HStack(spacing: 15) {
                            Image("Status")
                                .renderingMode(.template)
                            
                            if self.index == 2 {
                                Text("Tracking")
                                    .font(.system(size: 14, weight: .medium))
                            }
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                    }
                    .foregroundColor(Color(self.index == 2 ? "Primary" : "Gray"))
                    .background(Color("tabBarActiveBG").opacity(self.index == 2 ? 1 : 0))
                    .clipShape(Capsule())
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        self.index = 3
                        
                    }) {
                        HStack(spacing: 15) {
                            Image("Profile")
                                .renderingMode(.template)
                                .font(.system(size: 14, weight: .medium))
                            
                            if self.index == 3 {
                                Text("Profile")
                            }
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                    }
                    .foregroundColor(Color(self.index == 3 ? "Primary" : "Gray"))
                    .background(Color("tabBarActiveBG").opacity(self.index == 3 ? 1 : 0))
                    .clipShape(Capsule())
                    
                    Spacer(minLength: 0)
                }
                
            }
            .padding(.top, 12)
            .padding(.horizontal, 25)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            .background(Color.white)
        } else {
            
        }
        
        
        
    }
}
