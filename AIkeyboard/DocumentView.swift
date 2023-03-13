//
//  DocumentView.swift
//  AIkeyboard
//
//  Created by 上野恭明 on 2023/03/12.
//

import SwiftUI

struct DocumentTemp: View{
    @State private var fileContent = "None"
    let title: String
    let document: String
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: true){
            VStack {
                
                Text(title).font(.title3).padding(.bottom,30)
                Text(fileContent).font(.caption)
                Spacer()
            }.padding(30)
                .onAppear {
                    loadFile()
                }
        }}
            private func loadFile() {
                if let fileURL = Bundle.main.url(forResource: document, withExtension: "txt") {
                    do {
                        fileContent = try String(contentsOf: fileURL)
                    } catch {
                        fileContent = "File is Null"
                        print("Error loading file: \(error)")
                    }
                
            }
        
    }
}

struct TermsView: View {
    
    
    var body: some View {
        VStack {
            DocumentTemp(title:"利用規約", document: "Term")
        }
        .navigationTitle("")
        
        
        
        
    }
}
struct PPView: View {
    var body: some View {
        VStack {
            DocumentTemp(title:"プライバシーポリシー",document:"PP")
        }
        .navigationTitle("")
    }
}

struct LicenseView: View {
    var body: some View {
        VStack {
            DocumentTemp(title:"ライセンス表明",document:"License")
        }
        .navigationTitle("")
    }
}
