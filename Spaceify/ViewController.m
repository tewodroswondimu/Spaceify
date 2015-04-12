//
//  ViewController.m
//  Spaceify
//
//  Created by Tewodros Wondimu on 4/11/15.
//  Copyright (c) 2015 Tewodros Wondimu. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "DetailViewController.h"
#import "Space.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSArray *spaceObjectsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Space *pillarsOfCreation = [Space new];
    pillarsOfCreation.spaceName = @"Eagle Nebula";
    pillarsOfCreation.spaceNickName = @"Pillars of Creation";
    pillarsOfCreation.spaceFileName = @"PillarsOfCreation";
    pillarsOfCreation.spaceTelescope = @"Hubble";
    pillarsOfCreation.spaceDescription = @"The NASA/ESA Hubble Space Telescope has revisited one of its most iconic and popular images: the Eagle Nebula’s Pillars of Creation. This image shows the pillars as seen in visible light, capturing the multi-coloured glow of gas clouds, wispy tendrils of dark cosmic dust, and the rust-coloured elephants’ trunks of the nebula’s famous pillars.";

    Space *butterfly = [Space new];
    butterfly.spaceName = @"Bug Nebula";
    butterfly.spaceNickName = @"Butterfly Nebula";
    butterfly.spaceFileName = @"BugNebula";
    butterfly.spaceTelescope = @"Hubble";
    butterfly.spaceDescription = @"This celestial object looks like a delicate butterfly. But it is far from serene. What resemble dainty butterfly wings are actually roiling cauldrons of gas heated to nearly 20 000 degrees Celsius. The gas is tearing across space at more than 950 000 kilometres per hour — fast enough to travel from Earth to the Moon in 24 minutes!";

    Space *arp = [Space new];
    arp.spaceName = @"ARP 273";
    arp.spaceNickName = @"A rose made of galaxies";
    arp.spaceFileName = @"ARP273";
    arp.spaceTelescope = @"Hubble";
    arp.spaceDescription = @"This image of a pair of interacting galaxies called Arp 273 was released to celebrate the 21st anniversary of the launch of the NASA/ESA Hubble Space Telescope. The distorted shape of the larger of the two galaxies shows signs of tidal interactions with the smaller of the two. It is thought that the smaller galaxy has actually passed through the larger one.";

    Space *arp2 = [Space new];
    arp2.spaceName = @"NGC 3603";
    arp2.spaceNickName = @"Star Cluster Bursts";
    arp2.spaceFileName = @"NGC3603";
    arp2.spaceTelescope = @"Hubble";
    arp2.spaceDescription = @"This image of a pair of interacting galaxies called Arp 273 was released to celebrate the 21st anniversary of the launch of the NASA/ESA Hubble Space Telescope. The distorted shape of the larger of the two galaxies shows signs of tidal interactions with the smaller of the two. It is thought that the smaller galaxy has actually passed through the larger one.";

    Space *arp3 = [Space new];
    arp3.spaceName = @"Barnard 33";
    arp3.spaceNickName = @"Horsehead Nebula";
    arp3.spaceFileName = @"Barnard33";
    arp3.spaceTelescope = @"Hubble";
    arp3.spaceDescription = @"This image of a pair of interacting galaxies called Arp 273 was released to celebrate the 21st anniversary of the launch of the NASA/ESA Hubble Space Telescope. The distorted shape of the larger of the two galaxies shows signs of tidal interactions with the smaller of the two. It is thought that the smaller galaxy has actually passed through the larger one.";

    Space *arp4 = [Space new];
    arp4.spaceName = @"M 104";
    arp4.spaceNickName = @"Sombrero Galaxy";
    arp4.spaceFileName = @"M104";
    arp4.spaceTelescope = @"Hubble";
    arp4.spaceDescription = @"This image of a pair of interacting galaxies called Arp 273 was released to celebrate the 21st anniversary of the launch of the NASA/ESA Hubble Space Telescope. The distorted shape of the larger of the two galaxies shows signs of tidal interactions with the smaller of the two. It is thought that the smaller galaxy has actually passed through the larger one.";


    Space *arp5 = [Space new];
    arp5.spaceName = @"Messier 1";
    arp5.spaceNickName = @"Crab Nebula";
    arp5.spaceFileName = @"Messier1";
    arp5.spaceTelescope = @"Hubble";
    arp5.spaceDescription = @"This image of a pair of interacting galaxies called Arp 273 was released to celebrate the 21st anniversary of the launch of the NASA/ESA Hubble Space Telescope. The distorted shape of the larger of the two galaxies shows signs of tidal interactions with the smaller of the two. It is thought that the smaller galaxy has actually passed through the larger one.";

    Space *arp6 = [Space new];
    arp6.spaceName = @"Messier 16";
    arp6.spaceNickName = @"Eagle Nebula";
    arp6.spaceFileName = @"Messier16";
    arp6.spaceTelescope = @"Hubble";
    arp6.spaceDescription = @"This image of a pair of interacting galaxies called Arp 273 was released to celebrate the 21st anniversary of the launch of the NASA/ESA Hubble Space Telescope. The distorted shape of the larger of the two galaxies shows signs of tidal interactions with the smaller of the two. It is thought that the smaller galaxy has actually passed through the larger one.";

    Space *arp7 = [Space new];
    arp7.spaceName = @"NGC2264";
    arp7.spaceNickName = @"Cone Nebula";
    arp7.spaceFileName = @"NGC2264";
    arp7.spaceTelescope = @"Hubble";
    arp7.spaceDescription = @"This image of a pair of interacting galaxies called Arp 273 was released to celebrate the 21st anniversary of the launch of the NASA/ESA Hubble Space Telescope. The distorted shape of the larger of the two galaxies shows signs of tidal interactions with the smaller of the two. It is thought that the smaller galaxy has actually passed through the larger one.";

    Space *arp8 = [Space new];
    arp8.spaceName = @"NGC 1316";
    arp8.spaceNickName = @"Cosmic Dust Bunnies";
    arp8.spaceFileName = @"NGC1316";
    arp8.spaceTelescope = @"Hubble";
    arp8.spaceDescription = @"This image of a pair of interacting galaxies called Arp 273 was released to celebrate the 21st anniversary of the launch of the NASA/ESA Hubble Space Telescope. The distorted shape of the larger of the two galaxies shows signs of tidal interactions with the smaller of the two. It is thought that the smaller galaxy has actually passed through the larger one.";

    self.spaceObjectsArray = [NSArray arrayWithObjects:arp4, butterfly, arp, arp2, arp3, pillarsOfCreation, arp5, arp6, arp7, arp8, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark COLLECTION VIEW

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HubbleImagesCell" forIndexPath:indexPath];
    Space *spaceObject = self.spaceObjectsArray[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:spaceObject.spaceFileName];
    cell.imageView.layer.cornerRadius = 10.0;
    cell.imageView.clipsToBounds = YES;
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.spaceObjectsArray.count;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"DetailSegue"])
    {
        CollectionViewCell *cell = (CollectionViewCell *)sender;
        DetailViewController *dvc = [segue destinationViewController];
        dvc.spaceObject = [self.spaceObjectsArray objectAtIndex: [[self.collectionView  indexPathForCell:cell] row]];
    }
}


@end
