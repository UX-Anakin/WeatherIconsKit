#import "IconViewCell.h"
#import "WeatherIconsKit.h"

@interface IconViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *iconLabel;
@property (weak, nonatomic) IBOutlet UILabel *iconNameLabel;

@end

@implementation IconViewCell

- (void)configureCellWithIcon:(FAKIcon *)icon
{
    self.iconLabel.attributedText = [icon attributedString];
    self.iconNameLabel.text = [icon iconName];
}

@end
