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

#import "JSQSystemSoundPlayer+JSQMessages.h"

#import "JSQMessagesViewController.h"


static NSString * const kJSQMessageReceivedSoundName = @"message_received";
static NSString * const kJSQMessageSentSoundName = @"message_sent";


@implementation JSQSystemSoundPlayer (JSQMessages)

#pragma mark - Public

+(void)jsq_playMessageReceivedSound {
    [[JSQSystemSoundPlayer sharedPlayer] playSoundWithFilename:kJSQMessageReceivedSoundName fileExtension:kJSQSystemSoundTypeAIFF];
}

+(void)jsq_playMessageReceivedAlert
{
    [[JSQSystemSoundPlayer sharedPlayer] playAlertSoundWithFilename:kJSQMessageReceivedSoundName
                                                      fileExtension:kJSQSystemSoundTypeAIFF];
}

+(void)jsq_playMessageSentSound
{
    [[JSQSystemSoundPlayer sharedPlayer] playSoundWithFilename:kJSQMessageSentSoundName
                                                 fileExtension:kJSQSystemSoundTypeAIFF];
}

+(void)jsq_playMessageSentAlert
{
    [[JSQSystemSoundPlayer sharedPlayer] playAlertSoundWithFilename:kJSQMessageSentSoundName
                                                      fileExtension:kJSQSystemSoundTypeAIFF];
}
@end
