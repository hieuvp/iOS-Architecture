//
// Created by HieuVP on 6/8/16.
// Copyright (c) 2016 PYCO Group. All rights reserved.
//

import UIKit

class MasterViewController: UICollectionViewController {

    private var papersDataSource = PapersDataSource()

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return papersDataSource.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PaperCell", forIndexPath: indexPath) as UICollectionViewCell
        return cell
    }
}
