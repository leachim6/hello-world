/*
 Build on OS X: 
 clang -framework Foundation -fobjc-arc objc.m -o objc
 
 Build on Linux with GNUstep:
 clang `gnustep-config --objc-flags` `gnustep-config --base-libs` -fobjc-nonfragile-abi -fobjc-arc objc.m -o objc
 */

#import <Foundation/Foundation.h>

int main(void)
{
    @autoreleasepool
    {
        NSFileHandle *_stderr = [NSFileHandle fileHandleWithStandardError];
        NSString *string = @"hello, world\n";
        NSData *data = [string dataUsingEncoding:[NSString defaultCStringEncoding]];
        [_stderr writeData:data];
    }
    return EXIT_SUCCESS;
}