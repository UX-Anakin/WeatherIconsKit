#import "IconViewCell.h"
#import "WeatherIconsKit.h"
#import "UIColor+MLPFlatColors.h"

@interface IconViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *iconLabel;
@property (weak, nonatomic) IBOutlet UILabel *iconNameLabel;

@end

@implementation IconViewCell

- (void)configureCellWithIcon:(FAKIcon *)icon
{
    self.iconLabel.attributedText = [icon attributedString];
    self.iconLabel.textColor = [UIColor flatWhiteColor];
    self.iconNameLabel.text = [icon iconName];
    self.iconNameLabel.textColor = [UIColor flatWhiteColor];
}

@end
