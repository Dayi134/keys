#import "APIKey.h"

static void didFinishLaunching(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef info) {
[APIClient setEmail:@"ardard2006@gmail.com"];
[APIClient setDebid:0];//package id
[APIClient setDebVersion:@"//2,2"];
[APIClient setDylibName:@"DayiTest"];

//Custom
[APIClient setLogoutAllowed:TRUE];

}

%ctor {
  CFNotificationCenterAddObserver(CFNotificationCenterGetLocalCenter(), NULL, &didFinishLaunching, (CFStringRef)UIApplicationDidFinishLaunchingNotification, NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}
