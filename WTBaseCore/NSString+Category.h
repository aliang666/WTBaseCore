//
//  NSString+Category.h
//  WTBaseCore
//
//  Created by jienliang on 2017/12/5.
//  Copyright © 2017年 jienliang. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *	@brief	NSString 拓展.
 */
@interface NSString (WTBaseCore){
    
}
/**
 *	@brief	移除字符串首位空字符串.
 *
 *	@return	字符串实例.
 */
- (NSString *)trim;
/**
 *    @brief    判断是否串是否为空.
 *
 *    @return    BOOL.
 */
- (BOOL)strNilOrEmpty;
/**
 *    @brief    格式化字符串.
 *
 *    @return    字符串实例.
 */
- (NSString *)strRelay;
/**
 *     @brief     字符串中是否含有emoji字符.
 *
 *     @return     BOOL
 */
- (BOOL)stringContainsEmoji;
/**
 *     @brief     去掉字符串中的emoji字符.
 *
 *     @return     字符串实例
 */
- (NSString *)disable_emoji;
/**
 *	@brief	md5字符串.
 *
 *	@return	字符串.
 */
- (NSString *)md5;

@end
