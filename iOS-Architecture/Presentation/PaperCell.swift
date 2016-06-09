//
// Created by HieuVP on 6/9/16.
// Copyright (c) 2016 PYCO Group. All rights reserved.
//

import UIKit

class PaperCell: UICollectionViewCell {

    @IBOutlet weak var paperImageView: UIImageView!

    var paper: Paper? {
        didSet {
            if let paper = paper {
                paperImageView.image = UIImage(named: paper.imageName)
            }
        }
    }
}
