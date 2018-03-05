//
//  WTUtil.h
//  WTBaseCore
//
//  Created by jienliang on 17/6/23.
//  Copyright (c) 2017年 jienliang. All rights reserved.
//

#import "WTUtil.h"
#import "NSString+Category.h"

@implementation WTUtil

+ (UIImage *)createImageFromColor:(UIColor *)color
{
    CGSize sz = CGSizeMake(1, 1);
    CGRect rect = CGRectMake(0, 0, sz.width,sz.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

+ (CGSize)sizeForFont:(NSString *)str Font:(UIFont *)font CtrlSize:(CGSize)size
{
    CGSize sz = CGSizeZero;
    NSDictionary *attributes = @{NSFontAttributeName:font,};
    sz = [str boundingRectWithSize:size options:NSStringDrawingTruncatesLastVisibleLine |
          NSStringDrawingUsesLineFragmentOrigin |
          NSStringDrawingUsesFontLeading
                        attributes:attributes
                           context:nil].size;
    return sz;
}

+ (NSString *)getAppVersion {
     return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)strGUID {
     CFUUIDRef    uuidObj = CFUUIDCreate(nil);//create a new GUID
     NSString    *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(nil, uuidObj);
     NSString    *guidStr = [uuidString lowercaseString];
     CFRelease(uuidObj);
     return guidStr;
}

+ (WTAppDelegate *)appDelegate {
    return ((WTAppDelegate *)[UIApplication sharedApplication].delegate);
}
@end
