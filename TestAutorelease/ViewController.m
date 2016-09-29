//
//  ViewController.m
//  TestAutorelease
//
//  Created by Bolu on 2016/9/27.
//  Copyright © 2016年 Bolu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak id objTrace;
//    __weak NSString *string_weak_;
    __weak id string_weak_;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.
//    NSArray *localArr = [NSArray arrayWithObject:@"autorelease"];//这是一个局部对象，封装了autorelease方法
//    NSArray *localArr = [[NSArray alloc] initWithObjects:@"autorelease", nil];//这是一个局部对象，封装了autorelease方法
//    objTrace = localArr;
//    
//    NSLog(@"viewDidLoad--objTrace:%@", objTrace);
    
    //2.
    // 场景 1
    
//    NSString *string = [NSString stringWithFormat:@"autorelease"];
//    
//    string_weak_ = string;
    
    // 场景 2
    
//        @autoreleasepool {
//    
//            NSString *string = [NSString stringWithFormat:@"leichunfeng"];
//    
//            string_weak_ = string;
//    
//        }
    
    // 场景 3
    
        NSString *string = nil;
    
        @autoreleasepool {
    
            string = [NSString stringWithFormat:@"leichunfeng"];
    
            string_weak_ = string;
    
        }
    
    NSLog(@"viewDidLoad--string_weak_: %@", string_weak_);
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
//    NSLog(@"viewWillAppear--objTrace:%@", objTrace);
    
    NSLog(@"viewWillAppear--string_weak_:%@", string_weak_);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
//    NSLog(@"viewDidAppear--objTrace:%@", objTrace);
    
    NSLog(@"viewDidAppear--string_weak_:%@", string_weak_);

}


@end
