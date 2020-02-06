include("../AWSCorePrototypeServices.jl")
using .Services: mediastore_data

"""
Deletes an object at the specified path.

Required Parameters:
Path
"""
DeleteObject(args) = mediastore_data("DELETE", "/{Path+}", args)

"""
Provides a list of metadata entries about folders and objects in the specified folder.
"""
ListItems() = mediastore_data("GET", "/")

"""
Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.

Required Parameters:
Body, Path
"""
PutObject(args) = mediastore_data("PUT", "/{Path+}", args)

"""
Gets the headers for an object at the specified path.

Required Parameters:
Path
"""
DescribeObject(args) = mediastore_data("HEAD", "/{Path+}", args)

"""
Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.

Required Parameters:
Path
"""
GetObject(args) = mediastore_data("GET", "/{Path+}", args)
