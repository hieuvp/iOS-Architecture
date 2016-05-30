//
// Created by HieuVP on 5/30/16.
// Copyright (c) 2016 PYCO Group. All rights reserved.
//

import RxSwift
import RxAlamofire

class PixabayRepository {

    struct Constants {
        private static let url = "https://pixabay.com/api/"
        private static let key = "2663353-150a52b87b5350072f023616f"
        private static let parameters: [String:AnyObject] = {
            return [
                    "key": key,
                    "image_type": "photo",
                    "safesearch": true,
                    "per_page": 50,
            ]
        }()
    }

    func request() -> Observable<ResponseEntity> {
        return RxAlamofire.requestJSON(.GET, Constants.url, parameters: Constants.parameters)
                .map { (_, json) in
                    return try ResponseEntity.decodeValue(json)
                }
    }
}
