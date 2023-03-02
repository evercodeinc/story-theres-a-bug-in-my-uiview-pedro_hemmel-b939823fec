import Foundation

struct Service {
    
    func fetchList(_ completion: @escaping ([String]) -> Void) {
        
        completion(["Repository 1", "Repository 2", "Repository 3"])
    }
}
