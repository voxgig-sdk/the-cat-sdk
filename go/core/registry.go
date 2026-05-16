package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewBreedEntityFunc func(client *TheCatSDK, entopts map[string]any) TheCatEntity

var NewSearchEntityFunc func(client *TheCatSDK, entopts map[string]any) TheCatEntity

