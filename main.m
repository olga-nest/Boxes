#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Box *boxObj = [[Box alloc]initWithHeight:100 andWidth:77 andLength:200];
        float volume = [boxObj calculateVolume];
        NSLog(@"The volume on the box is: %f", volume);
        
    }
    return 0;
}
