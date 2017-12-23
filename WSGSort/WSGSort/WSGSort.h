//
//  WSGSort.h
//  WSGSort
//
//  Created by 王帅广 on 2017/12/23.
//  Copyright © 2017年 王帅广. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WSGSort : NSObject



/**
 冒泡排序 时间复杂度 O（n^2）
 相邻两个比大小，如果降序，前面的比后面的小则交换，反之则不交换，
 
 @param array 错序的数组
 @return 排好序的数组
 */
+ (NSMutableArray *)bubuleSortWithArray:(NSMutableArray *)array;



/**
 快速排序

 @param array 错序数组
 @return 排好序
 */
+ (void)quikSortWithArray:(NSMutableArray *)array low:(NSInteger )low high:(NSInteger)high;

@end
