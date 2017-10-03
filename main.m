#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Box *boxObj = [[Box alloc]initWithHeight:100 andWidth:77 andLength:200];
        float firstBoxVolume = [boxObj calculateVolume];
        NSLog(@"The volume on the first box is: %f", firstBoxVolume);
        
        Box *secondBox = [[Box alloc]initWithHeight:33 andWidth:44 andLength:55];
        float secondBoxVolume = [secondBox calculateVolume];
        NSLog(@"The volume on the first box is: %f", secondBoxVolume);
        
        if (firstBoxVolume > secondBoxVolume) {
            float insideBox = firstBoxVolume/secondBoxVolume;
            NSLog(@"This box fits %f times inside the other.", insideBox);
        } else {
            float insideBox = secondBoxVolume/firstBoxVolume;
            NSLog(@"This box fits %f times inside the other.", insideBox);
        }
        

    }
    return 0;
}
