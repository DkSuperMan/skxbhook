%hook SystemServices

- (int)jailbroken
{
    return 0;
}

%end

%hook AngelFaceViewController

- (BOOL)myTest
{
	return NO;
}

- (void)OpenScheme:(id)arg1
{
	NSLog(@"OpenScheme arg1 is %@",arg1);

	

	return %orig;
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
/*
    NSString* url = request.mainDocumentURL.absoluteString;
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AngelFaceViewController webView" message:url delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];

    NSLog(@"webView url is %@",url);

    */

    return %orig;
}

%end

%hook AppDelegate

- (BOOL)application:(id)arg1 openURL:(id)arg2 sourceApplication:(id)arg3 annotation:(id)arg4
{
	BOOL value = %orig;
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AppDelegate" message:[NSString stringWithFormat:@"openURL:%@ , sourceApplication:%@ , value is %d",arg2,arg3,value] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
	return value;
}

%end

%hook UIApplication

- (BOOL)openURL:(NSURL*)url
{
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"UIApplication" message:url.absoluteString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alertView show];
	return %orig;
}

%end

