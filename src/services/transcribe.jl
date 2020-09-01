include("../AWSCorePrototypeServices.jl")
using .Services: transcribe

"""
    DeleteMedicalVocabulary()

Deletes a vocabulary from Amazon Transcribe Medical.

Required Parameters
{
  "VocabularyName": "The name of the vocabulary that you want to delete."
}
"""
DeleteMedicalVocabulary(args) = transcribe("DeleteMedicalVocabulary", args)

"""
    GetTranscriptionJob()

Returns information about a transcription job. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished and you can find the results at the location specified in the TranscriptFileUri field. If you enable content redaction, the redacted transcript appears in RedactedTranscriptFileUri.

Required Parameters
{
  "TranscriptionJobName": "The name of the job."
}
"""
GetTranscriptionJob(args) = transcribe("GetTranscriptionJob", args)

"""
    GetVocabularyFilter()

Returns information about a vocabulary filter.

Required Parameters
{
  "VocabularyFilterName": "The name of the vocabulary filter for which to return information."
}
"""
GetVocabularyFilter(args) = transcribe("GetVocabularyFilter", args)

"""
    UpdateVocabularyFilter()

Updates a vocabulary filter with a new list of filtered words.

Required Parameters
{
  "VocabularyFilterName": "The name of the vocabulary filter to update. If you try to update a vocabulary filter with the same name as another vocabulary filter, you get a ConflictException error."
}

Optional Parameters
{
  "Words": "The words to use in the vocabulary filter. Only use characters from the character set defined for custom vocabularies. For a list of character sets, see Character Sets for Custom Vocabularies. If you provide a list of words in the Words parameter, you can't use the VocabularyFilterFileUri parameter.",
  "VocabularyFilterFileUri": "The Amazon S3 location of a text file used as input to create the vocabulary filter. Only use characters from the character set defined for custom vocabularies. For a list of character sets, see Character Sets for Custom Vocabularies. The specified file must be less than 50 KB of UTF-8 characters. If you provide the location of a list of words in the VocabularyFilterFileUri parameter, you can't use the Words parameter."
}
"""
UpdateVocabularyFilter(args) = transcribe("UpdateVocabularyFilter", args)

"""
    CreateMedicalVocabulary()

Creates a new custom vocabulary that you can use to change how Amazon Transcribe Medical transcribes your audio file.

Required Parameters
{
  "VocabularyFileUri": "The location in Amazon S3 of the text file you use to define your custom vocabulary. The URI must be in the same AWS Region as the resource that you're calling. Enter information about your VocabularyFileUri in the following format:   https://s3.&lt;aws-region&gt;.amazonaws.com/&lt;bucket-name&gt;/&lt;keyprefix&gt;/&lt;objectkey&gt;   The following is an example URI for a vocabulary file that is stored in Amazon S3:  https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt  For more information about Amazon S3 object names, see Object Keys in the Amazon S3 Developer Guide. For more information about custom vocabularies, see Medical Custom Vocabularies.",
  "LanguageCode": "The language code for the language used for the entries in your custom vocabulary. The language code of your custom vocabulary must match the language code of your transcription job. US English (en-US) is the only language code available for Amazon Transcribe Medical.",
  "VocabularyName": "The name of the custom vocabulary. This case-sensitive name must be unique within an AWS account. If you try to create a vocabulary with the same name as a previous vocabulary, you get a ConflictException error."
}
"""
CreateMedicalVocabulary(args) = transcribe("CreateMedicalVocabulary", args)

