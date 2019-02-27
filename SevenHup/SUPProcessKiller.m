//
//  NSError+SUPProcessKiller.m
//  Web Console
//
//  Created by Roben Kleene on 1/5/16.
//  Copyright © 2016 Roben Kleene. All rights reserved.
//

#import "SUPProcessKiller.h"

@implementation SUPProcessKiller

+ (BOOL)killProcessWithIdentifier:(pid_t)processIdentifier {
    int result = killpg(processIdentifier, SIGTERM);
    return result == 0;
}

@end
