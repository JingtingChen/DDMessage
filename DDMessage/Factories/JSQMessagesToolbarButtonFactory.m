//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "JSQMessagesToolbarButtonFactory.h"

#import "UIColor+JSQMessages.h"
#import "UIImage+JSQMessages.h"


@implementation JSQMessagesToolbarButtonFactory

+ (UIButton *)defaultAccessoryButtonItem
{
    UIImage *accessoryImage = [UIImage jsq_defaultAccessoryImage];
    UIImage *normalImage = [accessoryImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *highlightedImage = [accessoryImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *accessoryButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, accessoryImage.size.width, 32.0f)];
    [accessoryButton setImage:normalImage forState:UIControlStateNormal];
    [accessoryButton setImage:highlightedImage forState:UIControlStateHighlighted];
    
    accessoryButton.contentMode = UIViewContentModeScaleAspectFit;
    accessoryButton.backgroundColor = [UIColor clearColor];
    accessoryButton.tintColor = [UIColor lightGrayColor];
    
    return accessoryButton;
}

+ (UIButton *)defaultSendButtonItem
{
    NSString *sendTitle = NSLocalizedStringFromTable(@"Send", @"JSQMessages", @"Text for the send button on the messages view toolbar");
    
    UIButton *sendButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [sendButton setTitle:sendTitle forState:UIControlStateNormal];
    [sendButton setTitleColor:[UIColor jsq_messageBubbleBlueColor] forState:UIControlStateNormal];
    [sendButton setTitleColor:[[UIColor jsq_messageBubbleBlueColor] jsq_colorByDarkeningColorWithValue:0.1f] forState:UIControlStateHighlighted];
    [sendButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
    
    sendButton.titleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    sendButton.titleLabel.adjustsFontSizeToFitWidth = YES;
    sendButton.titleLabel.minimumScaleFactor = 0.85f;
    sendButton.contentMode = UIViewContentModeCenter;
    sendButton.backgroundColor = [UIColor clearColor];
    sendButton.tintColor = [UIColor jsq_messageBubbleBlueColor];
    
    CGFloat maxHeight = 32.0f;
    
    CGRect sendTitleRect = [sendTitle boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, maxHeight)
                                                   options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                                attributes:@{ NSFontAttributeName : sendButton.titleLabel.font }
                                                   context:nil];
    
    sendButton.frame = CGRectMake(0.0f,
                                  0.0f,
                                  CGRectGetWidth(CGRectIntegral(sendTitleRect)),
                                  maxHeight);
    
    return sendButton;
}


+ (UIButton *)defaultVoiceButtonItem{
    NSString *voiceButtonNormalTitle = NSLocalizedStringFromTable(@"      按住 说话", @"JSQMessages", @"Text for the voice button on the messages view toolbar");
    NSString *voiceButtonPressed = NSLocalizedStringFromTable(@"      松开 结束", @"JSQMessages", @"Text for the voice button on the messages view toolbar");
    
    UIButton *voiceButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [voiceButton setTitle:voiceButtonNormalTitle forState:UIControlStateNormal];
    [voiceButton setTitle:voiceButtonPressed forState:UIControlStateHighlighted];
    [voiceButton setTitleColor:[UIColor jsq_messageBubbleBlueColor] forState:UIControlStateNormal];
    [voiceButton setTitleColor:[[UIColor jsq_messageBubbleBlueColor] jsq_colorByDarkeningColorWithValue:0.1f] forState:UIControlStateHighlighted];
    [voiceButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
    
    voiceButton.titleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    voiceButton.titleLabel.adjustsFontSizeToFitWidth = YES;
    voiceButton.titleLabel.minimumScaleFactor = 0.85f;
    voiceButton.contentMode = UIViewContentModeCenter;
    voiceButton.backgroundColor = [UIColor clearColor];
    voiceButton.tintColor = [UIColor jsq_messageBubbleBlueColor];
    
    CGFloat maxHeight = 32.0f;
    CGFloat maxWidth  = 204.0f;

    voiceButton.frame = CGRectMake(0.0f,0.0f,maxWidth,maxHeight);
    voiceButton.tag = 0;
    return voiceButton;
}

@end
