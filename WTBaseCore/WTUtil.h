//
//  WTUtil.h
//  WTBaseCore
//
//  Created by jienliang on 17/6/23.
//  Copyright (c) 2017年 jienliang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WTAppDelegate.h"

@interface WTUtil : NSObject

/**
 *	@brief	通过颜色来生成一个纯色图
 *
 *	@param 	color 	颜色值
 *
 *	@return	图片
 */
+ (UIImage *)createImageFromColor:(UIColor *)color;
/**
 *	@brief	取得文本在固定的字体情况下，在固定大小控件中的大小
 *
 *	@param 	str 	文本
 *	@param 	font 	字体
 *	@param 	size 	控件大小
 *
 *	@return	文本大小
 */
+ (CGSize)sizeForFont:(NSString *)str Font:(UIFont *)font CtrlSize:(CGSize)size;

/**
 *     @brief     获取app版本号
 *
 *  @return     版本号
 */
+ (NSString *)getAppVersion;
/**
 *     @brief guid字符串
 *
 *     @return     字符串实例.
 */
+ (NSString *)strGUID;
/**
 *     @brief 应用程序对象
 *
 *     @return     AppDelegate.
 */
+ (WTAppDelegate *)appDelegate;
@end
