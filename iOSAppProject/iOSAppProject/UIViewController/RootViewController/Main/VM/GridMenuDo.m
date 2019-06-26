//
//  GridMenuDo.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/6/25.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "GridMenuDo.h"

NSString *const kHBBankMenuDOCLASSDESC = @"CLASS_DESC";
NSString *const kHBBankMenuDOCLASSNAME = @"CLASS_NAME";
NSString *const kHBBankMenuDOCLASSNO = @"CLASS_NO";
NSString *const kHBBankMenuDOFAVSORT = @"FAV_SORT";
NSString *const kHBBankMenuDOISFAV = @"IS_FAV";
NSString *const kHBBankMenuDOISGRAYMENU = @"IS_GRAY_MENU";
NSString *const kHBBankMenuDOISHASCHILD = @"IS_HAS_CHILD";
NSString *const kHBBankMenuDOISNEEDLOGIN = @"IS_NEED_LOGIN";
NSString *const kHBBankMenuDOISNEWSTATUS = @"IS_NEW_STATUS";
NSString *const kHBBankMenuDOISSUPPORT = @"IS_SUPPORT";
NSString *const kHBBankMenuDOMENUICONPATH = @"MENU_ICON_PATH";
NSString *const kHBBankMenuDOMENUICONPATHNS = @"MENU_ICON_PATH_NS";
NSString *const kHBBankMenuDOMENUID = @"MENU_ID";
NSString *const kHBBankMenuDOMENULVL = @"MENU_LVL";
NSString *const kHBBankMenuDOMENUNAME = @"MENU_NAME";
NSString *const kHBBankMenuDOMENUSORT = @"MENU_SORT";
NSString *const kHBBankMenuDOMENUURL = @"MENU_URL";
NSString *const kHBBankMenuDOMENUUSETYPE = @"MENU_USE_TYPE";
NSString *const kHBBankMenuDOMENUVER = @"MENU_VER";
NSString *const kHBBankMenuDOMINACCTLVL = @"MIN_ACCT_LVL";
NSString *const kHBBankMenuDOMINCUSTLVL = @"MIN_CUST_LVL";
NSString *const kHBBankMenuDOPARMENUID = @"PAR_MENU_ID";

