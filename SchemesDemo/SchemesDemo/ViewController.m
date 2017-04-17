//
//  ViewController.m
//  SchemesDemo
//
//  Created by 辜东明 on 2017/4/17.
//  Copyright © 2017年 辜东明. All rights reserved.
//  参考http://www.jianshu.com/p/ee666b21e0a9

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //ios10 之后 无法跳转设置中的各个界面，只能跳转setting 另外 App-Prefs: 部分可以
    
    //[[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"App-Prefs:root=Phone"]];
//    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
    //以下方法是私有方法，想上架可能需要加混淆 另外，app需要添加一个Prefs的URL Schemes，即添加到info.plist的LSApplicationQueriesSchemes项中。
    NSURL*url=[NSURL URLWithString:@"Prefs:root=LOCATION_SERVICES"];
    Class LSApplicationWorkspace = NSClassFromString(@"LSApplicationWorkspace");
    [[LSApplicationWorkspace performSelector:@selector(defaultWorkspace)] performSelector:@selector(openSensitiveURL:withOptions:) withObject:url withObject:nil];
    /*其他路径*/
    /*
     其他界面参数配置
     
     About — Prefs:root=General&path=About
     
     Accessibility — Prefs:root=General&path=ACCESSIBILITY
     
     Airplane Mode On — Prefs:root=AIRPLANE_MODE
     
     Auto-Lock — Prefs:root=General&path=AUTOLOCK
     
     Brightness — Prefs:root=Brightness
     
     Bluetooth — Prefs:root=General&path=Bluetooth
     
     Date & Time — Prefs:root=General&path=DATE_AND_TIME
     
     FaceTime — Prefs:root=FACETIME
     
     General — Prefs:root=General
     
     Keyboard — Prefs:root=General&path=Keyboard
     
     iCloud — Prefs:root=CASTLE
     
     iCloud Storage & Backup — Prefs:root=CASTLE&path=STORAGE_AND_BACKUP
     
     International — Prefs:root=General&path=INTERNATIONAL
     
     Location Services — Prefs:root=LOCATION_SERVICES
     
     Music — Prefs:root=MUSIC
     
     Music Equalizer — Prefs:root=MUSIC&path=EQ
     
     Music Volume Limit — Prefs:root=MUSIC&path=VolumeLimit
     
     Network — Prefs:root=General&path=Network
     
     Nike + iPod — Prefs:root=NIKE_PLUS_IPOD
     
     Notes — Prefs:root=NOTES
     
     Notification — Prefs:root=NOTIFICATIONS_ID
     
     Phone — Prefs:root=Phone
     
     Photos — Prefs:root=Photos
     
     Profile — Prefs:root=General&path=ManagedConfigurationList
     
     Reset — Prefs:root=General&path=Reset
     
     Safari — Prefs:root=Safari
     
     Siri — Prefs:root=General&path=Assistant
     
     Sounds — Prefs:root=Sounds
     
     Software Update — Prefs:root=General&path=SOFTWARE_UPDATE_LINK
     
     Store — Prefs:root=STORE
     
     Twitter — Prefs:root=TWITTER
     
     Usage — Prefs:root=General&path=USAGE
     
     VPN — Prefs:root=General&path=Network/VPN
     
     Wallpaper — Prefs:root=Wallpaper
     
     Wi-Fi — Prefs:root=WIFI
     

     */
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
