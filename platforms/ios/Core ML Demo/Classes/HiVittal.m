//
//  HiVittal.m
//  NativePagesInHybridAppNativePagesInHybridAppIphone
//
//  Created by Vittal Pai on 11/2/16.
//
//

#import <Foundation/Foundation.h>
#import "HiVittal.h"
#import <IBMMobileFirstPlatformFoundationHybrid/IBMMobileFirstPlatformFoundationHybrid.h>

@implementation HiVittal

@synthesize nameParam;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)setDataFromWebView:(NSDictionary*)data{
    self.nameParam = (NSString*)[data valueForKey:@"nameParam"];
}

-(IBAction)returnClicked:(id)sender{
    NSString *phone = [phoneNumber text];
    NSDictionary *returnedData = [NSDictionary dictionaryWithObject:phone
                                                             forKey:@"phoneNumber"];
    // Return to WebView
    [NativePage showWebView:returnedData];
}

-(void)onBeforeShow{}

-(void)onAfterShow{}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated {
    [nameLabel setText:self.nameParam];
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb  instantiateViewControllerWithIdentifier:@"Main"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
