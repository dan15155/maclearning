//
//  PrefixHeader.h
//  maclearning
//
//  Created by henry on 2018/12/11.
//  Copyright © 2018 henry. All rights reserved.
//

#ifndef PrefixHeader_h
#define PrefixHeader_h
// __OBJC__这个宏,宏内引用的文件确保只被使用Objective-C语言的文件所引用，限定仅仅被OC代码使用
#ifdef __OBJC__
#import "Masonry.h"
/**
 *  配置自定义的测试Log
 */
#ifdef DEBUG
#define CCLog(...) NSLog(__VA_ARGS__)
#else
#define CCLog(...)
#endif
#endif

#endif /* PrefixHeader_h */
