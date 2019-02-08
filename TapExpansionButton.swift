//
//  TapExpansionButton.swift
//  iOSUI
//
//  Created by 鶴本賢太朗 on 2018/05/14.
//  Copyright © 2018年 Kentarou. All rights reserved.
//

import UIKit

// タップ領域を変更できるボタン
class TapExpansionButton: UIButton {
    internal var insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        var rect: CGRect = self.bounds
        rect.origin.x -= self.insets.left
        rect.origin.y -= self.insets.top
        rect.size.width += self.insets.left + self.insets.right
        rect.size.height += self.insets.top + self.insets.bottom
        // insetsで拡大したrectにpointが含まれているかどうか
        let isContain: Bool = rect.contains(point)
        return isContain
    }
}
