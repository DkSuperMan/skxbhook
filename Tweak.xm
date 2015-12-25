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

- (void)notificationHandler:(id)arg1
{
    /*
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AngelFaceViewController webView" message:@"notificationHandler" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
    */
    NSLog(@"notificationHandler is %@ callback symbol is %@",arg1,[NSThread callStackSymbols]);
	return %orig;
	
}

- (void)OpenScheme:(id)arg1
{
	NSLog(@"OpenScheme arg1 is %@",arg1);
	return %orig;
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{

    NSString* url = request.mainDocumentURL.absoluteString;

    /*
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AngelFaceViewController webView" message:url delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
    */
    NSLog(@"webView url is %@",url);

    return %orig;
}

- (void)verifyUser:(id)arg1
{
    NSLog(@"verifyUser arg1 is %@",arg1);
    return %orig;
}

- (id)postJson:(id)arg1 url:(id)arg2
{
    NSLog(@"postJson arg1 is %@ arg2 is %@",arg1,arg2);
    return %orig;
}

- (void)unionidHandler:(id)arg1
{
    NSLog(@"unionidHandler arg1 is %@",arg1);
    return %orig;
}

- (void)getMesgUrl:(id)arg1
{
    NSLog(@"getMesgUrl arg1 is %@",arg1);
    return %orig;
}

- (void)sendPackage
{
    NSLog(@"sendPackage is %@",[NSThread callStackSymbols]);
    return %orig;
}

- (void)postValidateUrl:(id)arg1
{
    NSLog(@"AngelFaceViewController postValidateUrl arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
    return %orig;
}

- (void)postUrl:(id)arg1
{
    NSLog(@"postUrl arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
    return %orig;
}

- (id)postUrl:(id)arg1 u:(id)arg2 m:(id)arg3
{
    NSLog(@"postUrl arg1 is %@ arg2 is %@ arg3 is %@ callStackSymbols is %@",arg1,arg2,arg3,[NSThread callStackSymbols]);
    return %orig;
}

- (id)postUrl:(id)arg1 u:(id)arg2
{
    NSLog(@"postUrl arg1 is %@ arg2 is %@ callStackSymbols is %@",arg1,arg2,[NSThread callStackSymbols]);
    return %orig;
}

%end


%hook AppDelegate
/*
- (BOOL)application:(id)arg1 openURL:(id)arg2 sourceApplication:(id)arg3 annotation:(id)arg4
{

	BOOL value = %orig;
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AppDelegate" message:[NSString stringWithFormat:@"openURL:%@ , sourceApplication:%@ , value is %d",arg2,arg3,value] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
	return value;


	return %orig;
}
*/

- (void)postValidateUrl:(id)arg1
{
    NSLog(@"AppDelegate postValidateUrl arg1 is %@ callStackSymbols is %@",arg1,[NSThread callStackSymbols]);
    return %orig;
}

%end


%hook UIApplication

- (BOOL)openURL:(NSURL*)url
{

/*
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"UIApplication" message:url.absoluteString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alertView show];
*/

	NSLog(@"UIApplication openURL is %@ call symblo is %@",url.absoluteString,[NSThread callStackSymbols]);
	return %orig;
}

%end

%hook AFURLSessionManager

- (id)init
{
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AFURLSessionManager" message:@"init" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
    return %orig;
}

%end

%hook AFHTTPRequestSerializer

- (id)init
{
	UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"AFHTTPRequestSerializer" message:@"init" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
    return %orig;
}

%end

