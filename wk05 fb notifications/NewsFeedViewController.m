//
//  NewsFeedViewController.m
//  wk05 fb notifications
//
//  Created by Jorge Angarita on 4/7/14.
//  Copyright (c) 2014 jorge. All rights reserved.
//

#import "NewsFeedViewController.h"

@interface NewsFeedViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollFeedView;
@property (weak, nonatomic) IBOutlet UIImageView *feedImageView;


@end

@implementation NewsFeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.navigationItem.title = @"News Feed";
        
        UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"search"] style:UIBarButtonItemStylePlain target:nil action:nil];
        self.navigationItem.leftBarButtonItem = leftButton;
        
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"messages_top"] style:UIBarButtonItemStylePlain target:nil action:nil];
        self.navigationItem.rightBarButtonItem = rightButton;
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.scrollFeedView.contentSize = CGSizeMake(self.feedImageView.frame.size.width, self.feedImageView.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
