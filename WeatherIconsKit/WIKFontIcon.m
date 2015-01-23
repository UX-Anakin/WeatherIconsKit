#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WIKFontIcon.h"

@implementation WIKFontIcon

+ (UIFont *)iconFontWithSize:(CGFloat)size
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self registerIconFontWithURL:[[NSBundle bundleForClass:[WIKFontIcon class]]
                                       URLForResource:@"weathericons-regular-webfont" withExtension:@"ttf"]];
    });
    
    UIFont *font = [UIFont fontWithName:@"Weather Icons" size:size];
    NSAssert(font, @"UIFont object should not be nil, check if the font file is added to the application bundle and you're using the correct font name.");
    return font;
}

// Generated Code
+ (instancetype)adjustIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf042" size:size]; }
+ (instancetype)adnIconWithSize:(CGFloat)size { return [self iconWithCode:@"\uf170" size:size]; }

+ (NSDictionary *)allIcons {
    return @{
             @"\uf042" : @"adjust",
             @"\uf170" : @"adn",
             };
}

@end
