//
//  FontStyles.swift
//  ios-edc-app
//  Customization of common fonts
//  Created by Shiying Cai on 2022/9/21.
//

import Foundation
import SwiftUI

extension Font{
    
    static var tfLable: Font{
        return Font.custom("SF Pro Display Bold", size: 14)
    }
    
    static var popLable: Font{
        return Font.custom("SF Pro Display Bold", size: 20)
    }
    
    static var btnLable: Font{
        return Font.custom("SF Pro Display Semibold", size: 24)
    }
    
    static var cbLable: Font{
        return Font.custom("SF Pro Display Semibold", size: 14)
    }
    
    static var noticeLable: Font{
        return Font.custom("SF Pro Display Semibold", size: 16)
    }
    
    static var naviLable: Font{
        return Font.custom("SF Pro Display Semibold", size: 24)
    }
    
    static var acctLable: Font{
        return Font.custom("SF Pro Display Semibold", size: 25)
    }
    
    static var linkLable: Font{
        return Font.custom("SF Pro Display Medium", size: 14)
    }
    
    static var text: Font{
        return Font.custom("SF Pro", size: 16)
    }
    
    static var itemText: Font{
        return Font.custom("SF Pro Bold", size: 14)
    }
    
    static var sansFont: Font{
        return Font.custom("SourceSansPro-Bold", size: 22)
    }

}
