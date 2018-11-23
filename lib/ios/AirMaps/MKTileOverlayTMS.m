#import "MKTileOverlayTMS.h"
 @implementation MKTileOverlayTMS
-(NSURL *)URLForTilePath:(MKTileOverlayPath)path
{
    path.y = (1 << path.z) - 1 - path.y;
    return [super URLForTilePath:path];
}
@end