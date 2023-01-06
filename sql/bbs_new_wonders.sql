------------------------------------------------------------------------------
--	FILE:	 bbg_new_wonders.sql
--	AUTHOR:  D. / Jack The Narrator, Deliverator
--	PURPOSE: Database modifications by new BBS
------------------------------------------------------------------------------

-----------------------------------------------
-- Features
-----------------------------------------------

INSERT OR IGNORE INTO Types
		(Type,										Kind)
		VALUES	
		('FEATURE_BARRINGER_CRATER',				'KIND_FEATURE'),
		('FEATURE_BIOLUMINESCENT_BAY',				'KIND_FEATURE'),
		('FEATURE_CERRO_DE_POTOSI',					'KIND_FEATURE'),
		('FEATURE_DALLOL',							'KIND_FEATURE'),
		('FEATURE_GIBRALTAR',						'KIND_FEATURE'),
		('FEATURE_GRAND_MESA',						'KIND_FEATURE'),
		('FEATURE_KAILASH',							'KIND_FEATURE'),
		('FEATURE_LAKE_VICTORIA',					'KIND_FEATURE'),
		('FEATURE_MOSI_OA_TUNYA',					'KIND_FEATURE'),
		('FEATURE_MOTLATSE_CANYON',					'KIND_FEATURE'),
		('FEATURE_NAMIB',							'KIND_FEATURE'),
		('FEATURE_OLD_FAITHFUL',					'KIND_FEATURE'),
		('FEATURE_OUNIANGA',						'KIND_FEATURE'),
		('FEATURE_SALAR_DE_UYUNI',					'KIND_FEATURE'),
		('FEATURE_SINAI',							'KIND_FEATURE'),
		('FEATURE_SRI_PADA',						'KIND_FEATURE'),
		('FEATURE_VREDEFORT_DOME',					'KIND_FEATURE'),
		('FEATURE_WULINGYUAN',						'KIND_FEATURE'),
		('FEATURE_LENCOIS_MARANHENSES',				'KIND_FEATURE');


