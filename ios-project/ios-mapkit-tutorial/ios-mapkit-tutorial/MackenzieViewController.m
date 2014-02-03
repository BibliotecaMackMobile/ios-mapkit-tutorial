//
//  MackenzieViewController.m
//  ios-mapkit-tutorial
//
//  Created by Vinicius Miana on 1/31/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MackenzieViewController.h"


@implementation MackenzieViewController

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        locMgr = [[CLLocationManager alloc] init];
        [locMgr setDelegate:self];
        [locMgr startUpdatingLocation];
    }
    return self;
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    // O vetor de localizacoes esta em ordem
    // cronologica
    // imprimindo o ultimo lugar
    NSLog(@"Estou em %@",[locations lastObject]);
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Erro %@",error);
}






- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
