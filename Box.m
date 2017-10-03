#import "Box.h"

@implementation Box

@synthesize height, width, length;

-(id)initWithHeight:(float)h andWidth:(float)w andLength:(float)l {
    
    self = [super init];
    if (self) {
    
        height = h;
        width = w;
        length = l;
    }
    
    return self;
}

-(id)init {
    return [self initWithHeight:0 andWidth:0 andLength:0];
}

-(float)CalculateVolume {
    return height * width * length;
}

@end
