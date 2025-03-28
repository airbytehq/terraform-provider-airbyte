// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

type IcebergCatalogConfig struct {
	GlueCatalog                                                  *GlueCatalog                                                  `queryParam:"inline" tfsdk:"glue_catalog" tfPlanOnly:"true"`
	HadoopCatalogUseHierarchicalFileSystemsAsSameAsStorageConfig *HadoopCatalogUseHierarchicalFileSystemsAsSameAsStorageConfig `queryParam:"inline" tfsdk:"hadoop_catalog_use_hierarchical_file_systems_as_same_as_storage_config" tfPlanOnly:"true"`
	HiveCatalogUseApacheHiveMetaStore                            *HiveCatalogUseApacheHiveMetaStore                            `queryParam:"inline" tfsdk:"hive_catalog_use_apache_hive_meta_store" tfPlanOnly:"true"`
	JdbcCatalogUseRelationalDatabase                             *JdbcCatalogUseRelationalDatabase                             `queryParam:"inline" tfsdk:"jdbc_catalog_use_relational_database" tfPlanOnly:"true"`
	RESTCatalog                                                  *RESTCatalog                                                  `queryParam:"inline" tfsdk:"rest_catalog" tfPlanOnly:"true"`
}
