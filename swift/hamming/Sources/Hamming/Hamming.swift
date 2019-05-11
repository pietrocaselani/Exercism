struct Hamming {
    static func compute(_ DNAStrads: String, against otherDNAStrads: String) -> Int? {
        if DNAStrads.characters.count != otherDNAStrads.characters.count {
            return nil
        }

        return zip(DNAStrads.characters, otherDNAStrads.characters).filter(!=).count
    }
}
