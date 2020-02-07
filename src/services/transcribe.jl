include("../AWSCorePrototypeServices.jl")
using .Services: transcribe

"""
Returns information about a transcription job. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished and you can find the results at the location specified in the TranscriptionFileUri field.

Required Parameters:
TranscriptionJobName
"""
GetTranscriptionJob(args) = transcribe("GetTranscriptionJob", args)

"""
Returns information about a vocabulary filter.

Required Parameters:
VocabularyFilterName
"""
GetVocabularyFilter(args) = transcribe("GetVocabularyFilter", args)

"""
Updates a vocabulary filter with a new list of filtered words.

Required Parameters:
VocabularyFilterName
"""
UpdateVocabularyFilter(args) = transcribe("UpdateVocabularyFilter", args)

"""
Removes a vocabulary filter.

Required Parameters:
VocabularyFilterName
"""
DeleteVocabularyFilter(args) = transcribe("DeleteVocabularyFilter", args)

"""
Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file. 

Required Parameters:
VocabularyName, LanguageCode
"""
CreateVocabulary(args) = transcribe("CreateVocabulary", args)

"""
Lists transcription jobs with the specified status.
"""
ListTranscriptionJobs() = transcribe("ListTranscriptionJobs")

"""
Updates an existing vocabulary with new values. The UpdateVocabulary operation overwrites all of the existing information with the values that you provide in the request. 

Required Parameters:
VocabularyName, LanguageCode
"""
UpdateVocabulary(args) = transcribe("UpdateVocabulary", args)

"""
Gets information about vocabulary filters.
"""
ListVocabularyFilters() = transcribe("ListVocabularyFilters")

"""
Starts an asynchronous job to transcribe speech to text. 

Required Parameters:
TranscriptionJobName, LanguageCode, Media
"""
StartTranscriptionJob(args) = transcribe("StartTranscriptionJob", args)

"""
Deletes a vocabulary from Amazon Transcribe. 

Required Parameters:
VocabularyName
"""
DeleteVocabulary(args) = transcribe("DeleteVocabulary", args)

"""
Deletes a previously submitted transcription job along with any other generated results such as the transcription, models, and so on.

Required Parameters:
TranscriptionJobName
"""
DeleteTranscriptionJob(args) = transcribe("DeleteTranscriptionJob", args)

"""
Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
"""
ListVocabularies() = transcribe("ListVocabularies")

"""
Creates a new vocabulary filter that you can use to filter words, such as profane words, from the output of a transcription job.

Required Parameters:
VocabularyFilterName, LanguageCode
"""
CreateVocabularyFilter(args) = transcribe("CreateVocabularyFilter", args)

"""
Gets information about a vocabulary. 

Required Parameters:
VocabularyName
"""
GetVocabulary(args) = transcribe("GetVocabulary", args)
