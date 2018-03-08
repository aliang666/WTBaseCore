//
//  NSString+Category.h
//  WTBaseCore
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//

#import "NSString+Category.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (WTBaseCore)
- (BOOL)strNilOrEmpty {
    return self == nil
    || self == NULL
    || [self isKindOfClass:[NSNull class]]
    ||([self respondsToSelector:@selector(length)]
       && [(NSData *)self length] == 0)
    || ([self respondsToSelector:@selector(count)]
        && [(NSArray *)self count] == 0);
}

- (NSString *)strRelay
{
    if([self strNilOrEmpty]){
        return @"";
    }
    else if([self isKindOfClass:[NSString class]]){
        return self;
    } else if ([self isKindOfClass:[NSNumber class]]) {
        return [((NSNumber *)self) stringValue];
    }
    return [self trim];
}

- (NSString *)trim {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)md5
{
    const char *cStr = [self UTF8String];
    unsigned char result[16];
    CC_MD5( cStr, (unsigned int) strlen(cStr), result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (BOOL)stringContainsEmoji {
     __block BOOL returnValue = NO;
     [self enumerateSubstringsInRange:NSMakeRange(0, [self length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock:
      ^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
           const unichar hs = [substring characterAtIndex:0];
           // surrogate pair
           if (0xd800 <= hs && hs <= 0xdbff) {
                if (substring.length > 1) {
                     const unichar ls = [substring characterAtIndex:1];
                     const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                     if (0x1d000 <= uc && uc <= 0x1f77f) {
                          returnValue = YES;
                     }
                }
           } else if (substring.length > 1) {
                const unichar ls = [substring characterAtIndex:1];
                if (ls == 0x20e3) {
                     returnValue = YES;
                }
                
           } else {
                // non surrogate
                if (0x2100 <= hs && hs <= 0x27ff) {
                     returnValue = YES;
                } else if (0x2B05 <= hs && hs <= 0x2b07) {
                     returnValue = YES;
                } else if (0x2934 <= hs && hs <= 0x2935) {
                     returnValue = YES;
                } else if (0x3297 <= hs && hs <= 0x3299) {
                     returnValue = YES;
                } else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                     returnValue = YES;
                }
           }
      }];
     
     return returnValue;
}

- (NSString *)disable_emoji
{
     NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^\\u0020-\\u007E\\u00A0-\\u00BE\\u2E80-\\uA4CF\\uF900-\\uFAFF\\uFE30-\\uFE4F\\uFF00-\\uFFEF\\u0080-\\u009F\\u2000-\\u201f\r\n]" options:NSRegularExpressionCaseInsensitive error:nil];
     NSString *modifiedString = [regex stringByReplacingMatchesInString:self
                                                                options:0
                                                                  range:NSMakeRange(0, [self length])
                                                           withTemplate:@""];
     return modifiedString;
}

@end

