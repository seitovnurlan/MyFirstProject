//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Nurlan Seitov on 5/3/23.
//
import SwiftUI

import SwiftUI

struct ContentView: View {
    
    @State var textSearch: String = ""
    @State private var showDetailView = false
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading) {
                    NavigationLink("", destination: DetailView(), isActive: $showDetailView)
                    
                    HStack {
                        Button {
                            print("open menu")
                        } label: {
                            Image(systemName: "line.3.horizontal.decrease")
                        }
                        .frame(width: 50, height: 47, alignment: .center)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(15)
                        
                        Spacer()
                        VStack(alignment: .center) {
                            Text("Delivering to")
                                .foregroundColor(.gray)
                            HStack {
                                Button("Manas Ave")
                                    {
                                    showDetailView.toggle()
                                }
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                Image(systemName: "arrowtriangle.down")
                                    .foregroundColor(.black)
                            }
                        }
                        Spacer()
                        Button {
                           // print("Open basket")
                        } label: {
                            Image(systemName: "cart")
                        }
                        .frame(width: 50, height: 47, alignment: .center)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        
                    }.padding(.bottom, 16)
                    
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ZStack {
                                Text("Delivery")
                            }
                            .frame(width: 85, height: 47, alignment: .center)
                            .background(.black)
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .cornerRadius(15)
                            
                            HorizontalCell()
                            HorizontalCell()
                            HorizontalCell()
                            HorizontalCell()
                        }
                    }.padding(.bottom, 16)
                    
                    Text("56 stores open")
                        .padding(.bottom, 16)
                    
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .padding(.trailing)
                            TextField("Find restaurant by name ", text: $textSearch)
                                .background(.white)
                                .cornerRadius(10)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        .padding(.trailing, 16)
                        
                        Spacer()
                        Button {
                            print("Open filter")
                        } label: {
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.bottom, 21)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HorizontalBigCell()
                            HorizontalBigCell()
                        }
                    }
                    VStack {
                        ScrollView(.vertical) {
                            VStack {
                                HorizontalOneCell()
                                    .padding(.leading, 10)
                            }
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal, 16)
            }
            .background(.white)
            
            .padding(.bottom, 21)
            
        }
    }
}

struct HorizontalCell: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image(systemName: "humidifier.fill")
        }
        .frame(width: 50, height: 47, alignment: .center)
        .background(.white)
        .foregroundColor(.black)
        .cornerRadius(15)
        ZStack {
            Image(systemName: "light.beacon.max.fill")
        }
        .frame(width: 50, height: 47, alignment: .center)
        .background(.white)
        .foregroundColor(.black)
        .cornerRadius(15)
        ZStack {
            Image(systemName: "car.rear.fill")
        }
        .frame(width: 50, height: 47, alignment: .center)
        .background(.white)
        .foregroundColor(.black)
        .cornerRadius(15)
        ZStack {
            Image(systemName: "ivfluid.bag.fill")
        }
        .frame(width: 50, height: 47, alignment: .center)
        .background(.white)
        .foregroundColor(.black)
        .cornerRadius(15)
        .padding(.horizontal, 16)
    }
       
}
                                         
