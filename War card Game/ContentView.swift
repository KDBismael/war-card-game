//
//  ContentView.swift
//  War card Game
//
//  Created by KDB-MacBook on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard:String="card7"
    @State var cpuCard:String="card13"
    @State var playerScore:Int=0;
    @State var cpuScore:Int=0;
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
            
            VStack(){
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
            
                Button(
                    action:{Deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("PLayer")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
        
    }
    
    
    func Deal(){
        //randomise player card
        var playerValue=Int.random(in: 2...14);
        playerCard="card" + String(playerValue)
        
        //randomise cpu card
        var cpuValue=Int.random(in: 2...14);
        cpuCard="card" + String(cpuValue)
        
        //update the score
        if playerValue>cpuValue{
            // add 1 to the player score
            playerScore+=1
        }else if cpuValue>playerValue{
            // add 1 to the cpu score
            cpuScore+=1
        }
    }
}

#Preview {
    ContentView()
}
