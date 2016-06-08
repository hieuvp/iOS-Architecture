//
// Created by HieuVP on 6/8/16.
// Copyright (c) 2016 PYCO Group. All rights reserved.
//

class Paper {
    var caption: String
    var imageName: String
    var section: String
    var index: Int

    init(caption: String, imageName: String, section: String, index: Int) {
        self.caption = caption
        self.imageName = imageName
        self.section = section
        self.index = index
    }
}
