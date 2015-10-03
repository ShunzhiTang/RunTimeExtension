//
//  NSObject+SZExtension.m
//  RunTimeExtensio
#import "NSObject+SZExtension.h"
#import <objc/runtime.h>

@interface NSObject()

//{
//    NSString *_name;
//}
@end


@implementation NSObject (SZExtension)

//这种情况下我们是无法使用_name的 ， 错误的方法
//- (void)setName:(NSString *)name{
//    
//    _name = name;
//    NSLog(@"%s , %@",__func__ , name);
//}
//- (NSString *)name{
//
//    NSLog(@"%s",__func__);
//    return _name;
//}

//正确地方法去实现关联和写set get方法 ,其实两个关联的方法也是set 和get方法

char NameKey;//这个键你可以随便的定义

- (NSString *)name{
    
   return  objc_getAssociatedObject(self, &NameKey);
}


- (void)setName:(NSString *)name{
    //将某个值存储到某个对象中， 将某个值个某个对象关联起来
    objc_setAssociatedObject(self, &NameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
