//
//  DocumentView.swift
//  AIkeyboard
//
//  Created by 上野恭明 on 2023/03/12.
//

import SwiftUI

struct DocumentTemp: View{
    let title:String
    let document:String
    var body: some View {
        VStack {
            Text(title).font(.title3).padding(30)
            Text(document).font(.caption)
            Spacer()
        }
    }
}


struct TermsView: View {
    var body: some View {
        VStack {
            DocumentTemp(title:"利用規約",document:"これはあーだこーだ")
        }
        .navigationTitle("")
    }
}

struct PPView: View {
    var body: some View {
        VStack {
            DocumentTemp(title:"プライバシーポリシー",document:"これはあーだこーだ")
        }
        .navigationTitle("")
    }
}

struct LicenseView: View {
    var body: some View {
        VStack {
            DocumentTemp(title:"ライセンス表明",document:"これはあーだこーだ")
        }
        .navigationTitle("")
    }
}