"""
    CreateLanguageModel()

Creates a new custom language model. Use Amazon S3 prefixes to provide the location of your input files. The time it takes to create your model depends on the size of your training data.

Required Parameters
{
  "InputDataConfig": "Contains the data access role and the Amazon S3 prefixes to read the required input files to create a custom language model.",
  "ModelName": "The name you choose for your custom language model when you create it.",
  "LanguageCode": "The language of the input text you're using to train your custom language model.",
  "BaseModelName": "The Amazon Transcribe standard language model, or base model used to create your custom language model. If you want to use your custom language model to transcribe audio with a sample rate of 16 kHz or greater, choose Wideband. If you want to use your custom language model to transcribe audio with a sample rate that is less than 16 kHz, choose Narrowband."
}
"""
CreateLanguageModel(args) = transcribe("CreateLanguageModel", args)

"""
    DeleteVocabularyFilter()

Removes a vocabulary filter.

Required Parameters
{
  "VocabularyFilterName": "The name of the vocabulary filter to remove."
}
"""
DeleteVocabularyFilter(args) = transcribe("DeleteVocabularyFilter", args)

"""
    DescribeLanguageModel()

Gets information about a single custom language model. Use this information to see details about the language model in your AWS account. You can also see whether the base language model used to create your custom language model has been updated. If Amazon Transcribe has updated the base model, you can create a new custom language model using the updated base model. If the language model wasn't created, you can use this operation to understand why Amazon Transcribe couldn't create it. 

Required Parameters
{
  "ModelName": "The name of the custom language model you submit to get more information."
}
"""
DescribeLanguageModel(args) = transcribe("DescribeLanguageModel", args)

"""
    CreateVocabulary()

Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file. 

Required Parameters
{
  "LanguageCode": "The language code of the vocabulary entries.",
  "VocabularyName": "The name of the vocabulary. The name must be unique within an AWS account. The name is case sensitive. If you try to create a vocabulary with the same name as a previous vocabulary you will receive a ConflictException error."
}

Optional Parameters
{
  "Phrases": "An array of strings that contains the vocabulary entries. ",
  "VocabularyFileUri": "The S3 location of the text file that contains the definition of the custom vocabulary. The URI must be in the same region as the API endpoint that you are calling. The general form is  For more information about S3 object names, see Object Keys in the Amazon S3 Developer Guide. For more information about custom vocabularies, see Custom Vocabularies."
}
"""
CreateVocabulary(args) = transcribe("CreateVocabulary", args)

"""
    ListTranscriptionJobs()

Lists transcription jobs with the specified status.

Optional Parameters
{
  "MaxResults": "The maximum number of jobs to return in the response. If there are fewer results in the list, this response contains only the actual results.",
  "NextToken": "If the result of the previous request to ListTranscriptionJobs was truncated, include the NextToken to fetch the next set of jobs.",
  "Status": "When specified, returns only transcription jobs with the specified status. Jobs are ordered by creation date, with the newest jobs returned first. If you don’t specify a status, Amazon Transcribe returns all transcription jobs ordered by creation date. ",
  "JobNameContains": "When specified, the jobs returned in the list are limited to jobs whose name contains the specified string."
}
"""

ListTranscriptionJobs() = transcribe("ListTranscriptionJobs")
ListTranscriptionJobs(args) = transcribe("ListTranscriptionJobs", args)

"""
    GetMedicalVocabulary()

Retrieves information about a medical vocabulary.

Required Parameters
{
  "VocabularyName": "The name of the vocabulary that you want information about. The value is case sensitive. "
}
"""
GetMedicalVocabulary(args) = transcribe("GetMedicalVocabulary", args)

"""
    ListMedicalTranscriptionJobs()

Lists medical transcription jobs with a specified status or substring that matches their names.

Optional Parameters
{
  "MaxResults": "The maximum number of medical transcription jobs to return in the response. IF there are fewer results in the list, this response contains only the actual results.",
  "NextToken": "If you a receive a truncated result in the previous request of ListMedicalTranscriptionJobs, include NextToken to fetch the next set of jobs.",
  "Status": "When specified, returns only medical transcription jobs with the specified status. Jobs are ordered by creation date, with the newest jobs returned first. If you don't specify a status, Amazon Transcribe Medical returns all transcription jobs ordered by creation date.",
  "JobNameContains": "When specified, the jobs returned in the list are limited to jobs whose name contains the specified string."
}
"""

