import Foundation

class Review : Codable {
    public let rating: Int
    public let comment: String
    
    init(rating: Int, comment: String) {
        self.rating = rating
        self.comment = comment
    }
}
