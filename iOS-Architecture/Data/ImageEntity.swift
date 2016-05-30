//
// Created by HieuVP on 5/30/16.
// Copyright (c) 2016 PYCO Group. All rights reserved.
//

import Himotoki

struct ImageEntity {
    let id: UInt64

    let pageURL: String
    let pageImageWidth: Int
    let pageImageHeight: Int

    let previewURL: String
    let previewWidth: Int
    let previewHeight: Int

    let imageURL: String
    let imageWidth: Int
    let imageHeight: Int

    let viewCount: Int64
    let downloadCount: Int64
    let likeCount: Int64
    let tags: String
    let username: String
}

extension ImageEntity: Decodable {

    static func decode(extractor: Extractor) throws -> ImageEntity {

        return try ImageEntity(
            id: extractor <| "id",

            pageURL: extractor <| "pageURL",
            pageImageWidth: extractor <| "imageWidth",
            pageImageHeight: extractor <| "imageHeight",

            previewURL: extractor <| "previewURL",
            previewWidth: extractor <| "previewWidth",
            previewHeight: extractor <| "previewHeight",

            imageURL: extractor <| "webformatURL",
            imageWidth: extractor <| "webformatWidth",
            imageHeight: extractor <| "webformatHeight",

            viewCount: extractor <| "views",
            downloadCount: extractor <| "downloads",
            likeCount: extractor <| "likes",
            tags: extractor <| "tags",
            username: extractor <| "user"
        )
    }
}
