//
//  ContentView.swift
//  Aula06
//
//  Created by Turma02-26 on 23/01/24.
//

import SwiftUI

struct Musica: Identifiable {
    var id: Int
    var nome: String
    var artista: String
    var capa: String
}
struct ContentView: View {
    var arrayMusica = [
        Musica(id: 1, nome: "BURN IT DOWN", artista: "Linkin Park", capa: "arrasceta"),
        Musica(id: 2, nome: "Faint", artista: "Linkin Park", capa: "arrasceta"),
        Musica(id: 3, nome: "Left Behind", artista: "The Plot in You", capa: "arrasceta"),
        Musica(id: 4, nome: "Surreal", artista: "Scalene", capa: "arrasceta"),
        Musica(id: 5, nome: "Custer", artista: "Slipknot", capa: "arrasceta"),
        Musica(id: 6, nome: "Woman", artista: "Wolfmother", capa: "arrasceta")
    ]
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                
                VStack{
                    Image("arrasceta")
                        .resizable().frame(width: 250, height: 230)
                }.padding(30)
                    .shadow(radius: 20)
                
                VStack (alignment: .leading, spacing: 5){
                    VStack(alignment: .leading){
                        Text("Arrasca FM")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .bold()
                    }.padding(10)
                    /* titulo*/
                    
                    HStack{
                        Image("arrasceta")
                            .resizable().frame(width: 30, height: 30)
                        Text("Arrasceta")
                            .foregroundColor(.white)
                            .bold()
                        
                    }  .padding(10)
                    /* dono do album  */
                    
                    ForEach(arrayMusica) { x in
                        
                        NavigationLink{
                            pagFinal(musica:x)
                            
                        } label: {

                        HStack{
                            VStack {
                                Image("arrasceta")
                                    .resizable().frame(width: 60, height: 60)
                            }
                            VStack(alignment: .leading){
                                Text(x.nome)
                                    .foregroundColor(.white)
                                    .bold()
                                Text(x.artista)
                                    .foregroundColor(.white)
                                    .opacity(0.7)
                            }
                            }
                            Spacer()
                            VStack{
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.white)
                        
                            }/* icone da lateral */
                        }.padding(10)
                        
                    }/* for each */
                    
                    VStack{
                        Text("Sugeridos").font(.system(size: 20))
                            .foregroundColor(.white)
                            .bold()
                    }.padding(10)
                    
                    ScrollView(.horizontal) {
                        VStack{
                            HStack{
                                ForEach(arrayMusica) { Musica in
                                    VStack{
                                            Image("arrasceta")
                                                .resizable().frame(width: 150, height: 150)
                                            Text(Musica.nome)
                                                .foregroundColor(.white)
                                    }
                                    
                                }
                            }
                        }
                    }/* scroll horizontal k*/
                    .padding(20)
                }
                
            } /* Scroll vertical - principal*/
            
            .background(
                LinearGradient(gradient: Gradient(colors: [.red, .black]), startPoint: .top, endPoint: .bottom)
            )
        }.accentColor(.white)
        
    }
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
