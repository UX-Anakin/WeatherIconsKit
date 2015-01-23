#import "IconsViewController.h"
#import "WeatherIconsKit.h"
#import "IconViewCell.h"

@interface IconsViewController ()

@property (strong, nonatomic) NSMutableArray *icons;

@end

@implementation IconsViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.icons = [NSMutableArray array];
    [self loadWeatherIcons];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.icons count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    IconViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"IconViewCell" forIndexPath:indexPath];
    FAKIcon *icon = self.icons[indexPath.row];
    [cell configureCellWithIcon:icon];
    return cell;
}

- (void)loadWeatherIcons{
    NSArray *keys = [[[WIKFontIcon allIcons] allKeys] sortedArrayUsingSelector:@selector(compare:)];
    for (NSString *key in keys) {
        [self.icons addObject:[WIKFontIcon iconWithCode:key size:50]];
    }
}


@end
