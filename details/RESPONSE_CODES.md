# Response codes

Error messages and standard responses, like after creation of a resource, contain both a `code` and a `message` part to inform about the outcome of an operation. The `code` part can be any of the following:

- `INVALID_CREDENTIALS`: Indicates the provided credentials are not valid.
- `PERMISSION_DENIED`: Indicates the provided credentials are valid, but the requested resource requires other permissions.
- `RESOURCE_ALREADY_EXISTS`: Indicates a resource does already exist.
- `RESOURCE_CREATED`: Indicates a resource has been created.
- `RESOURCE_DELETION_STARTED`: Indicates a resource will be deleted.
- `RESOURCE_DELETED`: Indicates a resource has been deleted.
- `RESOURCE_DELETION_STARTED`: Deleting the resource is in progress.
- `RESOURCE_NOT_FOUND`: Indicates a resource could not be found.
- `RESOURCE_UPDATED`: Indicates a resource has been updated.
- `IMMUTABLE_ATTRIBUTE`: Indicates the provided data structure contains fields you are not allowed to edit.
- `UNKNOWN_ATTRIBUTE`: Indicates the provided data structure contains unexpected fields.
- `INVALID_INPUT`: Indicates that the user provided input that is not valid in some way.
- `UNKNOWN_ERROR`: Indicates something went wrong in unpredictable ways.
