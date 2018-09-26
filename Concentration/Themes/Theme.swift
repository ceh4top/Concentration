//
//  Theme.swift
//  Concentration
//
//  Created by xcode on 19.09.2018.
//  Copyright © 2018 VSU. All rights reserved.
//

import Foundation

struct Theme {
    private var title: String
    private var emoji: String
    
    public init(title: String, emoji: String) {
        self.title = title
        self.emoji = emoji
    }
    
    public func getTitle() -> String {
        return title;
    }
    
    public func getEmoji(at index: Int) -> String {
        return String(Array(emoji)[index]);
    }
    
    public func getAllEmoji() -> String {
        return self.emoji;
    }
    
    public func countEmoji() ->Int {
        return self.emoji.count;
    }
    
    public func getRundomStackEmoji(count: Int) -> String {
        if count > self.emoji.count {
            return self.emoji;
        }
        else {
            var result : String = ""
            for _ in [0...count] {
                var emoji: String
                repeat {
                    let random = arc4random_uniform(UInt32(self.emoji.count));
                    emoji = getEmoji(at: Int(random))
                } while (result.contains(emoji))
                result += emoji
            }
            return result
        }
    }
}
