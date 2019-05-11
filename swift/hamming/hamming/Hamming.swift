//
// Created by Pietro Caselani on 7/5/16.
// Copyright (c) 2016 Pietro Caselani. All rights reserved.
//

import Foundation

struct Hamming {
    static func compute(DNAStrads: String, against otherDNAStrads: String) -> Int? {
        if DNAStrads.characters.count != otherDNAStrads.characters.count {
            return nil
        }

        return zip(DNAStrads.characters, otherDNAStrads.characters).filter(!=).count
    }
}