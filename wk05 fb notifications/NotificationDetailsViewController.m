//
//  NotificationDetailsViewController.m
//  wk05 fb notifications
//
//  Created by Jorge Angarita on 4/7/14.
//  Copyright (c) 2014 jorge. All rights reserved.
//

#import "NotificationDetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface NotificationDetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *timestampLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *likesLabel;

@property (weak, nonatomic) IBOutlet UIImageView *postImageView;


@property (weak, nonatomic) IBOutlet UIView *cardView;
@end

@implementation NotificationDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.cardView.layer.cornerRadius = 3;
    self.cardView.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1].CGColor;
    self.cardView.layer.shadowOffset = CGSizeMake(0, 1);
    self.cardView.layer.shadowOpacity = 0.2;
    self.cardView.layer.shadowRadius = 1;
    
    NSURL *url = [NSURL URLWithString:self.notification[@"profile_url"]];
    [self.profileImageView setImageWithURL:url];
    
    self.titleLabel.text = self.notification[@"title"];
    self.timestampLabel.text = self.notification[@"timestamp"];
    self.descriptionLabel.text = self.notification[@"description"];
    
    NSURL *url2 = [NSURL URLWithString:self.notification[@"image_url"]];
    [self.postImageView setImageWithURL:url2];
    
    self.likesLabel.text = self.notification[@"likes"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