INSERT OR IGNORE INTO Features
		(FeatureType,								Name,											Description,										Quote,										QuoteAudio,				NaturalWonder,		Appeal,		 	Tiles,			NoAdjacentFeatures,	NoRiver,		RequiresRiver,	Settlement, 	Coast,		NoCoast, 	Impassable,		SightThroughModifier, 	FollowRulesInWB,	MinDistanceNW, 	AddsFreshWater, Lake,	NotCliff, 	MinDistanceLand,	MaxDistanceLand, 	CustomPlacement)
		VALUES	
		('FEATURE_BARRINGER_CRATER',				'LOC_FEATURE_BARRINGER_CRATER_NAME',			'LOC_FEATURE_BARRINGER_CRATER_DESCRIPTION',			'LOC_FEATURE_BARRINGER_CRATER_QUOTE',		NULL,					1,					2,				1,				1,					1,				0,				0,				0,			1,			0,				1,						0,					0, 				0, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_BIOLUMINESCENT_BAY',				'LOC_FEATURE_BIOLUMINESCENT_BAY_NAME',			'LOC_FEATURE_BIOLUMINESCENT_BAY_DESCRIPTION',		'LOC_FEATURE_BIOLUMINESCENT_BAY_QUOTE',		NULL,					1,					2,				1,				0,					1,				0,				0,				0,			0,			0,				2,						0,					0, 				0, 				0, 		0, 			1, 					1, 					NULL),
		('FEATURE_CERRO_DE_POTOSI',					'LOC_FEATURE_CERRO_DE_POTOSI_NAME',				'LOC_FEATURE_CERRO_DE_POTOSI_DESCRIPTION',			'LOC_FEATURE_CERRO_DE_POTOSI_QUOTE',		NULL,					1,					2,				1,				0,					1,				0,				0,				0,			1,			1,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_DALLOL',							'LOC_FEATURE_DALLOL_NAME',						'LOC_FEATURE_DALLOL_DESCRIPTION',					'LOC_FEATURE_DALLOL_QUOTE',					NULL,					1,					2,				1,				1,					1,				0,				0,				0,			0,			0,				2,						0,					0, 				0, 				0, 		0,			0, 					0, 					NULL),
		('FEATURE_GIBRALTAR',						'LOC_FEATURE_GIBRALTAR_NAME',					'LOC_FEATURE_GIBRALTAR_DESCRIPTION',				'LOC_FEATURE_GIBRALTAR_QUOTE',				NULL,					1,					2,				1,				0,					1,				0,				0,				1,			1,			1,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					'PLACEMENT_GIBRALTAR'),
		('FEATURE_GRAND_MESA',						'LOC_FEATURE_GRAND_MESA_NAME',					'LOC_FEATURE_GRAND_MESA_DESCRIPTION',				'LOC_FEATURE_GRAND_MESA_QUOTE',				NULL,					1,					2,				1,				0,					1,				0,				0,				0,			1,			1,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_KAILASH',							'LOC_FEATURE_KAILASH_NAME',						'LOC_FEATURE_KAILASH_DESCRIPTION',					'LOC_FEATURE_KAILASH_QUOTE',				NULL,					1,					2,				1,				0,					1,				0,				0,				0,			1,			1,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_LAKE_VICTORIA',					'LOC_FEATURE_LAKE_VICTORIA_NAME',				'LOC_FEATURE_LAKE_VICTORIA_DESCRIPTION',			'LOC_FEATURE_LAKE_VICTORIA_QUOTE',			NULL,					1,					2,				4,				0,					1,				0,				0,				0,			1,			0,				2,						0,					0, 				1, 				1, 		0, 			0, 					0, 					NULL),
		('FEATURE_MOSI_OA_TUNYA',					'LOC_FEATURE_MOSI_OA_TUNYA_NAME',				'LOC_FEATURE_MOSI_OA_TUNYA_DESCRIPTION',			'LOC_FEATURE_MOSI_OA_TUNYA_QUOTE',			NULL,					1,					4,				1,				1,					0,				1,				0,				0,			1,			1,				2,						0,					0, 				1, 				0, 		0,			0, 					0, 					'PLACEMENT_MOSI_OA_TUNYA'),
		('FEATURE_MOTLATSE_CANYON',					'LOC_FEATURE_MOTLATSE_CANYON_NAME',				'LOC_FEATURE_MOTLATSE_CANYON_DESCRIPTION',			'LOC_FEATURE_MOTLATSE_CANYON_QUOTE',		NULL,					1,					2,				4,				0,					0,				1,				0,				0,			1,			1,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					'PLACEMENT_RORAIMA'),
		('FEATURE_NAMIB',							'LOC_FEATURE_NAMIB_NAME',						'LOC_FEATURE_NAMIB_DESCRIPTION',					'LOC_FEATURE_NAMIB_QUOTE',					NULL,					1,					2,				3,				0,					1,				0,				0,				0,			0,			0,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					'PLACEMENT_ZHANGYE_DANXIA'),
		('FEATURE_OLD_FAITHFUL',					'LOC_FEATURE_OLD_FAITHFUL_NAME',				'LOC_FEATURE_OLD_FAITHFUL_DESCRIPTION',				'LOC_FEATURE_OLD_FAITHFUL_QUOTE',			NULL,					1,					2,				1,				0,					1,				0,				0,				0,			1,			0,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_OUNIANGA',						'LOC_FEATURE_OUNIANGA_NAME',					'LOC_FEATURE_OUNIANGA_DESCRIPTION',					'LOC_FEATURE_OUNIANGA_QUOTE',				NULL,					1,					2,				2,				0,					1,				0,				0,				0,			1,			0,				2,						0,					0, 				1, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_SALAR_DE_UYUNI',					'LOC_FEATURE_SALAR_DE_UYUNI_NAME',				'LOC_FEATURE_SALAR_DE_UYUNI_DESCRIPTION',			'LOC_FEATURE_SALAR_DE_UYUNI_QUOTE',			NULL,					1,					2,				4,				0,					1,				0,				0,				0,			1,			0,				0,						0,					0, 				0, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_SINAI',							'LOC_FEATURE_SINAI_NAME',						'LOC_FEATURE_SINAI_DESCRIPTION',					'LOC_FEATURE_SINAI_QUOTE',					NULL,					1,					2,				1,				0,					1,				0,				0,				0,			1,			1,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_SRI_PADA',						'LOC_FEATURE_SRI_PADA_NAME',					'LOC_FEATURE_SRI_PADA_DESCRIPTION',					'LOC_FEATURE_SRI_PADA_QUOTE',				NULL,					1,					2,				1,				0,					1,				0,				0,				0,			0,			1,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_VREDEFORT_DOME',					'LOC_FEATURE_VREDEFORT_DOME_NAME',				'LOC_FEATURE_VREDEFORT_DOME_DESCRIPTION',			'LOC_FEATURE_VREDEFORT_DOME_QUOTE',			NULL,					1,					2,				2,				0,					1,				0,				0,				0,			1,			0,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_WULINGYUAN',						'LOC_FEATURE_WULINGYUAN_NAME',					'LOC_FEATURE_WULINGYUAN_DESCRIPTION',				'LOC_FEATURE_WULINGYUAN_QUOTE',				NULL,					1,					2,				2,				0,					1,				0,				0,				0,			1,			1,				2,						0,					0, 				0, 				0, 		0, 			0, 					0, 					NULL),
		('FEATURE_LENCOIS_MARANHENSES',				'LOC_FEATURE_LENCOIS_MARANHENSES_NAME',			'LOC_FEATURE_LENCOIS_MARANHENSES_DESCRIPTION',		'LOC_FEATURE_LENCOIS_MARANHENSES_QUOTE',	NULL,					1,					2,				2,				1,					1,				0,				0,				1,			0,			0,				2,						0,					0, 				1, 				0, 		1, 			0, 					0, 					NULL);

INSERT OR IGNORE INTO Feature_ValidTerrains
		(FeatureType,								TerrainType)
		VALUES	
		('FEATURE_BARRINGER_CRATER',				'TERRAIN_DESERT'),
		('FEATURE_BIOLUMINESCENT_BAY',				'TERRAIN_COAST'),
		('FEATURE_CERRO_DE_POTOSI',					'TERRAIN_PLAINS_MOUNTAIN'),
		('FEATURE_CERRO_DE_POTOSI',					'TERRAIN_TUNDRA_MOUNTAIN'),
		('FEATURE_CERRO_DE_POTOSI',					'TERRAIN_DESERT_MOUNTAIN'),
		('FEATURE_CERRO_DE_POTOSI',					'TERRAIN_GRASS_MOUNTAIN'),
      ('FEATURE_DALLOL',						'TERRAIN_DESERT'),
		('FEATURE_DALLOL',						'TERRAIN_DESERT_HILLS'),
		('FEATURE_GIBRALTAR',						'TERRAIN_GRASS_HILLS'),
		('FEATURE_GIBRALTAR',						'TERRAIN_GRASS'),
		('FEATURE_GRAND_MESA',						'TERRAIN_GRASS_HILLS'),
		('FEATURE_GRAND_MESA',						'TERRAIN_PLAINS'),
		('FEATURE_GRAND_MESA',						'TERRAIN_PLAINS_HILLS'),
		('FEATURE_GRAND_MESA',						'TERRAIN_GRASS'),
		('FEATURE_KAILASH',							'TERRAIN_PLAINS_MOUNTAIN'),
		('FEATURE_KAILASH',							'TERRAIN_TUNDRA_MOUNTAIN'),
		('FEATURE_KAILASH',							'TERRAIN_DESERT_MOUNTAIN'),
		('FEATURE_KAILASH',							'TERRAIN_GRASS_MOUNTAIN'),
		('FEATURE_LAKE_VICTORIA',					'TERRAIN_GRASS_HILLS'),
		('FEATURE_LAKE_VICTORIA',					'TERRAIN_PLAINS'),
		('FEATURE_LAKE_VICTORIA',					'TERRAIN_PLAINS_HILLS'),
		('FEATURE_LAKE_VICTORIA',					'TERRAIN_GRASS'),
		('FEATURE_LENCOIS_MARANHENSES',				'TERRAIN_DESERT'),
		('FEATURE_MOSI_OA_TUNYA',					'TERRAIN_GRASS'),
		('FEATURE_MOSI_OA_TUNYA',					'TERRAIN_GRASS_HILLS'),
		('FEATURE_MOTLATSE_CANYON',					'TERRAIN_GRASS_HILLS'),
		('FEATURE_MOTLATSE_CANYON',					'TERRAIN_PLAINS'),
		('FEATURE_MOTLATSE_CANYON',					'TERRAIN_PLAINS_HILLS'),
		('FEATURE_MOTLATSE_CANYON',					'TERRAIN_GRASS'),
		('FEATURE_NAMIB',							'TERRAIN_DESERT_HILLS'),
		('FEATURE_NAMIB',							'TERRAIN_DESERT'),
		('FEATURE_OLD_FAITHFUL',					'TERRAIN_GRASS_HILLS'),
		('FEATURE_OLD_FAITHFUL',					'TERRAIN_PLAINS'),
		('FEATURE_OLD_FAITHFUL',					'TERRAIN_PLAINS_HILLS'),
		('FEATURE_OLD_FAITHFUL',					'TERRAIN_GRASS'),
		('FEATURE_OUNIANGA',						'TERRAIN_DESERT_HILLS'),
		('FEATURE_OUNIANGA',						'TERRAIN_DESERT'),	
		('FEATURE_SALAR_DE_UYUNI',					'TERRAIN_GRASS_HILLS'),
		('FEATURE_SALAR_DE_UYUNI',					'TERRAIN_PLAINS'),
		('FEATURE_SALAR_DE_UYUNI',					'TERRAIN_PLAINS_HILLS'),
		('FEATURE_SALAR_DE_UYUNI',					'TERRAIN_GRASS'),
		('FEATURE_SINAI',							'TERRAIN_PLAINS_MOUNTAIN'),
		('FEATURE_SINAI',							'TERRAIN_DESERT_MOUNTAIN'),		
		('FEATURE_SRI_PADA',						'TERRAIN_PLAINS_MOUNTAIN'),
		('FEATURE_SRI_PADA',						'TERRAIN_GRASS_MOUNTAIN'),		
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_GRASS_HILLS'),
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_PLAINS'),
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_PLAINS_HILLS'),
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_GRASS'),	
		('FEATURE_WULINGYUAN',						'TERRAIN_GRASS_HILLS'),
		('FEATURE_WULINGYUAN',						'TERRAIN_PLAINS'),
		('FEATURE_WULINGYUAN',						'TERRAIN_PLAINS_HILLS'),
		('FEATURE_WULINGYUAN',						'TERRAIN_GRASS'),		
		('FEATURE_LENCOIS_MARANHENSES',				'TERRAIN_DESERT_HILLS');

INSERT OR IGNORE INTO Feature_AdjacentTerrains
		(FeatureType,								TerrainType)
		VALUES	
		('FEATURE_GIBRALTAR',						'TERRAIN_COAST'),
		('FEATURE_GRAND_MESA',						'TERRAIN_GRASS_HILLS'),
		('FEATURE_GRAND_MESA',						'TERRAIN_PLAINS'),
		('FEATURE_GRAND_MESA',						'TERRAIN_PLAINS_HILLS'),
		('FEATURE_GRAND_MESA',						'TERRAIN_GRASS'),
		('FEATURE_LENCOIS_MARANHENSES',				'TERRAIN_DESERT'),
		('FEATURE_NAMIB',							'TERRAIN_DESERT_HILLS'),
		('FEATURE_NAMIB',							'TERRAIN_DESERT'),
		('FEATURE_OLD_FAITHFUL',					'TERRAIN_GRASS_HILLS'),
		('FEATURE_OLD_FAITHFUL',					'TERRAIN_PLAINS'),
		('FEATURE_OLD_FAITHFUL',					'TERRAIN_PLAINS_HILLS'),
		('FEATURE_OLD_FAITHFUL',					'TERRAIN_GRASS'),
		('FEATURE_OUNIANGA',						'TERRAIN_DESERT_HILLS'),
		('FEATURE_OUNIANGA',						'TERRAIN_DESERT'),			
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_GRASS_HILLS'),
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_PLAINS'),
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_PLAINS_HILLS'),
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_GRASS'),	
		('FEATURE_WULINGYUAN',						'TERRAIN_GRASS_HILLS'),
		('FEATURE_WULINGYUAN',						'TERRAIN_PLAINS'),
		('FEATURE_WULINGYUAN',						'TERRAIN_PLAINS_HILLS'),
		('FEATURE_WULINGYUAN',						'TERRAIN_GRASS'),		
		('FEATURE_LENCOIS_MARANHENSES',				'TERRAIN_DESERT_HILLS');


INSERT OR IGNORE INTO Feature_NotAdjacentTerrains
		(FeatureType,								TerrainType)
		VALUES	
		('FEATURE_BARRINGER_CRATER',				'TERRAIN_GRASS'),
		('FEATURE_BARRINGER_CRATER',				'TERRAIN_GRASS_HILLS'),
		('FEATURE_BARRINGER_CRATER',				'TERRAIN_PLAINS'),
		('FEATURE_LAKE_VICTORIA',					'TERRAIN_TUNDRA'),
		('FEATURE_LAKE_VICTORIA',					'TERRAIN_TUNDRA_HILLS'),
		('FEATURE_LAKE_VICTORIA',					'TERRAIN_TUNDRA_MOUNTAIN'),
		('FEATURE_BARRINGER_CRATER',				'TERRAIN_SNOW'),
		('FEATURE_BARRINGER_CRATER',				'TERRAIN_TUNDRA'),
		('FEATURE_BARRINGER_CRATER',				'TERRAIN_PLAINS_MOUNTAIN'),
		('FEATURE_BARRINGER_CRATER',				'TERRAIN_SNOW_MOUNTAIN'),
		('FEATURE_BARRINGER_CRATER',				'TERRAIN_TUNDRA_MOUNTAIN'),
		('FEATURE_GIBRALTAR',						'TERRAIN_SNOW'),
		('FEATURE_GIBRALTAR',						'TERRAIN_TUNDRA'),
		('FEATURE_GIBRALTAR',						'TERRAIN_PLAINS_MOUNTAIN'),
		('FEATURE_GIBRALTAR',						'TERRAIN_SNOW_MOUNTAIN'),
		('FEATURE_GIBRALTAR',						'TERRAIN_TUNDRA_MOUNTAIN'),
		('FEATURE_GRAND_MESA',						'TERRAIN_GRASS_MOUNTAIN'),
		('FEATURE_GRAND_MESA',						'TERRAIN_PLAINS_MOUNTAIN'),
		('FEATURE_GRAND_MESA',						'TERRAIN_SNOW_MOUNTAIN'),
		('FEATURE_GRAND_MESA',						'TERRAIN_TUNDRA_MOUNTAIN'),
		('FEATURE_GRAND_MESA',						'TERRAIN_TUNDRA'),	
		('FEATURE_GRAND_MESA',						'TERRAIN_TUNDRA_HILLS'),				
		('FEATURE_GRAND_MESA',						'TERRAIN_DESERT_MOUNTAIN'),	
		('FEATURE_KAILASH',							'TERRAIN_GRASS_MOUNTAIN'),
		('FEATURE_KAILASH',							'TERRAIN_PLAINS_MOUNTAIN'),
		('FEATURE_KAILASH',							'TERRAIN_SNOW_MOUNTAIN'),
		('FEATURE_KAILASH',							'TERRAIN_TUNDRA_MOUNTAIN'),
		('FEATURE_KAILASH',							'TERRAIN_DESERT_MOUNTAIN'),
		('FEATURE_MOSI_OA_TUNYA',					'TERRAIN_GRASS_MOUNTAIN'),
		('FEATURE_MOSI_OA_TUNYA',					'TERRAIN_PLAINS_MOUNTAIN'),
		('FEATURE_MOSI_OA_TUNYA',					'TERRAIN_SNOW_MOUNTAIN'),
		('FEATURE_MOSI_OA_TUNYA',					'TERRAIN_TUNDRA_MOUNTAIN'),
		('FEATURE_MOSI_OA_TUNYA',					'TERRAIN_DESERT_MOUNTAIN'),			
		('FEATURE_CERRO_DE_POTOSI',					'TERRAIN_TUNDRA'),
		('FEATURE_CERRO_DE_POTOSI',					'TERRAIN_TUNDRA_HILLS'),
		('FEATURE_SALAR_DE_UYUNI',					'TERRAIN_TUNDRA'),
		('FEATURE_SALAR_DE_UYUNI',					'TERRAIN_TUNDRA_HILLS'),
		('FEATURE_SALAR_DE_UYUNI',					'TERRAIN_TUNDRA_MOUNTAIN'),		
		('FEATURE_WULINGYUAN',						'TERRAIN_TUNDRA'),
		('FEATURE_WULINGYUAN',						'TERRAIN_TUNDRA_HILLS'),
		('FEATURE_WULINGYUAN',						'TERRAIN_TUNDRA_MOUNTAIN'),		
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_TUNDRA'),
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_TUNDRA_HILLS'),
		('FEATURE_VREDEFORT_DOME',					'TERRAIN_TUNDRA_MOUNTAIN'),		
		('FEATURE_SINAI',							'TERRAIN_TUNDRA'),
		('FEATURE_SINAI',							'TERRAIN_TUNDRA_HILLS'),
		('FEATURE_SINAI',							'TERRAIN_TUNDRA_MOUNTAIN'),				
		('FEATURE_BARRINGER_CRATER',				'TERRAIN_GRASS_MOUNTAIN');		

INSERT OR IGNORE INTO Feature_AdjacentFeatures
		(FeatureType,								FeatureTypeAdjacent)
		VALUES	
		('FEATURE_SRI_PADA',						'FEATURE_JUNGLE'),
		('FEATURE_BIOLUMINESCENT_BAY',				'FEATURE_JUNGLE'),
		('FEATURE_GRAND_MESA',						'FEATURE_FOREST'),
		('FEATURE_OLD_FAITHFUL',					'FEATURE_FOREST'),
		('FEATURE_WULINGYUAN',						'FEATURE_JUNGLE');	
		
				
INSERT OR IGNORE INTO Feature_YieldChanges
		(FeatureType,								YieldType,					YieldChange)
		VALUES	
		('FEATURE_LAKE_VICTORIA',					'YIELD_GOLD',				1),
		('FEATURE_LAKE_VICTORIA',					'YIELD_FOOD',				3),
		('FEATURE_LAKE_VICTORIA',					'YIELD_CULTURE',			1),
      ('FEATURE_LAKE_VICTORIA',					'YIELD_PRODUCTION',			1),
      ('FEATURE_DALLOL',					'YIELD_GOLD',				1),
		('FEATURE_DALLOL',					'YIELD_SCIENCE',			2),
		('FEATURE_DALLOL',					'YIELD_FOOD',				2),
      ('FEATURE_DALLOL',					'YIELD_PRODUCTION',				2),
		('FEATURE_OLD_FAITHFUL',					'YIELD_GOLD',				1),
		('FEATURE_OLD_FAITHFUL',					'YIELD_SCIENCE',			3),
		('FEATURE_OLD_FAITHFUL',					'YIELD_FAITH',				1),	
      ('FEATURE_OLD_FAITHFUL',					'YIELD_FOOD',				2),
		('FEATURE_OUNIANGA',						'YIELD_GOLD',				2),
		('FEATURE_OUNIANGA',						'YIELD_CULTURE',			2),
		('FEATURE_OUNIANGA',						'YIELD_FOOD',				2),	
		('FEATURE_SALAR_DE_UYUNI',					'YIELD_GOLD',				4),
		('FEATURE_SALAR_DE_UYUNI',					'YIELD_SCIENCE',			2),
		('FEATURE_SALAR_DE_UYUNI',					'YIELD_PRODUCTION',			2),			
		('FEATURE_VREDEFORT_DOME',					'YIELD_FOOD',				2),
      ('FEATURE_VREDEFORT_DOME',					'YIELD_PRODUCTION',				1),
		('FEATURE_VREDEFORT_DOME',					'YIELD_SCIENCE',			2),
		('FEATURE_VREDEFORT_DOME',					'YIELD_CULTURE',			1),				
		('FEATURE_NAMIB',							'YIELD_GOLD',				2),
		('FEATURE_NAMIB',							'YIELD_CULTURE',			2),				
      ('FEATURE_NAMIB',							'YIELD_PRODUCTION',			2),
		('FEATURE_BIOLUMINESCENT_BAY',				'YIELD_GOLD',				1),
		('FEATURE_BIOLUMINESCENT_BAY',				'YIELD_FOOD',				1),
		('FEATURE_BIOLUMINESCENT_BAY',				'YIELD_SCIENCE',			3),
		('FEATURE_LENCOIS_MARANHENSES',				'YIELD_FOOD',				2),
		('FEATURE_LENCOIS_MARANHENSES',				'YIELD_CULTURE',			2),	
      ('FEATURE_LENCOIS_MARANHENSES',				'YIELD_GOLD',			2),
      ('FEATURE_BARRINGER_CRATER',				'YIELD_FOOD',				2),
		('FEATURE_BARRINGER_CRATER',				'YIELD_GOLD',				3),
		('FEATURE_BARRINGER_CRATER',				'YIELD_SCIENCE',			3);	
			
INSERT OR IGNORE INTO Feature_AdjacentYields
		(FeatureType,								YieldType,					YieldChange)
		VALUES	
		('FEATURE_GIBRALTAR',						'YIELD_FOOD',				1),	
		('FEATURE_GIBRALTAR',						'YIELD_GOLD',				1),		
		('FEATURE_OUNIANGA',						'YIELD_FOOD',				1),	
		('FEATURE_MOSI_OA_TUNYA',					'YIELD_FOOD',				2),		
		('FEATURE_MOTLATSE_CANYON',					'YIELD_FAITH',				1),
		('FEATURE_MOTLATSE_CANYON',					'YIELD_CULTURE',			1),			
		('FEATURE_SINAI',							'YIELD_FAITH',				2),		
		('FEATURE_KAILASH',							'YIELD_CULTURE',			1),			
		('FEATURE_KAILASH',							'YIELD_FAITH',				1),			
		('FEATURE_SRI_PADA',						'YIELD_FAITH',				1),	
		('FEATURE_SRI_PADA',						'YIELD_FOOD',				1),				
		('FEATURE_CERRO_DE_POTOSI',					'YIELD_GOLD',				3),
		('FEATURE_CERRO_DE_POTOSI',					'YIELD_PRODUCTION',			1),
		('FEATURE_GRAND_MESA',						'YIELD_FOOD',				1),
		('FEATURE_WULINGYUAN',						'YIELD_CULTURE',			1),				
		('FEATURE_GRAND_MESA',						'YIELD_CULTURE',			1);	

INSERT OR IGNORE INTO District_Adjacencies
		(DistrictType,								YieldChangeId)
		VALUES
		('DISTRICT_COMMERCIAL_HUB',					'SalarDeUyuni_Gold'),	
		('DISTRICT_CAMPUS',							'OldFaithful_Science');	

INSERT OR IGNORE INTO Adjacency_YieldChanges
		(ID,							Description,							YieldType, 			YieldChange, 	TilesRequired, 	AdjacentFeature)
		VALUES
		('SalarDeUyuni_Gold',			'LOC_DISTRICT_SALAR_DE_UYUNI_GOLD',		'YIELD_GOLD',		2,				1,				'FEATURE_SALAR_DE_UYUNI'),	
		('OldFaithful_Science',			'LOC_DISTRICT_OLD_FAITHFUL_SCIENCE',	'YIELD_SCIENCE',	2,				1,				'FEATURE_OLD_FAITHFUL');	





-----------------------------------------------
-- Requirements
-----------------------------------------------		
		
INSERT OR IGNORE INTO Requirements
		(RequirementId,											RequirementType)
		VALUES	
		('MAP_CONTAINS_SINAI',									'REQUIREMENT_MAP_HAS_FEATURE'),
		('MAP_CONTAINS_NAMIB',									'REQUIREMENT_MAP_HAS_FEATURE'),
		('MAP_CONTAINS_LENCOIS_MARANHENSES',					'REQUIREMENT_MAP_HAS_FEATURE'),
		('MAP_CONTAINS_BARRINGER_CRATER',						'REQUIREMENT_MAP_HAS_FEATURE'),
		('MAP_CONTAINS_BIOLUMINESCENT_BAY',						'REQUIREMENT_MAP_HAS_FEATURE'),
		('MAP_CONTAINS_KAILASH',								'REQUIREMENT_MAP_HAS_FEATURE'),
		('SINAI_REQUIRES_LAND_UNIT',							'REQUIREMENT_UNIT_DOMAIN_MATCHES'),
		('NAMIB_REQUIRES_LAND_UNIT',							'REQUIREMENT_UNIT_DOMAIN_MATCHES'),
		('SINAI_REQUIRES_RELIGIOUS_UNIT',						'REQUIREMENT_UNIT_TAG_MATCHES'),		
		('SINAI_REQUIRES_ADJACENT_UNIT',						'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'),
		('NAMIB_REQUIRES_UNIT',									'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES'),
		('PLAYER_HAS_LENCOIS_MARANHENSES',						'REQUIREMENT_PLAYER_HAS_FEATURE'),
		('PLAYER_HAS_BARRINGER_CRATER',							'REQUIREMENT_PLAYER_HAS_FEATURE'),
		('PLAYER_HAS_BIOLUMINESCENT_BAY',						'REQUIREMENT_PLAYER_HAS_FEATURE'),		
		('PLAYER_HAS_KAILASH',									'REQUIREMENT_PLAYER_HAS_FEATURE'),		
		('REQ_PLOT_HAS_FLOODPLAINS',							'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES'),
		('REQ_PLOT_HAS_FLOODPLAINS_PLAINS',						'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES');

-----------------------------------------------
-- Requirements Arguments
-----------------------------------------------		
		
INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,											Name,									Value)
		VALUES	
		('MAP_CONTAINS_SINAI',									'FeatureType',							'FEATURE_SINAI'),
		('MAP_CONTAINS_NAMIB',									'FeatureType',							'FEATURE_NAMIB'),
		('MAP_CONTAINS_LENCOIS_MARANHENSES',					'FeatureType',							'FEATURE_LENCOIS_MARANHENSES'),
		('MAP_CONTAINS_BARRINGER_CRATER',						'FeatureType',							'FEATURE_BARRINGER_CRATER'),
		('MAP_CONTAINS_BIOLUMINESCENT_BAY',						'FeatureType',							'FEATURE_BIOLUMINESCENT_BAY'),
		('MAP_CONTAINS_KAILASH',								'FeatureType',							'FEATURE_KAILASH'),
		('SINAI_REQUIRES_LAND_UNIT',							'UnitDomain',							'DOMAIN_LAND'),	
		('NAMIB_REQUIRES_LAND_UNIT',							'UnitDomain',							'DOMAIN_LAND'),	
		('SINAI_REQUIRES_RELIGIOUS_UNIT',						'Tag',									'CLASS_RELIGIOUS_SPREAD'),			
		('SINAI_REQUIRES_ADJACENT_UNIT',						'FeatureType',							'FEATURE_SINAI'),
		('NAMIB_REQUIRES_UNIT',									'FeatureType',							'FEATURE_NAMIB'),
		('PLAYER_HAS_LENCOIS_MARANHENSES',						'FeatureType',							'FEATURE_LENCOIS_MARANHENSES'),
		('PLAYER_HAS_BARRINGER_CRATER',							'FeatureType',							'FEATURE_BARRINGER_CRATER'),
		('PLAYER_HAS_BIOLUMINESCENT_BAY',						'FeatureType',							'FEATURE_BIOLUMINESCENT_BAY'),		
		('PLAYER_HAS_KAILASH',									'FeatureType',							'FEATURE_KAILASH'),				
		('REQ_PLOT_HAS_FLOODPLAINS',							'FeatureType',							'FEATURE_FLOODPLAINS'),
		('REQ_PLOT_HAS_FLOODPLAINS_PLAINS',						'FeatureType',							'FEATURE_FLOODPLAINS_PLAINS');
	-----------------------------------------------
-- Requirement Sets 
-----------------------------------------------		
		
INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
		VALUES	
		('SINAI_REQUIREMENTS',									'REQUIREMENTSET_TEST_ALL'),
		('NAMIB_REQUIREMENTS',									'REQUIREMENTSET_TEST_ALL'),
		('LENCOIS_MARANHENSES_REQUIREMENTS',					'REQUIREMENTSET_TEST_ALL'),
		('BARRINGER_CRATER_REQUIREMENTS',						'REQUIREMENTSET_TEST_ALL'),
		('BIOLUMINESCENT_BAY_REQUIREMENTS',						'REQUIREMENTSET_TEST_ALL'),		
		('KAILASH_REQUIREMENTS',								'REQUIREMENTSET_TEST_ALL'),		
		('SINAI_ADJACENT_UNITS_GRANT_ABILITY_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL'),
		('NAMIB_UNITS_GRANT_ABILITY_REQUIREMENTS',				'REQUIREMENTSET_TEST_ALL'),
		('REQSET_PLAYER_HAS_FEATURE_LENCOIS_MARANHENSES',		'REQUIREMENTSET_TEST_ALL'),
		('REQSET_PLAYER_HAS_FEATURE_BARRINGER_CRATER',			'REQUIREMENTSET_TEST_ALL'),
		('REQSET_PLAYER_HAS_FEATURE_BIOLUMINESCENT_BAY',		'REQUIREMENTSET_TEST_ALL'),
		('REQSET_PLAYER_HAS_FEATURE_KAILASH',					'REQUIREMENTSET_TEST_ALL'),
		('REQSET_PLOT_HAS_FLOODPLAINS',							'REQUIREMENTSET_TEST_ANY');
		
-----------------------------------------------
-- Requirement Sets Requirements
-----------------------------------------------		
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
		VALUES	
		('SINAI_REQUIREMENTS',									'MAP_CONTAINS_SINAI'),	
		('NAMIB_REQUIREMENTS',									'MAP_CONTAINS_NAMIB'),	
		('LENCOIS_MARANHENSES_REQUIREMENTS',					'MAP_CONTAINS_LENCOIS_MARANHENSES'),	
		('BARRINGER_CRATER_REQUIREMENTS',						'MAP_CONTAINS_BARRINGER_CRATER'),	
		('BIOLUMINESCENT_BAY_REQUIREMENTS',						'MAP_CONTAINS_BIOLUMINESCENT_BAY'),		
		('KAILASH_REQUIREMENTS',								'MAP_CONTAINS_KAILASH'),				
		('SINAI_ADJACENT_UNITS_GRANT_ABILITY_REQUIREMENTS',		'SINAI_REQUIRES_LAND_UNIT'),
		('SINAI_ADJACENT_UNITS_GRANT_ABILITY_REQUIREMENTS',		'SINAI_REQUIRES_ADJACENT_UNIT'),	
		('NAMIB_UNITS_GRANT_ABILITY_REQUIREMENTS',				'NAMIB_REQUIRES_LAND_UNIT'),
		('NAMIB_UNITS_GRANT_ABILITY_REQUIREMENTS',				'NAMIB_REQUIRES_UNIT'),			
		('SINAI_ADJACENT_UNITS_GRANT_ABILITY_REQUIREMENTS',		'SINAI_REQUIRES_RELIGIOUS_UNIT'),
		('REQSET_PLAYER_HAS_FEATURE_LENCOIS_MARANHENSES',		'PLAYER_HAS_LENCOIS_MARANHENSES'),
		('REQSET_PLAYER_HAS_FEATURE_BARRINGER_CRATER',			'PLAYER_HAS_BARRINGER_CRATER'),
		('REQSET_PLAYER_HAS_FEATURE_BIOLUMINESCENT_BAY',		'PLAYER_HAS_BIOLUMINESCENT_BAY'),		
		('REQSET_PLAYER_HAS_FEATURE_KAILASH',					'PLAYER_HAS_KAILASH'),	
		('REQSET_PLOT_HAS_FLOODPLAINS',							'REQ_PLOT_HAS_FLOODPLAINS'),
		('REQSET_PLOT_HAS_FLOODPLAINS',							'REQ_PLOT_HAS_FLOODPLAINS_PLAINS');
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT OR IGNORE INTO Modifiers
		(ModifierId,												ModifierType,													OwnerRequirementSetId,									SubjectRequirementSetId,									Permanent)
		VALUES	
		('SINAI_ADJACENT_UNITS_GRANT_ABILITY',						'MODIFIER_ALL_UNITS_GRANT_ABILITY',								'SINAI_REQUIREMENTS',									'SINAI_ADJACENT_UNITS_GRANT_ABILITY_REQUIREMENTS',			1),
		('NAMIB_UNITS_GRANT_ABILITY',								'MODIFIER_ALL_UNITS_GRANT_ABILITY',								'NAMIB_REQUIREMENTS',									'NAMIB_UNITS_GRANT_ABILITY_REQUIREMENTS',					1);
		
INSERT OR IGNORE INTO Modifiers
		(ModifierId,												ModifierType,													OwnerRequirementSetId,									SubjectRequirementSetId)
		VALUES	
		('MODIFIER_FEATURE_LENCOIS_MARANHENSES_ATTACH_PLAYERS',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'LENCOIS_MARANHENSES_REQUIREMENTS',						'REQSET_PLAYER_HAS_FEATURE_LENCOIS_MARANHENSES'),
		('MODIFIER_FEATURE_LENCOIS_MARANHENSES_FLOOD_CULTURE',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',							NULL,													'REQSET_PLOT_HAS_FLOODPLAINS'),
		('MODIFIER_FEATURE_BARRINGER_CRATER_ATTACH_PLAYERS',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'BARRINGER_CRATER_REQUIREMENTS',						'REQSET_PLAYER_HAS_FEATURE_BARRINGER_CRATER'),
		('MODIFIER_FEATURE_BARRINGER_CRATER_SPACE_PROJECT',			'MODIFIER_PLAYER_CITIES_ADJUST_SPACE_RACE_PROJECTS_PRODUCTION',	NULL,													NULL),
		('MODIFIER_FEATURE_BIOLUMINESCENT_BAY_ATTACH_PLAYERS',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'BIOLUMINESCENT_BAY_REQUIREMENTS',						'REQSET_PLAYER_HAS_FEATURE_BIOLUMINESCENT_BAY'),
		('MODIFIER_FEATURE_BIOLUMINESCENT_BAY_BOAT_SCIENCE',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',							NULL,													'PLOT_HAS_FISHINGBOATS_REQUIREMENTS'),
		('MODIFIER_FEATURE_KAILASH_ATTACH_PLAYERS',					'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'KAILASH_REQUIREMENTS',									'REQSET_PLAYER_HAS_FEATURE_KAILASH'	),
		('MODIFIER_FEATURE_KAILASH_CULTURE_CITIES',					'MODIFIER_PLAYER_RELIGION_ADD_PLAYER_BELIEF_YIELD',				NULL,													NULL);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,														Name,							Value)
		VALUES	
		('SINAI_ADJACENT_UNITS_GRANT_ABILITY',								'AbilityType',					'ABILITY_SINAI_BUFF'),
		('NAMIB_UNITS_GRANT_ABILITY',										'AbilityType',					'ABILITY_NAMIB_BUFF'),
		('MODIFIER_FEATURE_LENCOIS_MARANHENSES_ATTACH_PLAYERS',				'ModifierId',					'MODIFIER_FEATURE_LENCOIS_MARANHENSES_FLOOD_CULTURE'),
		('MODIFIER_FEATURE_LENCOIS_MARANHENSES_FLOOD_CULTURE',				'YieldType',					'YIELD_CULTURE'),
		('MODIFIER_FEATURE_LENCOIS_MARANHENSES_FLOOD_CULTURE',				'Amount',						1),
		('MODIFIER_FEATURE_BIOLUMINESCENT_BAY_ATTACH_PLAYERS',				'ModifierId',					'MODIFIER_FEATURE_BIOLUMINESCENT_BAY_BOAT_SCIENCE'),
		('MODIFIER_FEATURE_BIOLUMINESCENT_BAY_BOAT_SCIENCE',				'YieldType',					'YIELD_GOLD'),
		('MODIFIER_FEATURE_BIOLUMINESCENT_BAY_BOAT_SCIENCE',				'Amount',						1),
		('MODIFIER_FEATURE_BARRINGER_CRATER_ATTACH_PLAYERS',				'ModifierId',					'MODIFIER_FEATURE_BARRINGER_CRATER_SPACE_PROJECT'),
		('MODIFIER_FEATURE_BARRINGER_CRATER_SPACE_PROJECT',					'Amount',						-10),
		('MODIFIER_FEATURE_KAILASH_ATTACH_PLAYERS',							'ModifierId',					'MODIFIER_FEATURE_KAILASH_CULTURE_CITIES'	),
		('MODIFIER_FEATURE_KAILASH_CULTURE_CITIES',							'BeliefYieldType',				'BELIEF_YIELD_PER_FOREIGN_CITY'	),
		('MODIFIER_FEATURE_KAILASH_CULTURE_CITIES',							'YieldType',					'YIELD_CULTURE'	),
		('MODIFIER_FEATURE_KAILASH_CULTURE_CITIES',							'Amount',						1),
		('MODIFIER_FEATURE_KAILASH_CULTURE_CITIES',							'PerXItems',					1);
	
-----------------------------------------------
-- Game Modifiers
-----------------------------------------------


INSERT OR IGNORE INTO GameModifiers
		(ModifierId)
		VALUES	
		('SINAI_ADJACENT_UNITS_GRANT_ABILITY'),
		('NAMIB_UNITS_GRANT_ABILITY'),
		('MODIFIER_FEATURE_LENCOIS_MARANHENSES_ATTACH_PLAYERS'),
		('MODIFIER_FEATURE_BIOLUMINESCENT_BAY_ATTACH_PLAYERS'),
		('MODIFIER_FEATURE_KAILASH_ATTACH_PLAYERS');

-----------------------------------------------
-- Abilities
-----------------------------------------------

INSERT OR IGNORE INTO Types
		(Type,										Kind)
		VALUES	
		('ABILITY_SINAI_BUFF',						'KIND_ABILITY'),
		('ABILITY_NAMIB_BUFF',						'KIND_ABILITY');


INSERT OR IGNORE INTO TypeTags
		(Type,											Tag)
		VALUES	
		('ABILITY_SINAI_BUFF',							'CLASS_RELIGIOUS_ALL'),
		('ABILITY_NAMIB_BUFF',							'CLASS_RECON');
		
		
INSERT OR IGNORE INTO UnitAbilities
		(UnitAbilityType,								Name,									Description,									Inactive,					ShowFloatTextWhenEarned)
		VALUES	
		('ABILITY_SINAI_BUFF',							'LOC_ABILITY_SINAI_BUFF_NAME',			'LOC_ABILITY_SINAI_BUFF_DESCRIPTION',			1,							1),
		('ABILITY_NAMIB_BUFF',							'LOC_ABILITY_NAMIB_BUFF_NAME',			'LOC_ABILITY_NAMIB_BUFF_DESCRIPTION',			1,							1);

-----------------------------------------------
-- Ability Modifiers
-----------------------------------------------

INSERT OR IGNORE INTO Modifiers
		(ModifierId,											ModifierType)
		VALUES	
		('MOD_ABILITY_SINAI_BUFF',								'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH'),
		('MOD_ABILITY_NAMIB_BUFF',								'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT');									

INSERT INTO ModifierArguments
		(ModifierId,														Name,							Value)
		VALUES	
		('MOD_ABILITY_SINAI_BUFF',											'Amount',						15),
		('MOD_ABILITY_NAMIB_BUFF',											'Amount',						1);

INSERT OR IGNORE INTO UnitAbilityModifiers
		(UnitAbilityType,								ModifierId)
		VALUES	
		('ABILITY_SINAI_BUFF',							'MOD_ABILITY_SINAI_BUFF'), 
		('ABILITY_NAMIB_BUFF',							'MOD_ABILITY_NAMIB_BUFF');