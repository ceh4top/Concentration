//
//  Themes.swift
//  Concentration
//
//  Created by xcode on 19.09.2018.
//  Copyright © 2018 VSU. All rights reserved.
//

import Foundation

class Themes {
    private var themes: [Theme]
    
    public init() {
        themes = [Theme]()
        
        themes.append(Theme(
            title: "Животные",
            emoji: "🐶🐱🐭🐹🐰🦊🐻🐼🐨🐯🦁🐮🐷🐸🐵🐺🐗🐴🦄"))
        
        themes.append(Theme(
            title: "Спорт",
            emoji: "⚽️🏀🏈⚾️🎾🏐🏉🎱🏓🏸🏒🏑🏏⛳️🏹🥊⛸🥌⛷🏂"))
        
        themes.append(Theme(
            title: "Лица",
            emoji: "😀😃😄😁😆😅😂🤣☺️😊😇🙂🙃😉😌😍😘😗😙😚😋😛😝😜🤪🤨🧐🤓😎🤩😏😒😞😔😟😕🙁☹️😣😖😫😩😢😭😤😠😡🤬🤯😳😱😨😰😥😓🤗🤔🤭🤫🤥😶😐😑😬🙄😯😦😧😮😴😲🤤😪😵🤐🤢🤮🤧😷🤒🤕🤑🤠😈👿"))
        
        themes.append(Theme(
            title: "Флаги",
            emoji: "🇦🇺🇦🇹🇦🇿🇦🇽🇦🇱🇩🇿🇦🇸🇦🇮🇦🇴🇦🇩🇦🇶🇦🇬🇦🇷🇦🇲🇦🇼🇦🇫🇧🇸🇧🇩🇧🇧🇧🇭🇧🇾🇧🇿🇧🇪🇧🇯🇧🇲🇧🇬🇧🇴🇧🇶🇧🇦🇧🇼🇧🇷🇮🇴🇧🇳🇧🇫🇧🇮🇧🇹🇻🇺🇻🇦🇬🇧🏴󠁧󠁢󠁥󠁮󠁧󠁿🏴󠁧󠁢󠁳󠁣󠁴󠁿🏴󠁧󠁢󠁷󠁬󠁳󠁿🇭🇺🇻🇪🇻🇬🇻🇮🇹🇱🇻🇳🇬🇦🇭🇹🇬🇾🇬🇲🇬🇭🇬🇵🇬🇹🇬🇳🇬🇼🇩🇪🇬🇬🇬🇮🇭🇳🇭🇰🇬🇩🇬🇱🇬🇷🇬🇪🇬🇺🇩🇰🇯🇪🇩🇯🇩🇲🇩🇴🇪🇺🇪🇬🇿🇲🇪🇭🇿🇼🇮🇱🇮🇳🇮🇩🇯🇴🇮🇶🇮🇷🇮🇪🇮🇸🇪🇸🇮🇹🇾🇪🇨🇻🇰🇿🇰🇾🇰🇭🇨🇲🇨🇦🇮🇨🇶🇦🇰🇪🇨🇾🇰🇬🇰🇮🇨🇳🇰🇵🇨🇨🇨🇴🇰🇲🇨🇬🇨🇩🇽🇰🇨🇷🇨🇮🇨🇺🇯🇵🇫🇷🇺🇦🇺🇸🇸🇰🇸🇮🇷🇺"))
    }
    
    public func getTitles() -> [String : Int] {
        var result = [String : Int]()
        for (index, theme) in themes.enumerated() {
            result[theme.getTitle()] = index
        }
        return result
    }
    
    public func getTheme(index: Int) -> Theme {
        return themes[index]
    }
}
