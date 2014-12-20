// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SettingEntity.m instead.

#import "_SettingEntity.h"

const struct SettingEntityAttributes SettingEntityAttributes = {
	.key = @"key",
	.value = @"value",
};

const struct SettingEntityRelationships SettingEntityRelationships = {
};

const struct SettingEntityFetchedProperties SettingEntityFetchedProperties = {
};

@implementation SettingEntityID
@end

@implementation _SettingEntity

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"SettingEntity" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"SettingEntity";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"SettingEntity" inManagedObjectContext:moc_];
}

- (SettingEntityID*)objectID {
	return (SettingEntityID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"valueValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"value"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic key;






@dynamic value;



- (int64_t)valueValue {
	NSNumber *result = [self value];
	return [result longLongValue];
}

- (void)setValueValue:(int64_t)value_ {
	[self setValue:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveValueValue {
	NSNumber *result = [self primitiveValue];
	return [result longLongValue];
}

- (void)setPrimitiveValueValue:(int64_t)value_ {
	[self setPrimitiveValue:[NSNumber numberWithLongLong:value_]];
}










@end
