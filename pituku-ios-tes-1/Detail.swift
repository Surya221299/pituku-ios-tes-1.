//
//  Detail.swift
//  pituku-ios-tes-1
//
//  Created by Bamantara S on 10/11/23.
//

import SwiftUI

struct Detail : View {
    var body: some View {
        
        NavigationView {
            VStack {
                HStack(alignment: .center) {
                    NavigationLink(destination: Home()) {
                        Image("ArrowLeft")
                    }
                    Spacer()
                    Text("Create Contract")
                    Spacer()
                    NavigationLink(destination: Inquiry3()) {
                        Image("mdi_clipboard-text-history")
                    }
                }
                
                VStack(spacing: 40) {
                    Image("noData")
                    Text("There is no list of contract.\nCreate the contract now!")
                        .foregroundColor(Color("Gray"))
                    NavigationLink(destination: Inquiry3()) {
                            HStack {
                                Image("plus")
                                Text("Create Contract")
                                    .font(.system(size: 14, weight: .medium))
                            }

                        .padding(16)
                        .foregroundColor(.white)
                        .background(Color("Primary"))
                        .cornerRadius(.infinity)
                    }
                }
                .frame(height: UIScreen.main.bounds.size.height * 0.8)
                
                
            }
        }
        .padding(.horizontal, 16)
        
        
    }
}


struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}
