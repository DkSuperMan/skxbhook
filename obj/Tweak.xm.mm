#line 1 "Tweak.xm"
#include <logos/logos.h>
#include <substrate.h>
@class SystemServices; @class UIApplication; @class AppDelegate; @class AngelFaceViewController; 
static int (*_logos_orig$_ungrouped$SystemServices$jailbroken)(SystemServices*, SEL); static int _logos_method$_ungrouped$SystemServices$jailbroken(SystemServices*, SEL); static BOOL (*_logos_orig$_ungrouped$AngelFaceViewController$myTest)(AngelFaceViewController*, SEL); static BOOL _logos_method$_ungrouped$AngelFaceViewController$myTest(AngelFaceViewController*, SEL); static void (*_logos_orig$_ungrouped$AngelFaceViewController$OpenScheme$)(AngelFaceViewController*, SEL, id); static void _logos_method$_ungrouped$AngelFaceViewController$OpenScheme$(AngelFaceViewController*, SEL, id); static BOOL (*_logos_orig$_ungrouped$AngelFaceViewController$webView$shouldStartLoadWithRequest$navigationType$)(AngelFaceViewController*, SEL, UIWebView *, NSURLRequest *, UIWebViewNavigationType); static BOOL _logos_method$_ungrouped$AngelFaceViewController$webView$shouldStartLoadWithRequest$navigationType$(AngelFaceViewController*, SEL, UIWebView *, NSURLRequest *, UIWebViewNavigationType); static BOOL (*_logos_orig$_ungrouped$AppDelegate$application$openURL$sourceApplication$annotation$)(AppDelegate*, SEL, id, id, id, id); static BOOL _logos_method$_ungrouped$AppDelegate$application$openURL$sourceApplication$annotation$(AppDelegate*, SEL, id, id, id, id); static BOOL (*_logos_orig$_ungrouped$UIApplication$openURL$)(UIApplication*, SEL, NSURL*); static BOOL _logos_method$_ungrouped$UIApplication$openURL$(UIApplication*, SEL, NSURL*); 

#line 1 "Tweak.xm"



static int _logos_method$_ungrouped$SystemServices$jailbroken(SystemServices* self, SEL _cmd) {
    return 0;
}






static BOOL _logos_method$_ungrouped$AngelFaceViewController$myTest(AngelFaceViewController* self, SEL _cmd) {
	return NO;
}


static void _logos_method$_ungrouped$AngelFaceViewController$OpenScheme$(AngelFaceViewController* self, SEL _cmd, id arg1) {
	NSLog(@"OpenScheme arg1 is %@",arg1);

	

	return _logos_orig$_ungrouped$AngelFaceViewController$OpenScheme$(self, _cmd, arg1);
}


static BOOL _logos_method$_ungrouped$AngelFaceViewController$webView$shouldStartLoadWithRequest$navigationType$(AngelFaceViewController* self, SEL _cmd, UIWebView * webView, NSURLRequest * request, UIWebViewNavigationType navigationType) {









    return _logos_orig$_ungrouped$AngelFaceViewController$webView$shouldStartLoadWithRequest$navigationType$(self, _cmd, webView, request, navigationType);
}






static BOOL _logos_method$_ungrouped$AppDelegate$application$openURL$sourceApplication$annotation$(AppDelegate* self, SEL _cmd, id arg1, id arg2, id arg3, id arg4) {
	BOOL value = _logos_orig$_ungrouped$AppDelegate$application$openURL$sourceApplication$annotation$(self, _cmd, arg1, arg2, arg3, arg4);
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AppDelegate" message:[NSString stringWithFormat:@"openURL:%@ , sourceApplication:%@ , value is %d",arg2,arg3,value] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
	return value;
}






static BOOL _logos_method$_ungrouped$UIApplication$openURL$(UIApplication* self, SEL _cmd, NSURL* url) {
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"UIApplication" message:url.absoluteString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];

	return _logos_orig$_ungrouped$UIApplication$openURL$(self, _cmd, url);
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SystemServices = objc_getClass("SystemServices"); MSHookMessageEx(_logos_class$_ungrouped$SystemServices, @selector(jailbroken), (IMP)&_logos_method$_ungrouped$SystemServices$jailbroken, (IMP*)&_logos_orig$_ungrouped$SystemServices$jailbroken);Class _logos_class$_ungrouped$AngelFaceViewController = objc_getClass("AngelFaceViewController"); MSHookMessageEx(_logos_class$_ungrouped$AngelFaceViewController, @selector(myTest), (IMP)&_logos_method$_ungrouped$AngelFaceViewController$myTest, (IMP*)&_logos_orig$_ungrouped$AngelFaceViewController$myTest);MSHookMessageEx(_logos_class$_ungrouped$AngelFaceViewController, @selector(OpenScheme:), (IMP)&_logos_method$_ungrouped$AngelFaceViewController$OpenScheme$, (IMP*)&_logos_orig$_ungrouped$AngelFaceViewController$OpenScheme$);MSHookMessageEx(_logos_class$_ungrouped$AngelFaceViewController, @selector(webView:shouldStartLoadWithRequest:navigationType:), (IMP)&_logos_method$_ungrouped$AngelFaceViewController$webView$shouldStartLoadWithRequest$navigationType$, (IMP*)&_logos_orig$_ungrouped$AngelFaceViewController$webView$shouldStartLoadWithRequest$navigationType$);Class _logos_class$_ungrouped$AppDelegate = objc_getClass("AppDelegate"); MSHookMessageEx(_logos_class$_ungrouped$AppDelegate, @selector(application:openURL:sourceApplication:annotation:), (IMP)&_logos_method$_ungrouped$AppDelegate$application$openURL$sourceApplication$annotation$, (IMP*)&_logos_orig$_ungrouped$AppDelegate$application$openURL$sourceApplication$annotation$);Class _logos_class$_ungrouped$UIApplication = objc_getClass("UIApplication"); MSHookMessageEx(_logos_class$_ungrouped$UIApplication, @selector(openURL:), (IMP)&_logos_method$_ungrouped$UIApplication$openURL$, (IMP*)&_logos_orig$_ungrouped$UIApplication$openURL$);} }
#line 65 "Tweak.xm"
