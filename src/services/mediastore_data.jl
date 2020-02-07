include("../AWSCorePrototypeServices.jl")
using .Services: mediastore_data

"""
Deletes an object at the specified path.
"""
DeleteObject(Path) = mediastore_data("DELETE", "/$Path+")
DeleteObject(Path, args) = mediastore_data("DELETE", "/$Path+", args)
DeleteObject(a...; b...) = DeleteObject(a..., b)

"""
Provides a list of metadata entries about folders and objects in the specified folder.
"""
ListItems() = mediastore_data("GET", "/")
ListItems(args) = mediastore_data("GET", "/", args)
ListItems(a...; b...) = ListItems(a..., b)

"""
Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.
"""
PutObject(Body, Path) = mediastore_data("PUT", "/$Path+")
PutObject(Body, Path, args) = mediastore_data("PUT", "/$Path+", args)
PutObject(a...; b...) = PutObject(a..., b)

"""
Gets the headers for an object at the specified path.
"""
DescribeObject(Path) = mediastore_data("HEAD", "/$Path+")
DescribeObject(Path, args) = mediastore_data("HEAD", "/$Path+", args)
DescribeObject(a...; b...) = DescribeObject(a..., b)

"""
Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
"""
GetObject(Path) = mediastore_data("GET", "/$Path+")
GetObject(Path, args) = mediastore_data("GET", "/$Path+", args)
GetObject(a...; b...) = GetObject(a..., b)
