//
//  LoggingMiddleware.swift
//  rx.redux.github-browser-example
//
//  Created by Hung Dinh Van on 12/7/16.
//  Copyright © 2016 ChuCuoi. All rights reserved.
//

import RxRedux

struct LoggingMiddleware: Middleware {
    public func process(getState: @escaping GetState, dispatch: @escaping DispatchFunction) -> (@escaping DispatchFunction) -> DispatchFunction {
        return { next in
            return { action in
                print("Oh! The action \"\(action)\" is being dispatched.")
                return next(action)
            }
        }
    }
}
