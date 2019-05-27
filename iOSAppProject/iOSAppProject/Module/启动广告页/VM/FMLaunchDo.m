//
//	FMLaunchDo.m


#import "FMLaunchDo.h"

NSString *const kFMLaunchDoAuthorName = @"author_name";
NSString *const kFMLaunchDoCategory = @"category";
NSString *const kFMLaunchDoDate = @"date";
NSString *const kFMLaunchDoThumbnailPicS = @"thumbnail_pic_s";
NSString *const kFMLaunchDoThumbnailPicS02 = @"thumbnail_pic_s02";
NSString *const kFMLaunchDoThumbnailPicS03 = @"thumbnail_pic_s03";
NSString *const kFMLaunchDoTitle = @"title";
NSString *const kFMLaunchDoUniquekey = @"uniquekey";
NSString *const kFMLaunchDoUrl = @"url";

@interface FMLaunchDo ()
@end
@implementation FMLaunchDo




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kFMLaunchDoAuthorName] isKindOfClass:[NSNull class]]){
		self.authorName = dictionary[kFMLaunchDoAuthorName];
	}	
	if(![dictionary[kFMLaunchDoCategory] isKindOfClass:[NSNull class]]){
		self.category = dictionary[kFMLaunchDoCategory];
	}	
	if(![dictionary[kFMLaunchDoDate] isKindOfClass:[NSNull class]]){
		self.date = dictionary[kFMLaunchDoDate];
	}	
	if(![dictionary[kFMLaunchDoThumbnailPicS] isKindOfClass:[NSNull class]]){
		self.thumbnailPicS = dictionary[kFMLaunchDoThumbnailPicS];
	}	
	if(![dictionary[kFMLaunchDoThumbnailPicS02] isKindOfClass:[NSNull class]]){
		self.thumbnailPicS02 = dictionary[kFMLaunchDoThumbnailPicS02];
	}	
	if(![dictionary[kFMLaunchDoThumbnailPicS03] isKindOfClass:[NSNull class]]){
		self.thumbnailPicS03 = dictionary[kFMLaunchDoThumbnailPicS03];
	}	
	if(![dictionary[kFMLaunchDoTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kFMLaunchDoTitle];
	}	
	if(![dictionary[kFMLaunchDoUniquekey] isKindOfClass:[NSNull class]]){
		self.uniquekey = dictionary[kFMLaunchDoUniquekey];
	}	
	if(![dictionary[kFMLaunchDoUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kFMLaunchDoUrl];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.authorName != nil){
		dictionary[kFMLaunchDoAuthorName] = self.authorName;
	}
	if(self.category != nil){
		dictionary[kFMLaunchDoCategory] = self.category;
	}
	if(self.date != nil){
		dictionary[kFMLaunchDoDate] = self.date;
	}
	if(self.thumbnailPicS != nil){
		dictionary[kFMLaunchDoThumbnailPicS] = self.thumbnailPicS;
	}
	if(self.thumbnailPicS02 != nil){
		dictionary[kFMLaunchDoThumbnailPicS02] = self.thumbnailPicS02;
	}
	if(self.thumbnailPicS03 != nil){
		dictionary[kFMLaunchDoThumbnailPicS03] = self.thumbnailPicS03;
	}
	if(self.title != nil){
		dictionary[kFMLaunchDoTitle] = self.title;
	}
	if(self.uniquekey != nil){
		dictionary[kFMLaunchDoUniquekey] = self.uniquekey;
	}
	if(self.url != nil){
		dictionary[kFMLaunchDoUrl] = self.url;
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
	if(self.authorName != nil){
		[aCoder encodeObject:self.authorName forKey:kFMLaunchDoAuthorName];
	}
	if(self.category != nil){
		[aCoder encodeObject:self.category forKey:kFMLaunchDoCategory];
	}
	if(self.date != nil){
		[aCoder encodeObject:self.date forKey:kFMLaunchDoDate];
	}
	if(self.thumbnailPicS != nil){
		[aCoder encodeObject:self.thumbnailPicS forKey:kFMLaunchDoThumbnailPicS];
	}
	if(self.thumbnailPicS02 != nil){
		[aCoder encodeObject:self.thumbnailPicS02 forKey:kFMLaunchDoThumbnailPicS02];
	}
	if(self.thumbnailPicS03 != nil){
		[aCoder encodeObject:self.thumbnailPicS03 forKey:kFMLaunchDoThumbnailPicS03];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kFMLaunchDoTitle];
	}
	if(self.uniquekey != nil){
		[aCoder encodeObject:self.uniquekey forKey:kFMLaunchDoUniquekey];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kFMLaunchDoUrl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.authorName = [aDecoder decodeObjectForKey:kFMLaunchDoAuthorName];
	self.category = [aDecoder decodeObjectForKey:kFMLaunchDoCategory];
	self.date = [aDecoder decodeObjectForKey:kFMLaunchDoDate];
	self.thumbnailPicS = [aDecoder decodeObjectForKey:kFMLaunchDoThumbnailPicS];
	self.thumbnailPicS02 = [aDecoder decodeObjectForKey:kFMLaunchDoThumbnailPicS02];
	self.thumbnailPicS03 = [aDecoder decodeObjectForKey:kFMLaunchDoThumbnailPicS03];
	self.title = [aDecoder decodeObjectForKey:kFMLaunchDoTitle];
	self.uniquekey = [aDecoder decodeObjectForKey:kFMLaunchDoUniquekey];
	self.url = [aDecoder decodeObjectForKey:kFMLaunchDoUrl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	FMLaunchDo *copy = [FMLaunchDo new];

	copy.authorName = [self.authorName copy];
	copy.category = [self.category copy];
	copy.date = [self.date copy];
	copy.thumbnailPicS = [self.thumbnailPicS copy];
	copy.thumbnailPicS02 = [self.thumbnailPicS02 copy];
	copy.thumbnailPicS03 = [self.thumbnailPicS03 copy];
	copy.title = [self.title copy];
	copy.uniquekey = [self.uniquekey copy];
	copy.url = [self.url copy];

	return copy;
}
@end