// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SettingEntity.h instead.

#import <CoreData/CoreData.h>


extern const struct SettingEntityAttributes {
	__unsafe_unretained NSString *key;
	__unsafe_unretained NSString *value;
} SettingEntityAttributes;

extern const struct SettingEntityRelationships {
} SettingEntityRelationships;

extern const struct SettingEntityFetchedProperties {
} SettingEntityFetchedProperties;





@interface SettingEntityID : NSManagedObjectID {}
@end

@interface _SettingEntity : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SettingEntityID*)objectID;





@property (nonatomic, strong) NSString* key;



//- (BOOL)validateKey:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* value;



@property int64_t valueValue;
- (int64_t)valueValue;
- (void)setValueValue:(int64_t)value_;

//- (BOOL)validateValue:(id*)value_ error:(NSError**)error_;






@end

@interface _SettingEntity (CoreDataGeneratedAccessors)

@end

@interface _SettingEntity (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveKey;
- (void)setPrimitiveKey:(NSString*)value;




- (NSNumber*)primitiveValue;
- (void)setPrimitiveValue:(NSNumber*)value;

- (int64_t)primitiveValueValue;
- (void)setPrimitiveValueValue:(int64_t)value_;




@end
