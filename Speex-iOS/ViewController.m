//
//  ViewController.m
//  Speex-iOS
//
//  Created by CIA on 31/03/2018.
//  Copyright © 2018 CIA. All rights reserved.
//

#import "ViewController.h"
#import "SpeexCodec.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 1,inital a codec
    SpeexCodec *codec = [SpeexCodec new];
    // 2,set speex mode
    [codec open:4];
    
    // 3, encode or decode
    short *pcmData = malloc(sizeof(short) * 200);
    [codec encode:pcmData length:200];
    // ....encode more here,no need to recrate codec
    short *pcmData2 = malloc(sizeof(short) * 200);
    [codec encode:pcmData2 length:200];
    
    // 4,close
    [codec close];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
