SELECT external_id AS externalId,
       IF(parent_external_id = ''
          OR parent_external_id IS NULL, '', parent_external_id) AS parentExternalId,
       name AS name,
       to_metadata(metadata) AS metadata,
       description AS description,
       'from RAW' AS source,
       Dataset_id('src:001:sap:ds') AS dataSetId
FROM `src:001:sap:db`.assets
