//
//  iPhone_reloadViewController.m
//  iPhone-reload
//
//  Created by cherenkov on 11/01/21.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iPhone_reloadViewController.h"

@implementation iPhone_reloadViewController




// タッチイベントを受け取るためのメソッド
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // タッチしたらリロード
    [webViewX reload];
}



// Implement loadView to create a view hierarchy programmatically.
- (void)loadView {
	self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	webViewX = [[UIWebView alloc] initWithFrame:[self.view frame]];
	[webViewX setDelegate:self];
	[self.view addSubview: webViewX];
}

// Implement viewDidLoad to do additional setup after loading the view.
- (void)viewDidLoad {
	[super viewDidLoad];
	[webViewX loadRequest:[NSURLRequest requestWithURL:
						  //[NSURL URLWithString:@"http://www.youtube.com/watch?v=fWrjUti71ps"]]];
						  [NSURL URLWithString:@"http://www.google.co.jp/"]]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIDeviceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning]; 
}


- (void)dealloc {
    [super dealloc];
}

@end
