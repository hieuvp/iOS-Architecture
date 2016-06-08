//
// Created by HieuVP on 6/8/16.
// Copyright (c) 2016 PYCO Group. All rights reserved.
//

import UIKit

class MasterViewController: UICollectionViewController {

    private var papersDataSource = PapersDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        let width = CGRectGetWidth((collectionView!.frame)) / 3
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
    }

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return papersDataSource.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCellWithReuseIdentifier("PaperCell", forIndexPath: indexPath) as UICollectionViewCell
    }
}
