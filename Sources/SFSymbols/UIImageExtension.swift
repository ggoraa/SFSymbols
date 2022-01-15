// The MIT License (MIT)
// Copyright © 2022 Ivan Vorobei (hello@ivanvorobei.by)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit

extension UIImage {
    
    /**
     SFSymbols: Create `SFSymbols` image by symbol.
     
     - parameter symbol: Symbol.
     */
    @available(iOS 13, tvOS 13, *)
    public static func system(_ symbol: SFSymbol) -> UIImage {
        return UIImage.init(systemName: symbol.name) ?? UIImage()
    }

    /**
     SFSymbols: Create `SFSymbols` image by symbol with specific configuration.
     
     - parameter symbol: Symbol.
     - parameter pointSize: Font size of image.
     - parameter weight: Weight of font of image.
     */
    @available(iOS 13, tvOS 13, *)
    public static func system(_ symbol: SFSymbol, pointSize: CGFloat, weight: UIImage.SymbolWeight) -> UIImage {
        let configuration = UIImage.SymbolConfiguration(pointSize: pointSize, weight: weight)
        return UIImage(systemName: symbol.name, withConfiguration: configuration) ?? UIImage()
    }

    /**
     SparrowKit: Create `SFSymbols` image by symbol with specific configuration.
     
     - parameter symbol: Symbol.
     - parameter font: Font of image.
     */
    @available(iOS 13, tvOS 13, *)
    public static func system(_ symbol: SFSymbol, font: UIFont) -> UIImage {
        let configuration = UIImage.SymbolConfiguration(font: font)
        return UIImage(systemName: symbol.name, withConfiguration: configuration) ?? UIImage()
    }
}
