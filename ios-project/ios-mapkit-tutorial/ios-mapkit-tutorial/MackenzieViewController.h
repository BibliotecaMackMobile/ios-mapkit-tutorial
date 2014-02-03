//
//  MackenzieViewController.h
//  ios-mapkit-tutorial
//
//  Created by Vinicius Miana on 1/31/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface MackenzieViewController : UIViewController<CLLocationManagerDelegate>
{
    __weak IBOutlet MKMapView *mapView;
    CLLocationManager *locMgr;
}

@end
