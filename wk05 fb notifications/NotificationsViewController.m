//
//  NotificationsViewController.m
//  wk05 fb notifications
//
//  Created by Jorge Angarita on 4/7/14.
//  Copyright (c) 2014 jorge. All rights reserved.
//

#import "NotificationsViewController.h"
#import "NotificationsTableViewCell.h"
#import "NotificationDetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface NotificationsViewController ()

@property (weak, nonatomic) IBOutlet UITableView *notificationsTableView;
@property (nonatomic, strong) NSArray *notifications;

@end

@implementation NotificationsViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.navigationItem.title = @"Notifications";
        
        UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"search"] style:UIBarButtonItemStylePlain target:nil action:nil];
        self.navigationItem.leftBarButtonItem = leftButton;
        
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"messages_top"] style:UIBarButtonItemStylePlain target:nil action:nil];
        self.navigationItem.rightBarButtonItem = rightButton;
        
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        
        
        self.notifications =
        @[ @{ @"text" : @"Timothy Lee posted in iOS for Designers, Yahoo Q1: Some sweet crossfading by Marcelo Novaes http://i.imugur.com",
              @"profile_url" : @"https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/t1.0-1/c0.0.100.100/p100x100/1901916_10100952928430583_1227190585_n.jpg",
              @"timestamp" : @"1 hr ago",
              @"icon_url" : @"https://fbstatic-a.akamaihd.net/rsrc.php/v2/yl/r/j5G-s7tbL2i.png",
              @"title" : @"Timothy Lee > iOS for Designers, Yahoo Q1",
              @"description" : @"Some sweet crossfading by Marcelo Novaes: http://i.imgur.com/Ark30Dg.gif",
              @"image_url" : @"http://image.vsco.co/1/52c84bea1fd11251434/5333b9bd716708a70d000860/420x420/vsco_032614.jpg",
              @"likes" : @"2 people like this."
              },
           @{ @"text" : @"Ruth Martin posted in iOS for Designers, Yahoo Q1: Im trying to hide the tabbar when drilled down into a detail view.",
              @"profile_url" : @"https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/t1.0-1/c0.0.100.100/p100x100/1491606_10152029838488479_1757199530_n.jpg",
              @"timestamp" : @"21 hrs ago",
              @"icon_url" : @"https://fbstatic-a.akamaihd.net/rsrc.php/v2/yl/r/j5G-s7tbL2i.png",
              @"title" : @"Timothy Lee > iOS for Designers, Yahoo Q1",
              @"description" : @"Im trying to hide the tabbar when drilled down into a detail view. I'm setting my bottom bar hidden = true, and It only hides if pushed while in view between tabs, not on drill down. Anyone know how to fix?",
              @"image_url" : @"http://image.vsco.co/1/52c84bea1fd11251434/5333b9e57267086e34000aef/420x420/vsco_032614.jpg",
              @"likes" : @"1 person likes this."
              },
           @{ @"text" : @"Gabriele Angeline posted in iOS for Designers, Yahoo Q1: For Ruth Martin and anyone who's interested, this is the file",
              @"profile_url" : @"https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/t1.0-1/c25.0.100.100/p100x100/7524_125673846228_765222_n.jpg",
              @"timestamp" : @"Saturday at 2:47 PM",
              @"icon_url" : @"https://fbstatic-a.akamaihd.net/rsrc.php/v2/yl/r/j5G-s7tbL2i.png",
              @"title" : @"Timothy Lee > iOS for Designers, Yahoo Q1",
              @"description" : @"For Ruth Martin and anyone who's interested, this is the file we built on Thursday in class :)",
              @"image_url" : @"http://image.vsco.co/1/52c84bea1fd11251434/5333ba02716708a70d000919/420x420/vsco_032614.jpg",
              @"likes" : @"6 people like this."
              },
           @{ @"text" : @"Vanessa Grass posted in iOS for Designers, Yahoo Q1: Could you post your code solution for the Instagram heart",
              @"profile_url" : @"https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/t1.0-1/c0.0.100.100/p100x100/1012779_10201650172241979_1129193889_n.jpg",
              @"timestamp" : @"March 29 at 9:44 AM",
              @"icon_url" : @"https://fbstatic-a.akamaihd.net/rsrc.php/v2/yl/r/j5G-s7tbL2i.png",
              @"title" : @"Timothy Lee > iOS for Designers, Yahoo Q1",
              @"description" : @"Could you post your code solution for the Instagram heart example we did in class Thursday? I had to leave early... I'm still not able to get it to work but must be really close to the right solution",
              @"image_url" : @"http://image.vsco.co/1/52c84bea1fd11251434/5333ba2a716708d00c000975/420x420/vsco_032614.jpg",
              @"likes" : @"3 people like this."
              },
           @{ @"text" : @"Cindy Li posted in iOS for Designers, Yahoo Q1: Why were the older videos removed? :(",
              @"profile_url" : @"https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/t1.0-1/c0.0.100.100/p100x100/942468_10151397014352163_2025568202_n.jpg",
              @"timestamp" : @"March 22 at 10:43 PM",
              @"icon_url" : @"https://fbstatic-a.akamaihd.net/rsrc.php/v2/yl/r/j5G-s7tbL2i.png",
              @"title" : @"Timothy Lee > iOS for Designers, Yahoo Q1",
              @"description" : @"Why were the older videos removed? :(",
              @"image_url" : @"http://i.imgur.com/HscRliMl.png",
              @"likes" : @"5 people like this."
              },
           @{ @"text" : @"Sam posted in iOS for Designers, Yahoo Q1: Ran my app on a 3.5 in. simulator and realized the tabs are all below",
              @"profile_url" : @"https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/t1.0-1/c0.0.100.100/p100x100/1932373_10100955756752603_52068_n.jpg",
              @"timestamp" : @"March 24 at 10:48 AM",
              @"icon_url" : @"https://fbstatic-a.akamaihd.net/rsrc.php/v2/yl/r/j5G-s7tbL2i.png",
              @"title" : @"Timothy Lee > iOS for Designers, Yahoo Q1",
              @"description" : @"Ran my app on a 3.5 in. simulator and realized the tabs are all below the bottom of the screen. Is there a proper way to get the Tabs to reference their location from the bottom of the screen?",
              @"image_url" : @"http://image.vsco.co/1/52c84bea1fd11251434/5333ba48726708aa49000003/420x420/vsco_032614.jpg",
              @"likes" : @"2 people like this."
              },
           @{ @"text" : @"Chris Royer posted in iOS for Designers, Yahoo Q1: How does one set a text field to be automatically in focus",
              @"profile_url" : @"https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/t1.0-1/c0.0.100.100/p100x100/1654061_10152246967168184_301403074_n.jpg",
              @"timestamp" : @"March 21 at 11:46 PM",
              @"icon_url" : @"https://fbstatic-a.akamaihd.net/rsrc.php/v2/yl/r/j5G-s7tbL2i.png",
              @"title" : @"Timothy Lee > iOS for Designers, Yahoo Q1",
              @"description" : @"How does one set a text field to be automatically in focus (active) following a button click? The Xcode documentation references isFirstResponder, but setting that isn't forcing focus. My other guess is calling textFieldShouldBeginEditing, but that hasn't worked thus far.",
              @"image_url" : @"http://image.vsco.co/1/52c84bea1fd11251434/5333ba7f736708e868000111/420x420/vsco_032614.jpg",
              @"likes" : @"2 people like this."
              },
           @{ @"text" : @"Jorge Angarita posted in iOS for Designers, Yahoo Q1: Hey everybody if you want to implement a scroll view follow",
              @"profile_url" : @"https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/t1.0-1/c0.0.100.100/p100x100/1071403_10151771398850692_672835454_o.jpg",
              @"timestamp" : @"March 18 at 10:44 PM",
              @"icon_url" : @"https://fbstatic-a.akamaihd.net/rsrc.php/v2/yl/r/j5G-s7tbL2i.png",
              @"title" : @"Timothy Lee > iOS for Designers, Yahoo Q1",
              @"description" : @"Hey everybody if you want to implement a scroll view follow these steps:- Disable auto layout on your View -Create a scroll view with interface builder and give it an outlet scrollFeedView – this is the fixed window that will be scrollable, you can make it as big as the screen. -still on interface builder create an image view inside your scroll view and give it an outlet feedImageView – make it as big as you image. it will be bigger than the scroll view. -Finally declare the content size in the view controller in the viewDidLoad like this: self.scrollFeedView.contentSize = CGSizeMake(self.feedImage.frame.size.width, self.feedImage.frame.size.height); Hope this helps ",
              @"image_url" : @"http://image.vsco.co/1/52c84bea1fd11251434/5333ba90736708cf51001074/420x420/vsco_032614.jpg",
              @"likes" : @"2 people like this."
              }
           ];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.notificationsTableView.dataSource = self;
    self.notificationsTableView.delegate = self;
    
    UINib *nib = [UINib nibWithNibName:@"NotificationsTableViewCell" bundle:nil];
    [self.notificationsTableView registerNib:nib forCellReuseIdentifier:@"NotificationsTableViewCell"];
    
    self.notificationsTableView.rowHeight = 80;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    
#pragma mark - Table view methods
    
    - (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
        return self.notifications.count;
    }
    
    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        NSDictionary *notification = self.notifications[indexPath.row];
        NotificationsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NotificationsTableViewCell"];
        
        //creating dictionary
        
        cell.notificationTextLabel.text = notification[@"text"];
        cell.timestampLabel.text = notification[@"timestamp"];
        
        NSURL *url = [NSURL URLWithString:notification[@"profile_url"]];
        [cell.profileImageView setImageWithURL:url];
        NSURL *url2 = [NSURL URLWithString:notification[@"icon_url"]];
        [cell.iconImageView setImageWithURL:url2];
        
        return cell;
    }
    
    - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
        
        NSDictionary *notification = self.notifications[indexPath.row];
        
        NotificationDetailsViewController *notificationVC = [[NotificationDetailsViewController alloc] init];
        notificationVC.notification = notification;
        
        
        
        [self.navigationController pushViewController:notificationVC animated:YES];
    }
    
@end
