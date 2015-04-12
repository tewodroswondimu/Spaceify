//
//  DetailViewController.m
//  Spaceify
//
//  Created by Tewodros Wondimu on 4/11/15.
//  Copyright (c) 2015 Tewodros Wondimu. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () <CasetifySDKDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *printImageView;
@property (weak, nonatomic) IBOutlet UILabel *nickName;
@property (weak, nonatomic) IBOutlet UILabel *spaceName;
@property (weak, nonatomic) IBOutlet UITextView *spaceDescription;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.printImageView.image = [UIImage imageNamed:self.spaceObject.spaceFileName];
    self.spaceDescription.text = self.spaceObject.spaceDescription;
    self.spaceName.text = self.spaceObject.spaceName;
    self.nickName.text = self.spaceObject.spaceNickName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)printButtonTapped:(UIButton *)sender {
    [CTFManager setDelegate:self];
    [CTFManager setClientID:@"MyAppClientIDxxxxxxx"];
    [CTFManager setClientSecret:@"MyAppClientSecretxxxxxxxxxxxxxxxxxxxxxxx"];
    [CTFManager setRedirectURI:@"http://xxxxxxxxxxx.com"];
    [CTFManager setSkipMoveAndScale:NO];
    [CTFManager setCaseName:@"Designed with MyApp"];
    [CTFManager setImage:[UIImage imageNamed:self.spaceObject.spaceFileName]];

    UIViewController *vc = [CTGManager newCasetifyViewController];

    [self presentViewController:vc animated:YES completion:nil];
}

- (void)casetifySDKOrderCompleted
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)casetifySDKUserCancelled
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
