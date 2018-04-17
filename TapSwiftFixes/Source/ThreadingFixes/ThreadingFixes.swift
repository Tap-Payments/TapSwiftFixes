//
//  ThreadingFixes.swift
//  TapSwiftFixes
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

@discardableResult public func synchronized<T>(_ lock: Any, _ body: () throws -> T) rethrows -> T {

    objc_sync_enter(lock)

    defer {

        objc_sync_exit(lock)
    }

    return try body()
}

public func performOnMainThread(_ work: @escaping @convention(block) () -> Void) {

    if Thread.isMainThread {

        work()
        return
    }

    DispatchQueue.main.async(execute: work)
}

public func performOnBackgroundThread(_ work: @escaping @convention(block) () -> Void) {

    if !Thread.isMainThread {

        work()
        return
    }

    DispatchQueue.global(qos: .background).async(execute: work)
}