ListMedicalTranscriptionJobs() = transcribe("ListMedicalTranscriptionJobs")
ListMedicalTranscriptionJobs(args) = transcribe("ListMedicalTranscriptionJobs", args)

"""
    UpdateVocabulary()

Updates an existing vocabulary with new values. The UpdateVocabulary operation overwrites all of the existing information with the values that you provide in the request. 

Required Parameters
{
  "LanguageCode": "The language code of the vocabulary entries.",
  "VocabularyName": "The name of the vocabulary to update. The name is case sensitive. If you try to update a vocabulary with the same name as a previous vocabulary you will receive a ConflictException error."
}

Optional Parameters
{
  "Phrases": "An array of strings containing the vocabulary entries.",
  "VocabularyFileUri": "The S3 location of the text file that contains the definition of the custom vocabulary. The URI must be in the same region as the API endpoint that you are calling. The general form is  For example: For more information about S3 object names, see Object Keys in the Amazon S3 Developer Guide. For more information about custom vocabularies, see Custom Vocabularies."
}
"""
UpdateVocabulary(args) = transcribe("UpdateVocabulary", args)

"""
    ListVocabularyFilters()

Gets information about vocabulary filters.

Optional Parameters
{
  "MaxResults": "The maximum number of filters to return in the response. If there are fewer results in the list, this response contains only the actual results.",
  "NameContains": "Filters the response so that it only contains vocabulary filters whose name contains the specified string.",
  "NextToken": "If the result of the previous request to ListVocabularyFilters was truncated, include the NextToken to fetch the next set of collections."
}
"""

ListVocabularyFilters() = transcribe("ListVocabularyFilters")
ListVocabularyFilters(args) = transcribe("ListVocabularyFilters", args)

"""
    GetMedicalTranscriptionJob()

Returns information about a transcription job from Amazon Transcribe Medical. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished. You find the results of the completed job in the TranscriptFileUri field.

Required Parameters
{
  "MedicalTranscriptionJobName": "The name of the medical transcription job."
}
"""
GetMedicalTranscriptionJob(args) = transcribe("GetMedicalTranscriptionJob", args)

