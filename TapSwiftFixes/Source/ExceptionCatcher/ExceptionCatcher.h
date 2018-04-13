//
//  ExceptionCatcher.h
//  TapSwiftFixes
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

@import Foundation.NSError;

/**
 void block without arguments.
 */
typedef void (^ArgumentlessBlock)(void);

/**
 Catches Objective-C exception in Swift.

 @param tryBlock Block that may cause an exception.
 @param error Error.
 @return Boolean value which determines whether exception appeared.
 */
extern BOOL catchException(ArgumentlessBlock _Nonnull tryBlock, NSError * _Nullable  __autoreleasing * _Nullable error);
