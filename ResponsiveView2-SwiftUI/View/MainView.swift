//
//  MainView.swift
//  ResponsiveView2-SwiftUI
//
//  Created by Nimish Mothghare on 13/04/25.
//

import SwiftUI

struct MainView: View {
    var prop : Properties
    @Binding var showMenu: Bool
    @Binding var currentMenu: String
    var data : [Int] = Array(1...100)
    var colors : [Color] = [.red,.yellow,.blue,.indigo,.orange,.green]
    
    private var iphonepottraitColumns: [GridItem] {
        let columnCount = Int(prop.size.width / 300)
        return Array(repeating: GridItem(.flexible()), count: max(2, min(columnCount, 2)))
    }
    private var iphonelandscapeColumns: [GridItem] {
        let columnCount = Int(prop.size.width / 300)
        return Array(repeating: GridItem(.flexible()), count: max(3, min(columnCount, 3)))
    }
    
    private var ipadpottraitColumns: [GridItem] {
        let columnCount = Int(prop.size.width / 300)
        return Array(repeating: GridItem(.flexible()), count: max(4, min(columnCount, 4)))
    }
    
    private var ipadlandscapeColumns: [GridItem] {
        let columnCount = Int(prop.size.width / 300)
        return Array(repeating: GridItem(.flexible()), count: max(4, min(columnCount, 4)))
    }

    
    var body: some View {
        
        VStack(spacing: 0) {
            
            if prop.isLandscape && !prop.isiPadLandscape{
                HStack {
                 
                    Image("Juliaann")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("Julia Ann")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("Contact No: 9284175645")
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        
                        Text("Location: Nagpur India")
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        Text("Hobbies: Playing Cricket, Acting")
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        
                        
                        
                        
                    }
                }
                .padding(.horizontal,2)
                .background(.orange)
            }
            
            
         else if !prop.isLandscape && !prop.isiPadPortrait{
                HStack {
                    
                    Image("Juliaann")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 140)
                        .clipShape(Circle())
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("Julia Ann")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("Contact No: 9284175645")
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        
                        Text("Location: Nagpur India")
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        Text("Hobbies: Playing Cricket, Acting")
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        
                        
                        
                        
                    }
                }
                .padding(.horizontal,5)
                .background(.yellow)
            }
            
        else if prop.isiPadPortrait{
                HStack {
                    
                    Image("Juliaann")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 140)
                        .clipShape(Circle())                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("Julia Ann")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Contact No: 9284175645")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        
                        Text("Location: Nagpur India")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("Hobbies: Playing Cricket, Acting")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.bottom,4)
                        
                        
                        
                        
                        
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("Follow me")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Folloeme(socialmediaImg: "icons8-fb-48", socialmediaweb:"juliaann/fb")
                        
                        Folloeme(socialmediaImg: "icons8-instagram-48", socialmediaweb:"juliaann/instagram")
                        
                        Folloeme(socialmediaImg: "icons8-twitter-48", socialmediaweb:"juliaann/twitter")
                    }
                }
                .padding(.horizontal,10)
                .background(.yellow)
                
            }
            
            
          else if prop.isiPadLandscape {
                
              HStack {
                  
                  Image("Juliaann")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 140, height: 140)
                      .clipShape(Circle())
                  VStack(alignment: .leading, spacing: 5) {
                      
                      Text("Julia Ann")
                          .font(.title)
                          .fontWeight(.bold)
                      
                      Text("Contact No: 9284175645")
                          .font(.title2)
                          .fontWeight(.semibold)
                      
                      
                      Text("Location: Nagpur India")
                          .font(.title2)
                          .fontWeight(.semibold)
                      
                      Text("Hobbies: Playing Cricket, Acting")
                          .font(.title2)
                          .fontWeight(.semibold)
                      
                      
                      
                      
                      
                  }
                  
                  Spacer()
                  
                  VStack(alignment: .leading, spacing: 5) {
                      
                      Text("Follow me")
                          .font(.title3)
                          .fontWeight(.semibold)
                      
                      Folloeme(socialmediaImg: "icons8-fb-48", socialmediaweb:"juliaann/fb")
                      
                      Folloeme(socialmediaImg: "icons8-instagram-48", socialmediaweb:"juliaann/instagram")
                      
                      Folloeme(socialmediaImg: "icons8-twitter-48", socialmediaweb:"juliaann/twitter")
                  }
              }
              .padding(.horizontal,10)
              .background(.yellow)
                
            }
            if !prop.isLandscape && !prop.isiPadPortrait {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: iphonepottraitColumns, spacing: 20) {
                        ForEach(data, id: \.self) { number in
                            ZStack {
                                Rectangle()
                                    .frame(height: 170)
                                    .foregroundColor(colors[number % 4])
                                    .cornerRadius(30)
                                Text("\(number)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 70, design: .rounded))
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 20)
            }
            
            
           else if prop.isLandscape && !prop.isiPadLandscape{
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: iphonelandscapeColumns, spacing: 20) {
                        ForEach(data, id: \.self) { number in
                            ZStack {
                                Rectangle()
                                    .frame(height: 170)
                                    .foregroundColor(colors[number % 4])
                                    .cornerRadius(30)
                                Text("\(number)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 70, design: .rounded))
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 20)
            }
            
            else if prop.isiPadPortrait {
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: ipadpottraitColumns, spacing: 20) {
                        ForEach(data, id: \.self) { number in
                            ZStack {
                                Rectangle()
                                    .frame(height: 220)
                                    .foregroundColor(colors[number % 4])
                                    .cornerRadius(30)
                                Text("\(number)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 70, design: .rounded))
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 20)
                
            }
            
            else if prop.isiPadLandscape {
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: ipadlandscapeColumns, spacing: 20) {
                        ForEach(data, id: \.self) { number in
                            ZStack {
                                Rectangle()
                                    .frame(height: 220)
                                    .foregroundColor(colors[number % 4])
                                    .cornerRadius(30)
                                Text("\(number)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 70, design: .rounded))
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 20)
            }

            Spacer()
            
            
        }
        //        .ignoresSafeArea(.all)
        
        
    }
    
    
    @ViewBuilder
    func Folloeme(socialmediaImg : String,socialmediaweb : String) -> some View {
        
        HStack(spacing: 3){
            
            Image(socialmediaImg)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 32,height: 32)
                .clipShape(Circle())
            
            Text(socialmediaweb)
                .font(.callout)
                .fontWeight(.semibold)
            
        }
    }
}

#Preview {
    ContentView()
}
