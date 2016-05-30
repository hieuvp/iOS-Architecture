//
// Created by HieuVP on 5/30/16.
//

import Himotoki

struct ResponseEntity {
    let totalCount: Int64
    let images: [ImageEntity]
}

extension ResponseEntity: Decodable {

    static func decode(extractor: Extractor) throws -> ResponseEntity {

        return try ResponseEntity(
            totalCount: extractor <| "totalHits",
            images: extractor <|| "hits"
        )
    }
}
