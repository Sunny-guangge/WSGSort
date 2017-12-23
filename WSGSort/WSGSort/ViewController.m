//
//  ViewController.m
//  WSGSort
//
//  Created by 王帅广 on 2017/12/23.
//  Copyright © 2017年 王帅广. All rights reserved.
//

#import "ViewController.h"
#import "WSGSort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@1,@200,@3,@5,@6,@9000,@3,@5,@1,@3,@2]];
    
//    NSLog(@"冒泡排序%@",[WSGSort bubuleSortWithArray:array]);
    
    [WSGSort quikSortWithArray:array low:0 high:array.count - 1];
    
    NSLog(@"%@",array);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
