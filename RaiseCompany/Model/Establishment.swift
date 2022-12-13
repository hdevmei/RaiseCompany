import Foundation


class Establishment {
    public let location: String
    public let image : String
    public let mediaProvisional : Float
    public let benefits : Int
    public let losses : Int
    public let nEmployees : Int
    
    
    init (location : String, image: String, mediaProvisional : Float, benefits : Int, losses : Int, nEmployees : Int) {
        self.location = location
        self.image = image
        self.mediaProvisional = mediaProvisional
        self.benefits = benefits
        self.losses = losses
        self.nEmployees = nEmployees
    }
}
