//
//  NSObject+SZExtension.h

/**
 *  现在需要的是给我们的NSObject去增加一个属性 ，因为是NSObject的属性所有的类基本都有这个属性 ，那么如何让他们各自保存他们的属性呢？
 
 解决：使用运行时的关联机制去实现
 */

#import <Foundation/Foundation.h>

@interface NSObject (SZExtension)

//假设定义一个 name属性
@property (nonatomic , copy)NSString *name;

@end
