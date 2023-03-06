//
//  StartView.swift
//  MyFirstProject
//
//  Created by Nurlan Seitov on 6/3/23.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        
         ZStack{
             LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .top, endPoint: .bottom)
                 .edgesIgnoringSafeArea(.all)
                
             VStack {
                 
                 Text("DELIVEREE")
                     .font(.largeTitle)
                     .fontWeight(.black)
                     .foregroundColor(.white)
 //                    .background(Color.black)
                    // .background(Color.init()))
                     .multilineTextAlignment(.center)
                     .padding()
                     .background(Image("gamburger2")
                         .resizable()
                         .frame(width: 400, height: 580)
                         
                     
                     )
                 Text("Your favourite local restaurants delivered to your doorstep.")
                     .font(.body)
                     .foregroundColor(.white)
                     .multilineTextAlignment(.center)
 //                    .background(.black)
                     
 //                        .aspectRatio(contentMode: .fit)
                         
 //                Image("gamburger2")
 //                    .resizable()
 //                    .aspectRatio(contentMode: .fit)
                     //.imageScale(.medium)
                    // .foregroundColor(.accentColor)
                
                 
             }
             
         }
         
        
       //  .padding()
     }
 }


struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
