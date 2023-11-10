//
//  Inquiry3.swift
//  pituku-ios-tes-1
//
//  Created by Bamantara S on 10/11/23.
//

import SwiftUI

struct Inquiry3: View {
    @Environment(\.dismiss) private var dismiss
    @State private var search = ""
    @State var Tetrakloroetilen = true
    @State var Ksilena = false
    @State var Amonium_hidroksida = false
    @State var Tetrakloroetilen2 = false
    @State var Aseton = true
    @State var Metilenklorida = false
    @State var Etil_asetat = true
    @State var Asam_hidroklorat = false
    @State var Asam_nitrat = true
    @State var Karbon_tetraklorida  = false
    @State var Kalium_hidroksida = true
    @State var Kontaminasi = false
    @State var Asam_belum_terkodifikasi  = false
    @State var Metanol = false
    @State var Karbon_aktif  = false
    
    var body: some View {
        VStack(spacing: 24) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Waste Type")
                        .font(.system(size: 22, weight: .semibold))
                    Text("Select the type of waste from your company that you want to be picked-up and processed")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color("Gray"))
                }
                
                HStack {
                    Text("B3 Waste")
                        .frame(width: UIScreen.main.bounds.size.width * 0.4)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color("Primary"))
                    
                    Text("Non-B3 Waste")
                        .foregroundColor(Color("Primary"))
                        .frame(width: UIScreen.main.bounds.size.width * 0.4)
                }
                .frame(maxWidth: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("Primary"), lineWidth: 2)
                )
                .cornerRadius(8)
                
                HStack {
                    Image("charm_search")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20, height: 20)
                    TextField("Search waste name or code", text: $search)
                        .foregroundColor(Color("Gray"))
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .background(Color("Textfield-bg"))
                .cornerRadius(4)
                
                ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Group {
                        // Tetrakloroetilen
                        HStack {
                            Button(action: { Tetrakloroetilen.toggle() },
                                   label: {
                                switch Tetrakloroetilen {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Tetrakloroetilen")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A101a")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Ksilena
                        HStack {
                            Button(action: { Ksilena.toggle() },
                                   label: {
                                switch Ksilena {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Ksilena")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A101b")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Amonium hidroksida
                        HStack {
                            Button(action: { Amonium_hidroksida.toggle() },
                                   label: {
                                switch Amonium_hidroksida {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Amonium hidroksida ")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A101c")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Tetrakloroetilen
                        HStack {
                            Button(action: { Tetrakloroetilen2.toggle() },
                                   label: {
                                switch Tetrakloroetilen2 {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Tetrakloroetilen")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A102a")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Aseton
                        HStack {
                            Button(action: { Aseton.toggle() },
                                   label: {
                                switch Aseton {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Aseton")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A102b")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                    }
                    Group {
                        // Metilenklorida
                        HStack {
                            Button(action: { Metilenklorida.toggle() },
                                   label: {
                                switch Metilenklorida {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Metilenklorida")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A103a")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Etil asetat
                        HStack {
                            Button(action: { Etil_asetat.toggle() },
                                   label: {
                                switch Etil_asetat {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Etil asetat")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A103b")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Asam hidroklorat
                        HStack {
                            Button(action: { Asam_hidroklorat.toggle() },
                                   label: {
                                switch Asam_hidroklorat {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Asam hidroklorat")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A103c")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Asam nitrat
                        HStack {
                            Button(action: { Asam_nitrat.toggle() },
                                   label: {
                                switch Asam_nitrat {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Asam nitrat")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A105c")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Karbon tetraklorida
                        HStack {
                            Button(action: { Karbon_tetraklorida.toggle() },
                                   label: {
                                switch Karbon_tetraklorida {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Karbon tetraklorida")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A106a")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        
                    }
                    Group {
                        // Kalium hidroksida
                        HStack {
                            Button(action: { Kalium_hidroksida.toggle() },
                                   label: {
                                switch Kalium_hidroksida {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Kalium hidroksida")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A107c")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Kontaminasi
                        HStack {
                            Button(action: { Kontaminasi.toggle() },
                                   label: {
                                switch Kontaminasi {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Kontaminasi 83")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A108d")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Asam belum terkodifikasi
                        HStack {
                            Button(action: { Asam_belum_terkodifikasi.toggle() },
                                   label: {
                                switch Asam_belum_terkodifikasi {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Asam belum terkodifikasi")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A109d")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Metanol
                        HStack {
                            Button(action: { Metanol.toggle() },
                                   label: {
                                switch Metanol {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Metanol")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A110b")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                        // Karbon aktif
                        HStack {
                            Button(action: { Karbon_aktif.toggle() },
                                   label: {
                                switch Karbon_aktif {
                                case true:
                                    Image("checkbox-active")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(Color("Primary"))
                                        .frame(width: 24, height: 24)
                                default:
                                    Image("checkbox-inactive")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    
                                }
                                Text("Karbon aktif")
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(Color.black)
                                Spacer()
                                Text("A110d")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color.black)
                                    .opacity(0.5)
                                
                            })
                            
                        }
                        .padding(.vertical, 12)
                        Divider()
                    }
                }
            }
                Button(action: {}) {
                        Text("Next (5 types)")
                        .font(.system(size: 14, weight: .medium))
                        .padding()
                        .padding(.horizontal, 100)
                        
                          .foregroundColor(.white)
                          .background(Color("Primary"))
                          .cornerRadius(100)
                      }
                .offset(y: -60)
        }
            .padding(.horizontal, 24)
            .padding(.top, 90)
            .edgesIgnoringSafeArea(.all)
            .frame(height: UIScreen.main.bounds.height)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                // 2
                ToolbarItem(placement: .principal) {
                    HStack(alignment: .center) {
                        Button {
                            dismiss()
                        } label: {
                            // 4
                            HStack {
                                Image("ArrowLeft")
                            }
                        }
                        Spacer()
                        Text("Create Contract")
                        Spacer()
                        Image("mdi_clipboard-text-history")
                            .hidden()
                    }
                }
            }
    }
}

struct Inquiry3_Previews: PreviewProvider {
    static var previews: some View {
        Inquiry3()
    }
}
