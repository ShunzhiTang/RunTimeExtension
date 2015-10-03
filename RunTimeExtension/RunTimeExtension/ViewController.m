//
//  ViewController.m
//  RunTimeExtension


#import "ViewController.h"
#import "NSObject+SZExtension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string = @"1234";
    
    string.name = @"111";
    
    NSArray *array = @[@"jj"];
    array.name = @"hh";
    
    //这样就可以把我们自己设置的name 各自的保存在它自己的内存空间实现关联
    
    NSLog(@"%@  %@",string.name , array.name);
}

@end