struct HorizontalBigCell: View {
 var body: some View {
     ZStack {
         VStack{
             Spacer()
             VStack {
                 VStack(alignment: .leading) {
                     Text("Tony Roma’s")
                         .font(.system(size: 16))
                         .fontWeight(.bold)
                         .foregroundColor(Color.black)
                         .padding(.top, 102)
                     Text("Ribs & Steaks")
                         .font(.system(size: 12))
                         .foregroundColor(Color.black)
                     Text("Delivery: FREE • Minimum: $20")
                         .font(.system(size: 12))
                         .foregroundColor(Color.black)
                     HStack {
                         Image(systemName: "star.fill")
                             .foregroundColor(.black)
                         Text("4.5").font(.system(size: 12))
                             .foregroundColor(Color.black)
                             .fontWeight(.bold)
                         Image(systemName: "clock")
                         Text("35 Mins")
                             .font(.system(size: 12))
                             .fontWeight(.bold)
                             .foregroundColor(Color.black)
                     }
                     .padding([.bottom], 16)
                 }.padding([.horizontal, .bottom])
             }
             .frame(width: 160, height: 160, alignment: .center)
             .background(.white)

             .cornerRadius(30)
         }
         Image("food1")
             .resizable()
             .scaledToFit()
             .frame(width: 150, height: 150)
             .cornerRadius(75)
             .padding(.top, -86)
     }
     .frame(width: 180, height: 236, alignment: .center)
     .background(.white)
     .cornerRadius(30)
    ZStack {
         VStack{
             Spacer()
             VStack {
                 VStack(alignment: .leading) {
                     Text("Momos")
                         .font(.system(size: 16))
                         .fontWeight(.bold)
                         .foregroundColor(Color.black)
                         .padding(.top, 102)
                     Text("Japanes")
                         .font(.system(size: 12))
                         .foregroundColor(Color.black)
                     Text("Delivery: FREE • Minimum: $10")
                         .font(.system(size: 12))
                         .foregroundColor(Color.black)
                     HStack {
                         Image(systemName: "star.fill")
                             .foregroundColor(.black)
                         Text("4.5").font(.system(size: 12))
                             .foregroundColor(Color.black)
                             .fontWeight(.bold)
                         Image(systemName: "clock")
                         Text("30 Mins")
                             .font(.system(size: 12))
                             .fontWeight(.bold)
                             .foregroundColor(Color.black)
                     }
                     .padding([.bottom], 16)
                 }.padding([.horizontal, .bottom])
             }
             .frame(width: 160, height: 160, alignment: .center)
             .background(.white)

             .cornerRadius(30)
         }
         Image("food6")
             .resizable()
             .scaledToFit()
             .frame(width: 150, height: 150)
             .cornerRadius(75)
             .padding(.top, -86)
     }
    .frame(width: 180, height: 236, alignment: .center)
    .background(.white)
    .cornerRadius(30)
 }
}



struct HorizontalOneCell: View {
 var body: some View {
     ZStack {
         VStack{
             Spacer()
             VStack {
                 HStack {
                     Text("Paul")
                         .font(.system(size: 16))
                         .fontWeight(.bold)
                         .foregroundColor(Color.black)
                         .padding(.leading, 10)
                     Text("Frencha Pasta")
                         .font(.system(size: 12))
                         .foregroundColor(Color.black)
//                         .padding(.top, 20)
                     Text("Delivery: FREE • Minimum: $0")
                         .font(.system(size: 12))
                         .foregroundColor(Color.black)
                     HStack {
                         Image(systemName: "star.fill")
                             .foregroundColor(.black)
                         Text("4.5").font(.system(size: 12))
                             .foregroundColor(Color.black)
                             .fontWeight(.bold)
                         Image(systemName: "clock")
                         Text("25 Mins")
                             .font(.system(size: 12))
                             .fontWeight(.bold)
                             .foregroundColor(Color.black)
                     }
//                     .padding([.leading], 100)
                 }  //.padding([.horizontal, .leading])
             }
             .frame(width: 250, height: 200, alignment: .leading)
             .background(.white)

             .cornerRadius(30)
         }
        // Spacer()
         Image("food2")
             .resizable()
             .scaledToFit()
             .frame(width: 150, height: 150)
             .cornerRadius(75)
//             .padding(.leading, 130)
     }
     .frame(width: 250, height: 236, alignment: .leading)
     .background(.white)
     .cornerRadius(30)
    
 }
}




struct DetailView: View {
    var body: some View {
        ZStack(alignment: .top) {
            
        VStack(alignment: .leading) {
            Group {
                Text("Choose delivery location")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                   // .padding(.top)
                //.multilineTextAlignment( )
                Text("Deliver to current location")
                    .font(.headline)
                
                Text("Manas ave")
                    .font(.body)
                
                Divider()
                Text("Deliver to different location")
                    .font(.headline)
                
                Text("Choose location on the map")
                    .font(.body)
                
                Divider()
                Spacer()
                
            }
            Group
            {
                Text("Saved Addresses")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                
                Text("Home")
                    .font(.headline)
                
                Text("Jukeev-Pudovkin St 43, apt #12")
                    .font(.body)
                
                Divider()
                Text("Work")
                    .font(.headline)
                
                Text("Manas ave 32,floor 7, office #703")
                    .font(.body)
                
                Divider()
                Text("Hotel")
                    .font(.headline)
                
                Text("Frunze St 50, floor 10, room #1011")
                    .font(.body)
                Spacer()
            }
        }
    }
}
}
