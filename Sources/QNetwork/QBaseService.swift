//
//  QBaseService.swift
//  TableviewSample
//
//  Created by xuanquynhle on 2021/04/02.
//

import Foundation

open class QBaseService {
    public var provider: NetworkProvider!

    public init(isTest: Bool = false) {
        provider = isTest ? NetworkProvider.stubbingNetworking() : NetworkProvider.defaultNetworking()
    }
}
