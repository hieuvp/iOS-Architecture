//
// Created by HieuVP on 6/8/16.
// Copyright (c) 2016 PYCO Group. All rights reserved.
//

import Foundation

class PapersDataSource {
    private var papers = [Paper]()

    var count: Int {
        return papers.count
    }

    init() {
        papers = loadPapersFromDisk()
    }

    private func loadPapersFromDisk() -> [Paper] {
        if let path = NSBundle.mainBundle().pathForResource("Papers", ofType: "plist") {
            if let array = NSArray(contentsOfFile: path) {
                var papers: [Paper] = []
                for item in array {
                    if let dict = item as? NSDictionary {
                        let caption = dict["caption"] as! String
                        let imageName = dict["imageName"] as! String
                        let section = dict["section"] as! String
                        let index = dict["index"] as! Int
                        let paper = Paper(caption: caption, imageName: imageName, section: section, index: index)
                        papers.append(paper)
                    }
                }
                return papers
            }
        }
        return []
    }
}
