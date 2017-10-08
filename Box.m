#import "Box.h"

@implementation Box

@synthesize height, width, length;

-(id)initWithHeight:(float)height andWidth:(float)width andLength:(float)length {
    
    self = [super init];
    if (self) {
    
        self.height = height;
        self.width = width;
        self.length = length;
    }
    
    return self;
}

-(id)init {
    return [self initWithHeight:0 andWidth:0 andLength:0];
}

-(float)calculateVolume {
    return height * width * length;
}

-(int)calculateNumberOfBoxesInsideThis:(Box *) inpBox {
    int res = 0;
    float currentBoxVolume = [self calculateVolume];
    float inpBoxVolume = [inpBox calculateVolume];
    
    if (currentBoxVolume > inpBoxVolume) {
        res = currentBoxVolume/inpBoxVolume;
    } else {
        res = inpBoxVolume/currentBoxVolume;
    }
    
    return res;

}

@end
