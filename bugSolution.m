@interface MyClass : NSObject
@property (nonatomic, strong) NSString *myString;
@end

@implementation MyClass
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if ([keyPath isEqualToString:@