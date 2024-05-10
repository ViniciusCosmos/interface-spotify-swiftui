//
//  pagFinal.swift
//  Aula06
//
//  Created by Turma02-26 on 23/01/24.
//

import SwiftUI

struct pagFinal: View {
    
//    @State var musicaAtual : Musica
    var musica : Musica
    
    
    var body: some View {
        
        ZStack{
                LinearGradient(gradient: Gradient(colors: [.red, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        VStack{
            
            VStack{
                Image("arrasceta")
                    .resizable()
                    .frame(width: 250, height: 250)
            }
            VStack{
                Text(musica.nome)
                    .font(.system(size: 30))
                    .bold()
                
                Text(musica.artista)
                    .font(.system(size: 20))
            } .foregroundColor(.white)
            
            HStack{
             
                Image(systemName: "shuffle")
                    .resizable().frame(width:40, height: 40)
                Spacer()
                
                Image(systemName: "backward.end")
                    .resizable().frame(width:40, height: 40)
                Spacer()
                
                Image(systemName: "play")
                    .resizable().frame(width:60, height: 60)
                Spacer()
             
               
                Image(systemName: "forward.end")
                    .resizable().frame(width:40, height: 40)
                Spacer()
                
                Image(systemName: "repeat")
                    .resizable().frame(width:40, height: 40)
              
                
            } .foregroundColor(.white)
                .padding(20)
                
        }
        
    }
      
    }
}

struct pagFinal_Previews: PreviewProvider {
    static var previews: some View {
        pagFinal(musica: Musica(id: 1, nome: "musica", artista: "artista", capa: "arrasceta"))
    }
}
