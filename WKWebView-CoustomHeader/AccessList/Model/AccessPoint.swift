//
//  AccessPoint.swift
//  WKWebView-CoustomHeader
//
//  Created by kawaharadai on 2018/05/12.
//  Copyright © 2018年 kawaharadai. All rights reserved.
//

import UIKit

struct AccessPoint {
    var title: String
    var url: String
    var freeText: String
    
    init(title: String, url: String, freeText: String) {
        self.title = title
        self.url = url
        self.freeText = freeText
    }
}

final class AccessPointList {
    private let titleList = ["WebView-Costom",
                             "CollectionView_Pinch",
                             "ImageVIew-Pinch",
                             "TransitionAnimation-fadein",
                             "Mapping-Json-Objective-C",
                             "TaskManegerApp_Swift",
                             "TwitterClientSample",
                             "TableView_Sample"]
    private let urlList = ["https://github.com/ddd503/WebView-Costom",
                           "https://github.com/ddd503/CollectionView_Pinch",
                           "https://github.com/ddd503/ImageVIew-Pinch",
                           "https://github.com/ddd503/TransitionAnimation-fadein",
                           "https://github.com/ddd503/Mapping-Json-Objective-C",
                           "https://github.com/ddd503/TaskManegerApp_Swift",
                           "https://github.com/ddd503/TwitterClientSample",
                           "https://github.com/ddd503/TableView_Sample"]
    private let freeTextList = ["WKWebViewをカスタムクラスで使うサンプル（ヘッダー付き）",
                                "CollectionViewのセルに入ったImageViewにピンチイン・アウト機能を追加するサンプル（横スクロール版）",
                                "ImageVIewにピンチイン・アウト機能を追加するサンプル",
                                "navigationControllerの画面遷移にアニメーションを追加するサンプル（今回はフェードイン）",
                                "Objective-CでJsonデータをマッピングするサンプル（Mantle使用）",
                                "TODOアプリサンプル（ファルダあり、Realm使用）",
                                "TwitterKitを使用してタイムラインを表示するサンプル",
                                "plistをデータソースとしたテーブルビューのサンプル（label部分のinsetをカスタムしている）"]
    
    func create() -> [AccessPoint] {
        var list = [AccessPoint]()
        for i in 0 ..< titleList.count {
            let accessPoint = AccessPoint.init(title: self.titleList[i], url: self.urlList[i], freeText: self.freeTextList[i])
            list.append(accessPoint)
        }
        return list
    }
}
