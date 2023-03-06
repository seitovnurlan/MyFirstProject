//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Nurlan Seitov on 5/3/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Text("Hello")
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom)
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
//
            }

        }
        
       
      //  .padding()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//
//}

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack{
//                NavigationLink(destination: DetailView()) {
                NavigationLink(destination: StartView()) {
                    Text("Show detil view")
                    DetailView()
               // } .navigationBarTitle("")
                } .navigationBarTitle("Navigation", displayMode: .inline)
            }
                    
        }
    }
}
