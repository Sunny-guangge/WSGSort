//
//  WSGSort.m
//  WSGSort
//
//  Created by 王帅广 on 2017/12/23.
//  Copyright © 2017年 王帅广. All rights reserved.
//

#import "WSGSort.h"

@implementation WSGSort

+ (NSMutableArray *)bubuleSortWithArray:(NSMutableArray *)array{
    NSInteger i = array.count;
    while (i > 0) {
        for (NSInteger j=0; j<i - 1; j++) {
            if ([[array objectAtIndex:j] integerValue] < [[array objectAtIndex:j + 1] integerValue]) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
        i--;
    }
    return array;
}

+ (void)quikSortWithArray:(NSMutableArray *)array low:(NSInteger )low high:(NSInteger)high{
    
    if (low >= high) {
        return ;
    }
    
    NSInteger l = low;
    NSInteger h = high;
    NSInteger key = [[array objectAtIndex:low] integerValue];
    
    while (l < h) {
        while (l < h && [[array objectAtIndex:h] integerValue] >= key) {
            h --;
        }
        [array exchangeObjectAtIndex:h withObjectAtIndex:l];
        while (l < h && [[array objectAtIndex:l] integerValue] <= key) {
            l ++;
        }
        [array exchangeObjectAtIndex:h withObjectAtIndex:l];
    }
    [self quikSortWithArray:array low:low high:l-1];
    [self quikSortWithArray:array low:l+1 high:high];
}

@end
