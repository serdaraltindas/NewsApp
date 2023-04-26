

import Foundation

struct News : Codable {
    
    let title : String
    let story : String
    
    init(title: String, story: String) {
        self.title = title
        self.story = story
        
    }
}

