//
//  ContentView.swift
//  interact-OSX
//
//  Created by 石金圆 on 2020/6/3.
//  Copyright © 2020 ethan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let titles = ["2019.10.21", "2019.10.22","2019.10.23","2019.10.24","2019.10.25","2019.10.26","2019.10.27"]
    let subtitles = ["星期一", "星期二","星期三","星期四","星期五","星期六","星期日"]
    let details = ["下雨", "晴天","有雾","多云","阴天","下雪","大风"]

    var body: some View {
        List(0..<self.titles.count) { item in
            HStack() { // 全部横向显示

                Text(self.titles[item])
                    .foregroundColor(.orange)
                    .bold()
                    .font(.system(size: 30)) // 调整字体
                    .frame(minWidth: 180,  maxWidth: 200) // 设置frame

                Text(self.subtitles[item])
                    .foregroundColor(.gray)
                    .font(.system(size: 20)) // 调整字体
                    .frame(minWidth: 80).padding() // 设置frame

                Text(self.details[item])
                    .foregroundColor(.blue)
                    .font(.system(.largeTitle))
                    .italic()
                    .frame(minWidth: 50,  maxWidth: 200) // 设置frame

            }.padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
