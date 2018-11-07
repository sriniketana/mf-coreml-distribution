//
//  HiVittal.h
//  NativePagesInHybridAppNativePagesInHybridAppIphone
//
//  Created by Vittal Pai on 11/2/16.
//
//
#import <UIKit/UIKit.h>

@interface HiVittal : UIViewController{
    IBOutlet UILabel *nameLabel;
    IBOutlet UITextField *phoneNumber;
}
-(IBAction)returnClicked:(id)sender;

@property (nonatomic, copy) NSString *nameParam;

@end
