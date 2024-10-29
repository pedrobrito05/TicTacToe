//
//  ContentView.swift
//  teste
//
//  Created by Pedro Brito on 29/09/2024.
//

import SwiftUI
import Photos
import AVKit

typealias Matrix = [[String]]

struct ContentView: View {
    @State private var buttonsText=Array(repeating: "", count: 10)
    @State private var turn = 0
    @State private var text = "Turn: "
    @State private var winX = 0;
          @State private var winO = 0;
          @State private var contX = 0;
          @State private var contO = 0;
    @State private var end = false;
    @State private var tabuleiro: Matrix = [
            ["", "", ""],
            ["", "", ""],
            ["", "", ""]
        ]
          
          
    var body: some View {
        VStack {
            VStack(alignment: .center){
                      Label("\(text)\(turn <= 9 && end==false ? (turn % 2 == 0 ? "X" : "O") : "")", systemImage: "")
                    .font(.largeTitle)
                    .bold()
            }
            
           
           
            HStack {
                VStack{
                          Button(action: {
                                    if(!(turn==9 || winO==1 || winX==1)){
                                        acaobotao(index1: 0, index2:0)
                                    }
                          }) {
                              Text(tabuleiro[0][0])
                                              .font(.system(size: 50))
                                              .bold()
                              .frame(width: 100, height: 100) // Set the width and height
                              .background(.pink)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .padding()
                          }
                    .frame(width: 100.0, height: 100.0)
                          Button(action: {
                                    if(!(turn==9 || winO==1 || winX==1)){
                                        acaobotao(index1: 1, index2:0)
                                    }
                                        
                          }) {
                              Text(tabuleiro[1][0])
                                              .font(.system(size: 50))
                                              .bold()
                              .frame(width: 100, height: 100) // Set the width and height
                              .background(.pink)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .padding()
                          }
                    .frame(width: 100.0, height: 100.0)
                          Button(action: {
                                    if(!(turn==9 || winO==1 || winX==1)){
                                              acaobotao(index1: 2, index2: 0)
                                    }
                          }) {
                              Text(tabuleiro[2][0])
                                              .font(.system(size: 50))
                                              .bold()
                              .frame(width: 100, height: 100) // Set the width and height
                              .background(.pink)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .padding()
                          }
                    .frame(width: 100.0, height: 100.0)
                }
                VStack{
                          Button(action: {
                                    if(!(turn==9 || winO==1 || winX==1)){
                                        acaobotao(index1: 0, index2:1)
                                    }
                          }) {
                              Text(tabuleiro[0][1])
                                              .font(.system(size: 50))
                                              .bold()
                              .frame(width: 100, height: 100) // Set the width and height
                              .background(.pink)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .padding()
                          }
                    .frame(width: 100.0, height: 100.0)
                          Button(action: {
                                    if(!(turn==9 || winO==1 || winX==1)){
                                              acaobotao(index1: 1, index2:1)
                                    }
                          }) {
                              Text(tabuleiro[1][1])
                                              .font(.system(size: 50))
                                              .bold()
                              .frame(width: 100, height: 100) // Set the width and height
                              .background(.pink)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .padding()
                          }
                    .frame(width: 100.0, height: 100.0)
                          Button(action: {
                                    if(!(turn==9 || winO==1 || winX==1)){
                                        acaobotao(index1: 2, index2:1)
                                    }
                          }) {
                              Text(tabuleiro[2][1])
                                              .font(.system(size: 50))
                                              .bold()
                              .frame(width: 100, height: 100) // Set the width and height
                              .background(.pink)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .padding()
                          }
                    .frame(width: 100.0, height: 100.0)
                }
                VStack{
                          Button(action: {
                                    if(!(turn==9 || winO==1 || winX==1)){
                                        acaobotao(index1:0, index2:2)
                                    }
                          }) {
                              Text(tabuleiro[0][2])
                                              .font(.system(size: 50))
                                              .bold()
                              .frame(width: 100, height: 100) // Set the width and height
                              .background(.pink)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .padding()
                          }
                    .frame(width: 100.0, height: 100.0)
                          Button(action: {
                                    if(!(turn==9 || winO==1 || winX==1)){
                                        acaobotao(index1: 1, index2: 2)
                                    }
                          }) {
                              Text(tabuleiro[1][2])
                                              .font(.system(size: 50))
                                              .bold()
                              .frame(width: 100, height: 100) // Set the width and height
                              .background(.pink)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .padding()
                          }
                    .frame(width: 100.0, height: 100.0)
                          Button(action: {
                                    if(!(turn==9 || winO==1 || winX==1)){
                                        acaobotao(index1: 2, index2: 2)
                                    }
                          }) {
                              Text(tabuleiro[2][2])
                                              .font(.system(size: 50))
                                              .bold()
                              .frame(width: 100, height: 100) // Set the width and height
                              .background(.pink)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .padding()
                          }
                    .frame(width: 100.0, height: 100.0)
                }
                .padding(.trailing)
                
            }
            
            .padding()
            .frame(width: 300.0, height: 300.0)
                  
            
        }
        
              
              
              Button(action:{
                        for i in 0..<3{
                            for j in 0..<3{
                                tabuleiro[i][j]=""
                            }
                                  
                        }
                        end=false
                        turn=0
                        winO=0
                        winX=0
                        text="Turn "
              }){
                    Label("", systemImage: "arrow.2.circlepath.circle")
                                  .frame(width: 135, height: 57) // Set the width and height
                                  .background(.pink)
                                  .foregroundColor(.white)
                                  .cornerRadius(8)
                                  .padding(.top, 100)
                                  .font(.system(size: 40))
                                  .bold()
              }
              
    }
    func acaobotao(index1: Int, index2: Int){
        if(end==false){
            if(tabuleiro[index1][index2].isEmpty){
                if(turn%2==0){
                    tabuleiro[index1][index2]="X"
                }else if(turn%2==1){
                    tabuleiro[index1][index2]="O"
                }
                
                verificarVitoria(char:"O")
                verificarVitoria(char:"X")
                turn=turn+1
                escrever()
            }
            
            
        }
        
        
        
        
    }
    
    func escrever(){
        print(tabuleiro)
    }
    func verificarVitoria(char: String){
        
        for i in 0..<3{
            for j in 0..<3{
                if(tabuleiro[i][j]==char){
                    winO=winO+1
                    if(winO==3){
                        text=char+" wins"
                        end=true
                        break
                        
                    }
                }else{
                    winO=0
                }
                
            }
            winO=0
        }
        
        for i in 0..<3{
            for j in 0..<3{
                if(tabuleiro[j][i]==char){
                    winO=winO+1
                    if(winO==3){
                        text=char+" wins"
                        end=true
                        break
                    }
                }else{
                    winO=0
                }
            }
            winO=0
        }
        
        for i in 0..<3{
            if(tabuleiro[i][i]==char){
                winO=winO+1
                if(winO==3){
                    text=char+" wins"
                    end=true
                    break
                }
            }else{
                winO=0
            }
            
        }
        winO=0
        
        var x=2
        var y=0
        while x>=0{
            if(tabuleiro[x][y]==char){
                winO=winO+1
                if(winO==3){
                    text=char+" wins"
                    end=true
                    break
                }
            }else{
                winO=0
            }
            x=x-1
            y=y+1
        }
        winO=0

    }
          
          
}

#Preview {
    ContentView()
}
