//
//  Created by Ukropsoft on 25.11.2023.
//

import Foundation

public extension StringProtocol {
    subscript(offset: Int) -> String {
        String(self[index(startIndex, offsetBy: offset)])
    }
}
