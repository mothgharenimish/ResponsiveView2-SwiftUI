//
//  Home.swift
//  ResponsiveView2-SwiftUI
//
//  Created by Nimish Mothghare on 12/04/25.
//

import SwiftUI

struct Home: View {
    @State var curentMenu: String = "Inbox"
    @State var showMenu : Bool = true
    var body: some View {
        
        ResponsiveUI { prop in
            
            HStack(spacing: 0) {
                
                if prop.isLandscape {
                    
                    SideBar(currentMenu: $curentMenu, prop: prop)
                }
                
                MainView(prop: prop, showMenu: $showMenu, currentMenu: $curentMenu)
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            
            .overlay {
                
                ZStack(alignment: .leading) {
                    
                    if !prop.isLandscape {
                        
                        Color.black
                            .opacity(showMenu ? 0.25 : 0)
                            .ignoresSafeArea()
                        
                            .onTapGesture {
                                withAnimation{showMenu.toggle()
                                }
                            }
                        SideBar(currentMenu: $curentMenu, prop: prop)
                            .offset(x: showMenu ? 0 : -300)
                    }
                }
            }
            
            
            
        }
        .ignoresSafeArea(.container,edges: .leading)

    }
}

#Preview {
    Home()
}
