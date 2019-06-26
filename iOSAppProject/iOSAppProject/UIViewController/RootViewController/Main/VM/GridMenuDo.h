//
//  GridMenuDo.h
//  iOSAppProject
//
//  Created by FuXinMing on 2019/6/25.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface GridMenuDo : NSObject
@property (nonatomic, strong) NSString * cLASSDESC;
@property (nonatomic, strong) NSString * cLASSNAME;
@property (nonatomic, strong) NSString * cLASSNO;
@property (nonatomic, strong) NSString * fAVSORT;
@property (nonatomic, strong) NSString * iSFAV;
@property (nonatomic, strong) NSString * iSGRAYMENU;
@property (nonatomic, strong) NSString * iSHASCHILD;
@property (nonatomic, strong) NSString * iSNEEDLOGIN;
@property (nonatomic, strong) NSString * iSNEWSTATUS;
@property (nonatomic, strong) NSString * iSSUPPORT;
@property (nonatomic, strong) NSString * mENUICONPATH;
@property (nonatomic, strong) NSString * mENUICONPATHNS;
@property (nonatomic, strong) NSString * mENUID;
@property (nonatomic, strong) NSString * mENULVL;
@property (nonatomic, strong) NSString * mENUNAME;
@property (nonatomic, strong) NSString * mENUSORT;
@property (nonatomic, strong) NSString * mENUURL;
@property (nonatomic, strong) NSString * mENUUSETYPE;
@property (nonatomic, strong) NSString * mENUVER;
@property (nonatomic, strong) NSString * mINACCTLVL;
@property (nonatomic, strong) NSString * mINCUSTLVL;
@property (nonatomic, strong) NSString * pARMENUID;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end