"""
    StartTranscriptionJob()

Starts an asynchronous job to transcribe speech to text. 

Required Parameters
{
  "Media": "An object that describes the input media for a transcription job.",
  "LanguageCode": "The language code for the language used in the input media file.",
  "TranscriptionJobName": "The name of the job. You can't use the strings \".\" or \"..\" by themselves as the job name. The name must also be unique within an AWS account. If you try to create a transcription job with the same name as a previous transcription job, you get a ConflictException error."
}

Optional Parameters
{
  "MediaSampleRateHertz": "The sample rate, in Hertz, of the audio track in the input media file.  If you do not specify the media sample rate, Amazon Transcribe determines the sample rate. If you specify the sample rate, it must match the sample rate detected by Amazon Transcribe. In most cases, you should leave the MediaSampleRateHertz field blank and let Amazon Transcribe determine the sample rate.",
  "OutputBucketName": "The location where the transcription is stored. If you set the OutputBucketName, Amazon Transcribe puts the transcript in the specified S3 bucket. When you call the GetTranscriptionJob operation, the operation returns this location in the TranscriptFileUri field. If you enable content redaction, the redacted transcript appears in RedactedTranscriptFileUri. If you enable content redaction and choose to output an unredacted transcript, that transcript's location still appears in the TranscriptFileUri. The S3 bucket must have permissions that allow Amazon Transcribe to put files in the bucket. For more information, see Permissions Required for IAM User Roles. You can specify an AWS Key Management Service (KMS) key to encrypt the output of your transcription using the OutputEncryptionKMSKeyId parameter. If you don't specify a KMS key, Amazon Transcribe uses the default Amazon S3 key for server-side encryption of transcripts that are placed in your S3 bucket. If you don't set the OutputBucketName, Amazon Transcribe generates a pre-signed URL, a shareable URL that provides secure access to your transcription, and returns it in the TranscriptFileUri field. Use this URL to download the transcription.",
  "OutputEncryptionKMSKeyId": "The Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) key used to encrypt the output of the transcription job. The user calling the StartTranscriptionJob operation must have permission to use the specified KMS key. You can use either of the following to identify a KMS key in the current account:   KMS Key ID: \"1234abcd-12ab-34cd-56ef-1234567890ab\"   KMS Key Alias: \"alias/ExampleAlias\"   You can use either of the following to identify a KMS key in the current account or another account:   Amazon Resource Name (ARN) of a KMS Key: \"arn:aws:kms:region:account ID:key/1234abcd-12ab-34cd-56ef-1234567890ab\"   ARN of a KMS Key Alias: \"arn:aws:kms:region:account ID:alias/ExampleAlias\"   If you don't specify an encryption key, the output of the transcription job is encrypted with the default Amazon S3 key (SSE-S3).  If you specify a KMS key to encrypt your output, you must also specify an output location in the OutputBucketName parameter.",
  "ContentRedaction": "An object that contains the request parameters for content redaction.",
  "JobExecutionSettings": "Provides information about how a transcription job is executed. Use this field to indicate that the job can be queued for deferred execution if the concurrency limit is reached and there are no slots available to immediately run the job.",
  "ModelSettings": "Choose the custom language model you use for your transcription job in this parameter.",
  "MediaFormat": "The format of the input media file.",
  "Settings": "A Settings object that provides optional settings for a transcription job."
}
"""
StartTranscriptionJob(args) = transcribe("StartTranscriptionJob", args)

"""
    DeleteVocabulary()

Deletes a vocabulary from Amazon Transcribe. 

Required Parameters
{
  "VocabularyName": "The name of the vocabulary to delete. "
}
"""
DeleteVocabulary(args) = transcribe("DeleteVocabulary", args)

"""
    StartMedicalTranscriptionJob()

Starts a batch job to transcribe medical speech to text.

Required Parameters
{
  "OutputBucketName": "The Amazon S3 location where the transcription is stored. You must set OutputBucketName for Amazon Transcribe Medical to store the transcription results. Your transcript appears in the S3 location you specify. When you call the GetMedicalTranscriptionJob, the operation returns this location in the TranscriptFileUri field. The S3 bucket must have permissions that allow Amazon Transcribe Medical to put files in the bucket. For more information, see Permissions Required for IAM User Roles. You can specify an AWS Key Management Service (KMS) key to encrypt the output of your transcription using the OutputEncryptionKMSKeyId parameter. If you don't specify a KMS key, Amazon Transcribe Medical uses the default Amazon S3 key for server-side encryption of transcripts that are placed in your S3 bucket.",
  "Specialty": "The medical specialty of any clinician speaking in the input media.",
  "MedicalTranscriptionJobName": "The name of the medical transcription job. You can't use the strings \".\" or \"..\" by themselves as the job name. The name must also be unique within an AWS account. If you try to create a medical transcription job with the same name as a previous medical transcription job, you get a ConflictException error.",
  "Type": "The type of speech in the input audio. CONVERSATION refers to conversations between two or more speakers, e.g., a conversations between doctors and patients. DICTATION refers to single-speaker dictated speech, e.g., for clinical notes.",
  "Media": "",
  "LanguageCode": "The language code for the language spoken in the input media file. US English (en-US) is the valid value for medical transcription jobs. Any other value you enter for language code results in a BadRequestException error."
}

Optional Parameters
{
  "MediaSampleRateHertz": "The sample rate, in Hertz, of the audio track in the input media file. If you do not specify the media sample rate, Amazon Transcribe Medical determines the sample rate. If you specify the sample rate, it must match the rate detected by Amazon Transcribe Medical. In most cases, you should leave the MediaSampleRateHertz field blank and let Amazon Transcribe Medical determine the sample rate.",
  "OutputEncryptionKMSKeyId": "The Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) key used to encrypt the output of the transcription job. The user calling the StartMedicalTranscriptionJob operation must have permission to use the specified KMS key. You use either of the following to identify a KMS key in the current account:   KMS Key ID: \"1234abcd-12ab-34cd-56ef-1234567890ab\"   KMS Key Alias: \"alias/ExampleAlias\"   You can use either of the following to identify a KMS key in the current account or another account:   Amazon Resource Name (ARN) of a KMS key in the current account or another account: \"arn:aws:kms:region:account ID:key/1234abcd-12ab-34cd-56ef-1234567890ab\"   ARN of a KMS Key Alias: \"arn:aws:kms:region:account ID:alias/ExampleAlias\"   If you don't specify an encryption key, the output of the medical transcription job is encrypted with the default Amazon S3 key (SSE-S3). If you specify a KMS key to encrypt your output, you must also specify an output location in the OutputBucketName parameter.",
  "MediaFormat": "The audio format of the input media file.",
  "Settings": "Optional settings for the medical transcription job."
}
"""
StartMedicalTranscriptionJob(args) = transcribe("StartMedicalTranscriptionJob", args)

