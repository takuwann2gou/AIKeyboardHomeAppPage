//
//  ContentView.swift
//  keyboard_homeapp
//
//  Created by 上野恭明 on 2023/03/10.
//

import SwiftUI

//VIEWの中に入れる要素群グループ
struct ImgView:View{
    @State private var text: String = ""
    
    let img:String
    var body: some View {
        Image("img")
//          Text("●")
//            .resizable()
                    .frame(width: 25, height: 25)
    }
}

struct HeaderView: View {
    @State private var text: String = ""
    
    var body: some View {
        ZStack{
            HStack{
                ImgView(img:"img")
                Text("AIキーボーßド")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }.frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color(red: 0.137, green: 0.184, blue: 0.243))
        }
    }
}

struct NoticeView: View {
    @State private var text: String = ""
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true) {
            Text("お知らせ")
                .frame(
                    maxWidth:.infinity,
                    maxHeight:150,
                    alignment:.top)
                .padding(10)
                .background(Color.white)
            Text("【AIキーボード】は、コピーした文言に対する返信案を瞬時に提示するChatGPTのAPIを使用した、革新的なキーボードアプリです。あの時、あの場面で何を言えばよかったか悔しくてもう後の祭り…そんな経験をしたことはありませんか？AIキーボードなら、あの時言いたかった言葉を簡単に思い出すことができます！")
                .font(.caption2)
                .frame(maxWidth: .infinity)
                .padding(.horizontal,30)
                .padding(.bottom,10)
        }
        .frame(maxWidth: .infinity, maxHeight: 100.0)
        .accentColor(Color.black)
        .background(Color.white)
        
        
    }
}

//サブスクボタンの子要素テンプレートとして用いましたが今は使っていません。これを展開しました。
struct subscribeButtonTemp: View{
    @State private var text: String = ""
    
    let titleText:String
    let costText:String
    let countText:String
    let captionText:String
    
    var body: some View{
        Button(action: {
        }) {
            VStack{
                HStack{
                    Text(titleText)
                        .fontWeight(.heavy)
                    Text(costText)
                    Spacer()
                }.padding(.bottom,1)
                
                HStack(){
                    Text(countText)
                        
                    Spacer()
                }
                
                HStack(){
                    Text(captionText)
                    Spacer()
                }
            }.padding(.leading,100)
                .padding(20)
                .lineSpacing(5)
        }
        .frame(maxWidth: .infinity)
        .accentColor(Color.black)
        .background(Color.white)
        .multilineTextAlignment(.leading)
    }
}


struct ContentsTitle: View{
    @State private var text: String = ""
    
    let title:String
    var body: some View {
        Text(title)
            .frame(maxWidth: .infinity, minHeight: 34, alignment: .leading)
            .padding(.leading,20)
            .accentColor(Color.gray)
            .font(.subheadline)
    }
}



struct SubscribeButtons: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            // ContentsTitle
            ContentsTitle(title:"利用プラン")
            
            // subscribeButtonTemp 1
            Button(action: {}) {
                VStack {
                    HStack {
                        Text("フリープラン")
                            .fontWeight(.heavy)
                        Text("無料/月")
                        Spacer()
                    }
                    .padding(.bottom, 1)
                    
                    HStack {
                        Text("使用回数：10回/日")
                        Spacer()
                        ImgView(img:"")
                    }
                }
                .padding(.leading, 30)
                .padding(20)
                .lineSpacing(5)
            }
            .frame(maxWidth: .infinity)
            .accentColor(Color.black)
            .background(Color.white)
            .multilineTextAlignment(.leading)
            
            Spacer(minLength: 2)
            
            // subscribeButtonTemp 2
            Button(action: {}) {
                VStack {
                    HStack {
                        Text("Lightプラン")
                            .fontWeight(.heavy)
                        Text("200円/月")
                        Spacer()
                    }
                    .padding(.bottom, 1)
                    
                    HStack {
                        Text("使用回数：1000回/月")
                        Spacer()
                        ImgView(img:"")
                        
                    }
                    
                    HStack {
                        Text("広告の非表示")
                        Spacer()
                    }
                }
                .padding(.leading, 30)
                .padding(20)
                .lineSpacing(5)
            }
            .frame(maxWidth: .infinity)
            .accentColor(Color.black)
            .background(Color.white)
            .multilineTextAlignment(.leading)
            
            Spacer(minLength: 2)
            
            // subscribeButtonTemp 3
            Button(action: {}) {
                VStack {
                    HStack {
                        Text("Proプラン")
                            .fontWeight(.heavy)
                        Text("500円/月")
                        Spacer()
                    }
                    .padding(.bottom, 1)
                    
                    HStack {
                        Text("使用回数：無制限/月")
                        Spacer()
                        ImgView(img:"")
                    }
                    
                    HStack {
                        Text("広告の非表示")
                        Spacer()
                    }
                }
                .padding(.leading, 30)
                .padding(20)
                .lineSpacing(5)
            }
            .frame(maxWidth: .infinity)
            .accentColor(Color.black)
            .background(Color.white)
            .multilineTextAlignment(.leading)
        }
    }
}
struct TermsButtons: View {
    @State private var text: String = ""
    
    var body: some View {
        Button(action: {
        }) {
            HStack{
                ImgView(img:"img").padding(.leading, 10)
                Text("利用規約")
                Spacer()
            }
            
        }
        .frame(maxWidth: .infinity, minHeight: 50)
        .accentColor(Color.black)
        .background(Color.white)
        
        Divider()
        
        Button(action: {
        }) {
            HStack{
                ImgView(img:"img").padding(.leading, 10)
                Text("プライバシーポリシー")
                Spacer()
            }
        }.frame(maxWidth: .infinity, minHeight: 50)
        .accentColor(Color.black)
        .background(Color.white)
        
        Divider()
        
        Button(action: {
        }) {
            HStack{
                ImgView(img:"img").padding(.leading, 10)
                Text("ライセンス表明")
                Spacer()
            }
        }.frame(maxWidth: .infinity, minHeight: 50)
        .accentColor(Color.black)
        .background(Color.white)
    }
}
struct SettingButtons: View {
    @State private var text: String = ""
    
    var body: some View {
        
        ContentsTitle(title:"初期設定項目")
        
        Button(action: {
        }) {
            HStack{
                ImgView(img:"img").padding(.leading, 10)
                Text("キーボードの設定")
                    
                Spacer()
            }
        }.frame(maxWidth: .infinity, minHeight: 50)
        .accentColor(Color.black)
        .background(Color.white)
        
        Divider()
        
        Button(action: {
        }) {
            HStack{
                ImgView(img:"img").padding(.leading, 10)
                Text("キーボードの許可")
                    
                Spacer()
            }
        }.frame(maxWidth: .infinity, minHeight: 50)
        .accentColor(Color.black)
        .background(Color.white)
    }
}

//最初に読むVIEW
struct ContentView: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack (spacing : 0) {
            
            HeaderView()
            ScrollView(.vertical,showsIndicators: false){
                VStack (spacing : 0) {
                    
                    
                    NoticeView()
                    
                    SubscribeButtons()
                    
                    Spacer(minLength: 10)
                    
                    TermsButtons()
                    
                    SettingButtons()
                    
                    Text("あいうえお柿くけこ").padding(30)
                        .font(.caption2)
                }
            }.background(Color(red: 0.851, green: 0.851, blue: 0.851))
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

