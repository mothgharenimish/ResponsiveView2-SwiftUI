//
//  SideBar.swift
//  ResponsiveView2-SwiftUI
//
//  Created by Nimish Mothghare on 12/04/25.
//

import SwiftUI

struct SideBar: View {
    @Binding var currentMenu: String
    var prop: Properties
    
    var body: some View {
        if !prop.isLandscape && !prop.isiPadPortrait{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    
                    Image("Juliaann")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 90,height: 90)
                        .clipShape(Circle())
                        .padding(.top,40)
                    
                    Text("Julia Ann")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    
                    
                    SideBarButton(icon: "tray.and.arrow.up.fill", title: "Inbox")
                        .padding(.top,10)
                    SideBarButton(icon: "figure.baseball", title: "Sent")
                    SideBarButton(icon: "eraser.fill", title: "Draft")
                    SideBarButton(icon: "delete.backward.fill", title: "Deleted")
                    SideBarButton(icon: "person.crop.circle.fill.badge.checkmark", title: "Account")
                }
                .padding()
                .padding(.top)
            }
            .padding(.leading, 10)
            .frame(width: prop.size.width / 2 > 300 ? 300 : prop.size.width / 2)
            
            .background(Color("brown"))
            .ignoresSafeArea()
        }
        
        if prop.isLandscape {
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    
                    Image("Juliaann")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 90,height: 90)
                        .clipShape(Circle())
                        .padding(.top,40)
                    
                    Text("Julia Ann")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    
                    
                    SideBarButton(icon: "tray.and.arrow.up.fill", title: "Inbox")
                        .padding(.top,10)
                    SideBarButton(icon: "figure.baseball", title: "Sent")
                    SideBarButton(icon: "eraser.fill", title: "Draft")
                    SideBarButton(icon: "delete.backward.fill", title: "Deleted")
                    SideBarButton(icon: "person.crop.circle.fill.badge.checkmark", title: "Account")
                }
                .padding()
                .padding(.top)
            }
            .padding(.leading, 10)
            .frame(width: prop.size.width / 2 > 300 ? 220 : prop.size.width / 2)
            
            .background(Color("brown"))
            .ignoresSafeArea()
        }
        
    }
    
    
    @ViewBuilder
    func SideBarButton(icon : String,title : String) -> some View {
        
        Button {
            
            currentMenu =
            title
            
        } label: {
            VStack {
                
                HStack(spacing: 10) {
                    
                    Image(systemName: "chevron.right")
                        .font(.caption)
                        .foregroundColor(.black)
                        .opacity(currentMenu == title ? 1 : 0)
                    
                    
                    Image(systemName: icon)
                        .font(.callout)
                        .foregroundColor(currentMenu == title ? .red : .black)
                    
                    Text(title)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(currentMenu == title ? .white : .black)
                    
                }
                
                .frame(maxWidth: .infinity,alignment: .leading)
                
                Divider()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