"""
    DeleteTranscriptionJob()

Deletes a previously submitted transcription job along with any other generated results such as the transcription, models, and so on.

Required Parameters
{
  "TranscriptionJobName": "The name of the transcription job to be deleted."
}
"""
DeleteTranscriptionJob(args) = transcribe("DeleteTranscriptionJob", args)

"""
    ListVocabularies()

Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.

Optional Parameters
{
  "MaxResults": "The maximum number of vocabularies to return in the response. If there are fewer results in the list, this response contains only the actual results.",
  "NameContains": "When specified, the vocabularies returned in the list are limited to vocabularies whose name contains the specified string. The search is not case sensitive, ListVocabularies returns both \"vocabularyname\" and \"VocabularyName\" in the response list.",
  "NextToken": "If the result of the previous request to ListVocabularies was truncated, include the NextToken to fetch the next set of jobs.",
  "StateEquals": "When specified, only returns vocabularies with the VocabularyState field equal to the specified state."
}
"""

ListVocabularies() = transcribe("ListVocabularies")
ListVocabularies(args) = transcribe("ListVocabularies", args)

"""
    DeleteLanguageModel()

Deletes a custom language model using its name.

Required Parameters
{
  "ModelName": "The name of the model you're choosing to delete."
}
"""
DeleteLanguageModel(args) = transcribe("DeleteLanguageModel", args)

"""
    UpdateMedicalVocabulary()

Updates a vocabulary with new values that you provide in a different text file from the one you used to create the vocabulary. The UpdateMedicalVocabulary operation overwrites all of the existing information with the values that you provide in the request.

Required Parameters
{
  "LanguageCode": "The language code of the language used for the entries in the updated vocabulary. US English (en-US) is the only valid language code in Amazon Transcribe Medical.",
  "VocabularyName": "The name of the vocabulary to update. The name is case sensitive. If you try to update a vocabulary with the same name as a vocabulary you've already made, you get a ConflictException error."
}

Optional Parameters
{
  "VocabularyFileUri": "The location in Amazon S3 of the text file that contains the you use for your custom vocabulary. The URI must be in the same AWS Region as the resource that you are calling. The following is the format for a URI:   https://s3.&lt;aws-region&gt;.amazonaws.com/&lt;bucket-name&gt;/&lt;keyprefix&gt;/&lt;objectkey&gt;   For example:  https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt  For more information about Amazon S3 object names, see Object Keys in the Amazon S3 Developer Guide. For more information about custom vocabularies in Amazon Transcribe Medical, see Medical Custom Vocabularies."
}
"""
UpdateMedicalVocabulary(args) = transcribe("UpdateMedicalVocabulary", args)

