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
                
//             VStack (alignment: .center, spacing: 0) {
             VStack {

                 VStack(spacing: 0) {
                     
                     Text("DELIVEREE")
                         .font(.largeTitle)
                         .fontWeight(.black)
                         .foregroundColor(Color(hue: 0.0, saturation: 0.088, brightness: 0.913))
                   //  padding(.bottom, 100)
                     
                     //                    .background(Color.black)
                     // .background(Color.init()))
                     //.multilineTextAlignment(.center)
                         .padding()
                     
                         .background(Image("gamburger2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.5))
                            .frame(width: 400, height: 580)
                         )
                     Group{
                         
                     }
                     
                
                 Text("Your favourite local restaurants delivered to your doorstep.")
                     .font(.body)
                     .foregroundColor(.white)
                     .multilineTextAlignment(.center)
                     }
                // Spacer()
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
