#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;


-(id)initWithHeight:(float)height andWidth:(float)width andLength:(float)length;
-(float)calculateVolume;
-(int)calculateNumberOfBoxesInsideThis:(Box *) inpBox;

@end