@interface GridMenuDo ()
@end
@implementation GridMenuDo




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kHBBankMenuDOCLASSDESC] isKindOfClass:[NSNull class]]){
        self.cLASSDESC = dictionary[kHBBankMenuDOCLASSDESC];
    }
    if(![dictionary[kHBBankMenuDOCLASSNAME] isKindOfClass:[NSNull class]]){
        self.cLASSNAME = dictionary[kHBBankMenuDOCLASSNAME];
    }
    if(![dictionary[kHBBankMenuDOCLASSNO] isKindOfClass:[NSNull class]]){
        self.cLASSNO = dictionary[kHBBankMenuDOCLASSNO];
    }
    if(![dictionary[kHBBankMenuDOFAVSORT] isKindOfClass:[NSNull class]]){
        self.fAVSORT = dictionary[kHBBankMenuDOFAVSORT];
    }
    if(![dictionary[kHBBankMenuDOISFAV] isKindOfClass:[NSNull class]]){
        self.iSFAV = dictionary[kHBBankMenuDOISFAV];
    }
    if(![dictionary[kHBBankMenuDOISGRAYMENU] isKindOfClass:[NSNull class]]){
        self.iSGRAYMENU = dictionary[kHBBankMenuDOISGRAYMENU];
    }
    if(![dictionary[kHBBankMenuDOISHASCHILD] isKindOfClass:[NSNull class]]){
        self.iSHASCHILD = dictionary[kHBBankMenuDOISHASCHILD];
    }
    if(![dictionary[kHBBankMenuDOISNEEDLOGIN] isKindOfClass:[NSNull class]]){
        self.iSNEEDLOGIN = dictionary[kHBBankMenuDOISNEEDLOGIN];
    }
    if(![dictionary[kHBBankMenuDOISNEWSTATUS] isKindOfClass:[NSNull class]]){
        self.iSNEWSTATUS = dictionary[kHBBankMenuDOISNEWSTATUS];
    }
    if(![dictionary[kHBBankMenuDOISSUPPORT] isKindOfClass:[NSNull class]]){
        self.iSSUPPORT = dictionary[kHBBankMenuDOISSUPPORT];
    }
    if(![dictionary[kHBBankMenuDOMENUICONPATH] isKindOfClass:[NSNull class]]){
        self.mENUICONPATH = dictionary[kHBBankMenuDOMENUICONPATH];
    }
    if(![dictionary[kHBBankMenuDOMENUICONPATHNS] isKindOfClass:[NSNull class]]){
        self.mENUICONPATHNS = dictionary[kHBBankMenuDOMENUICONPATHNS];
    }
    if(![dictionary[kHBBankMenuDOMENUID] isKindOfClass:[NSNull class]]){
        self.mENUID = dictionary[kHBBankMenuDOMENUID];
    }
    if(![dictionary[kHBBankMenuDOMENULVL] isKindOfClass:[NSNull class]]){
        self.mENULVL = dictionary[kHBBankMenuDOMENULVL];
    }
    if(![dictionary[kHBBankMenuDOMENUNAME] isKindOfClass:[NSNull class]]){
        self.mENUNAME = dictionary[kHBBankMenuDOMENUNAME];
    }
    if(![dictionary[kHBBankMenuDOMENUSORT] isKindOfClass:[NSNull class]]){
        self.mENUSORT = dictionary[kHBBankMenuDOMENUSORT];
    }
    if(![dictionary[kHBBankMenuDOMENUURL] isKindOfClass:[NSNull class]]){
        self.mENUURL = dictionary[kHBBankMenuDOMENUURL];
    }
    if(![dictionary[kHBBankMenuDOMENUUSETYPE] isKindOfClass:[NSNull class]]){
        self.mENUUSETYPE = dictionary[kHBBankMenuDOMENUUSETYPE];
    }
    if(![dictionary[kHBBankMenuDOMENUVER] isKindOfClass:[NSNull class]]){
        self.mENUVER = dictionary[kHBBankMenuDOMENUVER];
    }
    if(![dictionary[kHBBankMenuDOMINACCTLVL] isKindOfClass:[NSNull class]]){
        self.mINACCTLVL = dictionary[kHBBankMenuDOMINACCTLVL];
    }
    if(![dictionary[kHBBankMenuDOMINCUSTLVL] isKindOfClass:[NSNull class]]){
        self.mINCUSTLVL = dictionary[kHBBankMenuDOMINCUSTLVL];
    }
    if(![dictionary[kHBBankMenuDOPARMENUID] isKindOfClass:[NSNull class]]){
        self.pARMENUID = dictionary[kHBBankMenuDOPARMENUID];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.cLASSDESC != nil){
        dictionary[kHBBankMenuDOCLASSDESC] = self.cLASSDESC;
    }
    if(self.cLASSNAME != nil){
        dictionary[kHBBankMenuDOCLASSNAME] = self.cLASSNAME;
    }
    if(self.cLASSNO != nil){
        dictionary[kHBBankMenuDOCLASSNO] = self.cLASSNO;
    }
    if(self.fAVSORT != nil){
        dictionary[kHBBankMenuDOFAVSORT] = self.fAVSORT;
    }
    if(self.iSFAV != nil){
        dictionary[kHBBankMenuDOISFAV] = self.iSFAV;
    }
    if(self.iSGRAYMENU != nil){
        dictionary[kHBBankMenuDOISGRAYMENU] = self.iSGRAYMENU;
    }
    if(self.iSHASCHILD != nil){
        dictionary[kHBBankMenuDOISHASCHILD] = self.iSHASCHILD;
    }
    if(self.iSNEEDLOGIN != nil){
        dictionary[kHBBankMenuDOISNEEDLOGIN] = self.iSNEEDLOGIN;
    }
    if(self.iSNEWSTATUS != nil){
        dictionary[kHBBankMenuDOISNEWSTATUS] = self.iSNEWSTATUS;
    }
    if(self.iSSUPPORT != nil){
        dictionary[kHBBankMenuDOISSUPPORT] = self.iSSUPPORT;
    }
    if(self.mENUICONPATH != nil){
        dictionary[kHBBankMenuDOMENUICONPATH] = self.mENUICONPATH;
    }
    if(self.mENUICONPATHNS != nil){
        dictionary[kHBBankMenuDOMENUICONPATHNS] = self.mENUICONPATHNS;
    }
    if(self.mENUID != nil){
        dictionary[kHBBankMenuDOMENUID] = self.mENUID;
    }
    if(self.mENULVL != nil){
        dictionary[kHBBankMenuDOMENULVL] = self.mENULVL;
    }
    if(self.mENUNAME != nil){
        dictionary[kHBBankMenuDOMENUNAME] = self.mENUNAME;
    }
    if(self.mENUSORT != nil){
        dictionary[kHBBankMenuDOMENUSORT] = self.mENUSORT;
    }
    if(self.mENUURL != nil){
        dictionary[kHBBankMenuDOMENUURL] = self.mENUURL;
    }
    if(self.mENUUSETYPE != nil){
        dictionary[kHBBankMenuDOMENUUSETYPE] = self.mENUUSETYPE;
    }
    if(self.mENUVER != nil){
        dictionary[kHBBankMenuDOMENUVER] = self.mENUVER;
    }
    if(self.mINACCTLVL != nil){
        dictionary[kHBBankMenuDOMINACCTLVL] = self.mINACCTLVL;
    }
    if(self.mINCUSTLVL != nil){
        dictionary[kHBBankMenuDOMINCUSTLVL] = self.mINCUSTLVL;
    }
    if(self.pARMENUID != nil){
        dictionary[kHBBankMenuDOPARMENUID] = self.pARMENUID;
    }
    return dictionary;
    
}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    if(self.cLASSDESC != nil){
        [aCoder encodeObject:self.cLASSDESC forKey:kHBBankMenuDOCLASSDESC];
    }
    if(self.cLASSNAME != nil){
        [aCoder encodeObject:self.cLASSNAME forKey:kHBBankMenuDOCLASSNAME];
    }
    if(self.cLASSNO != nil){
        [aCoder encodeObject:self.cLASSNO forKey:kHBBankMenuDOCLASSNO];
    }
    if(self.fAVSORT != nil){
        [aCoder encodeObject:self.fAVSORT forKey:kHBBankMenuDOFAVSORT];
    }
    if(self.iSFAV != nil){
        [aCoder encodeObject:self.iSFAV forKey:kHBBankMenuDOISFAV];
    }
    if(self.iSGRAYMENU != nil){
        [aCoder encodeObject:self.iSGRAYMENU forKey:kHBBankMenuDOISGRAYMENU];
    }
    if(self.iSHASCHILD != nil){
        [aCoder encodeObject:self.iSHASCHILD forKey:kHBBankMenuDOISHASCHILD];
    }
    if(self.iSNEEDLOGIN != nil){
        [aCoder encodeObject:self.iSNEEDLOGIN forKey:kHBBankMenuDOISNEEDLOGIN];
    }
    if(self.iSNEWSTATUS != nil){
        [aCoder encodeObject:self.iSNEWSTATUS forKey:kHBBankMenuDOISNEWSTATUS];
    }
    if(self.iSSUPPORT != nil){
        [aCoder encodeObject:self.iSSUPPORT forKey:kHBBankMenuDOISSUPPORT];
    }
    if(self.mENUICONPATH != nil){
        [aCoder encodeObject:self.mENUICONPATH forKey:kHBBankMenuDOMENUICONPATH];
    }
    if(self.mENUICONPATHNS != nil){
        [aCoder encodeObject:self.mENUICONPATHNS forKey:kHBBankMenuDOMENUICONPATHNS];
    }
    if(self.mENUID != nil){
        [aCoder encodeObject:self.mENUID forKey:kHBBankMenuDOMENUID];
    }
    if(self.mENULVL != nil){
        [aCoder encodeObject:self.mENULVL forKey:kHBBankMenuDOMENULVL];
    }
    if(self.mENUNAME != nil){
        [aCoder encodeObject:self.mENUNAME forKey:kHBBankMenuDOMENUNAME];
    }
    if(self.mENUSORT != nil){
        [aCoder encodeObject:self.mENUSORT forKey:kHBBankMenuDOMENUSORT];
    }
    if(self.mENUURL != nil){
        [aCoder encodeObject:self.mENUURL forKey:kHBBankMenuDOMENUURL];
    }
    if(self.mENUUSETYPE != nil){
        [aCoder encodeObject:self.mENUUSETYPE forKey:kHBBankMenuDOMENUUSETYPE];
    }
    if(self.mENUVER != nil){
        [aCoder encodeObject:self.mENUVER forKey:kHBBankMenuDOMENUVER];
    }
    if(self.mINACCTLVL != nil){
        [aCoder encodeObject:self.mINACCTLVL forKey:kHBBankMenuDOMINACCTLVL];
    }
    if(self.mINCUSTLVL != nil){
        [aCoder encodeObject:self.mINCUSTLVL forKey:kHBBankMenuDOMINCUSTLVL];
    }
    if(self.pARMENUID != nil){
        [aCoder encodeObject:self.pARMENUID forKey:kHBBankMenuDOPARMENUID];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.cLASSDESC = [aDecoder decodeObjectForKey:kHBBankMenuDOCLASSDESC];
    self.cLASSNAME = [aDecoder decodeObjectForKey:kHBBankMenuDOCLASSNAME];
    self.cLASSNO = [aDecoder decodeObjectForKey:kHBBankMenuDOCLASSNO];
    self.fAVSORT = [aDecoder decodeObjectForKey:kHBBankMenuDOFAVSORT];
    self.iSFAV = [aDecoder decodeObjectForKey:kHBBankMenuDOISFAV];
    self.iSGRAYMENU = [aDecoder decodeObjectForKey:kHBBankMenuDOISGRAYMENU];
    self.iSHASCHILD = [aDecoder decodeObjectForKey:kHBBankMenuDOISHASCHILD];
    self.iSNEEDLOGIN = [aDecoder decodeObjectForKey:kHBBankMenuDOISNEEDLOGIN];
    self.iSNEWSTATUS = [aDecoder decodeObjectForKey:kHBBankMenuDOISNEWSTATUS];
    self.iSSUPPORT = [aDecoder decodeObjectForKey:kHBBankMenuDOISSUPPORT];
    self.mENUICONPATH = [aDecoder decodeObjectForKey:kHBBankMenuDOMENUICONPATH];
    self.mENUICONPATHNS = [aDecoder decodeObjectForKey:kHBBankMenuDOMENUICONPATHNS];
    self.mENUID = [aDecoder decodeObjectForKey:kHBBankMenuDOMENUID];
    self.mENULVL = [aDecoder decodeObjectForKey:kHBBankMenuDOMENULVL];
    self.mENUNAME = [aDecoder decodeObjectForKey:kHBBankMenuDOMENUNAME];
    self.mENUSORT = [aDecoder decodeObjectForKey:kHBBankMenuDOMENUSORT];
    self.mENUURL = [aDecoder decodeObjectForKey:kHBBankMenuDOMENUURL];
    self.mENUUSETYPE = [aDecoder decodeObjectForKey:kHBBankMenuDOMENUUSETYPE];
    self.mENUVER = [aDecoder decodeObjectForKey:kHBBankMenuDOMENUVER];
    self.mINACCTLVL = [aDecoder decodeObjectForKey:kHBBankMenuDOMINACCTLVL];
    self.mINCUSTLVL = [aDecoder decodeObjectForKey:kHBBankMenuDOMINCUSTLVL];
    self.pARMENUID = [aDecoder decodeObjectForKey:kHBBankMenuDOPARMENUID];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    GridMenuDo *copy = [GridMenuDo new];
    
    copy.cLASSDESC = [self.cLASSDESC copy];
    copy.cLASSNAME = [self.cLASSNAME copy];
    copy.cLASSNO = [self.cLASSNO copy];
    copy.fAVSORT = [self.fAVSORT copy];
    copy.iSFAV = [self.iSFAV copy];
    copy.iSGRAYMENU = [self.iSGRAYMENU copy];
    copy.iSHASCHILD = [self.iSHASCHILD copy];
    copy.iSNEEDLOGIN = [self.iSNEEDLOGIN copy];
    copy.iSNEWSTATUS = [self.iSNEWSTATUS copy];
    copy.iSSUPPORT = [self.iSSUPPORT copy];
    copy.mENUICONPATH = [self.mENUICONPATH copy];
    copy.mENUICONPATHNS = [self.mENUICONPATHNS copy];
    copy.mENUID = [self.mENUID copy];
    copy.mENULVL = [self.mENULVL copy];
    copy.mENUNAME = [self.mENUNAME copy];
    copy.mENUSORT = [self.mENUSORT copy];
    copy.mENUURL = [self.mENUURL copy];
    copy.mENUUSETYPE = [self.mENUUSETYPE copy];
    copy.mENUVER = [self.mENUVER copy];
    copy.mINACCTLVL = [self.mINACCTLVL copy];
    copy.mINCUSTLVL = [self.mINCUSTLVL copy];
    copy.pARMENUID = [self.pARMENUID copy];
    
    return copy;
}
@end
