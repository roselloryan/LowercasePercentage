//
//  main.m
//  LowercasePercentage


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *line = @"thisTHIS";
        
        NSCharacterSet *lowercaseSet = [NSCharacterSet lowercaseLetterCharacterSet];
        NSCharacterSet *uppercaseSet = [NSCharacterSet uppercaseLetterCharacterSet];
        
        float lowercaseInt = 0.0;
        float uppercaseInt = 0.0;
        
        NSInteger i = 0;
        for (i = 0; i < line.length; i++) {
            if ([lowercaseSet characterIsMember: [line characterAtIndex:i]]) {
                lowercaseInt ++;
            }
            else if ([uppercaseSet characterIsMember: [line characterAtIndex:i]]) {
                uppercaseInt ++;
            }
            else {
                // no increment...
            }
        }
        
        NSString *solutionString = [NSString stringWithFormat:@"lowercase: %.2f uppercase: %.2f", (lowercaseInt / (lowercaseInt + uppercaseInt)) * 100, (uppercaseInt / (lowercaseInt + uppercaseInt)) * 100];
        
        NSLog(@"%@", solutionString);
        
        
    }
    return 0;
}
