//
//  ExceptionCatcher.m
//  TapSwiftFixes
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

@import Foundation.NSException;

#import "ExceptionCatcher.h"

BOOL catchException(ArgumentlessBlock _Nonnull tryBlock, NSError * _Nullable  __autoreleasing * _Nullable error)
{
    @try
    {
        tryBlock();
        return YES;
    }
    @catch (NSException *exception)
    {
        if ( error != nil )
        {
            *error = [[NSError alloc] initWithDomain:exception.name code:0 userInfo:exception.userInfo];
        }
        
        return NO;
    }
}