"""
    ListMedicalVocabularies()

Returns a list of vocabularies that match the specified criteria. If you don't enter a value in any of the request parameters, returns the entire list of vocabularies.

Optional Parameters
{
  "MaxResults": "The maximum number of vocabularies to return in the response.",
  "NameContains": "Returns vocabularies whose names contain the specified string. The search is not case sensitive. ListMedicalVocabularies returns both \"vocabularyname\" and \"VocabularyName\".",
  "NextToken": "If the result of your previous request to ListMedicalVocabularies was truncated, include the NextToken to fetch the next set of vocabularies.",
  "StateEquals": "When specified, returns only vocabularies with the VocabularyState equal to the specified vocabulary state. Use this field to see which vocabularies are ready for your medical transcription jobs."
}
"""

ListMedicalVocabularies() = transcribe("ListMedicalVocabularies")
ListMedicalVocabularies(args) = transcribe("ListMedicalVocabularies", args)

"""
    CreateVocabularyFilter()

Creates a new vocabulary filter that you can use to filter words, such as profane words, from the output of a transcription job.

Required Parameters
{
  "VocabularyFilterName": "The vocabulary filter name. The name must be unique within the account that contains it. If you try to create a vocabulary filter with the same name as another vocabulary filter, you get a ConflictException error.",
  "LanguageCode": "The language code of the words in the vocabulary filter. All words in the filter must be in the same language. The vocabulary filter can only be used with transcription jobs in the specified language."
}

Optional Parameters
{
  "Words": "The words to use in the vocabulary filter. Only use characters from the character set defined for custom vocabularies. For a list of character sets, see Character Sets for Custom Vocabularies. If you provide a list of words in the Words parameter, you can't use the VocabularyFilterFileUri parameter.",
  "VocabularyFilterFileUri": "The Amazon S3 location of a text file used as input to create the vocabulary filter. Only use characters from the character set defined for custom vocabularies. For a list of character sets, see Character Sets for Custom Vocabularies. The specified file must be less than 50 KB of UTF-8 characters. If you provide the location of a list of words in the VocabularyFilterFileUri parameter, you can't use the Words parameter."
}
"""
CreateVocabularyFilter(args) = transcribe("CreateVocabularyFilter", args)

"""
    DeleteMedicalTranscriptionJob()

Deletes a transcription job generated by Amazon Transcribe Medical and any related information.

Required Parameters
{
  "MedicalTranscriptionJobName": "The name you provide to the DeleteMedicalTranscriptionJob object to delete a transcription job."
}
"""
DeleteMedicalTranscriptionJob(args) = transcribe("DeleteMedicalTranscriptionJob", args)

"""
    GetVocabulary()

Gets information about a vocabulary. 

Required Parameters
{
  "VocabularyName": "The name of the vocabulary to return information about. The name is case sensitive."
}
"""
GetVocabulary(args) = transcribe("GetVocabulary", args)

"""
    ListLanguageModels()

Provides more information about the custom language models you've created. You can use the information in this list to find a specific custom language model. You can then use the operation to get more information about it.

Optional Parameters
{
  "NameContains": "When specified, the custom language model names returned contain the substring you've specified.",
  "MaxResults": "The maximum number of language models to return in the response. If there are fewer results in the list, the response contains only the actual results.",
  "StatusEquals": "When specified, returns only custom language models with the specified status. Language models are ordered by creation date, with the newest models first. If you don't specify a status, Amazon Transcribe returns all custom language models ordered by date.",
  "NextToken": "When included, fetches the next set of jobs if the result of the previous request was truncated."
}
"""

ListLanguageModels() = transcribe("ListLanguageModels")
ListLanguageModels(args) = transcribe("ListLanguageModels", args)
