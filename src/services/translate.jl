include("../AWSCorePrototypeServices.jl")
using .Services: translate

"""
    ListTextTranslationJobs

Gets a list of the batch translation jobs that you have submitted.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of results to return in each page. The default value is 100.",
  "NextToken": "The token to request the next page of results.",
  "Filter": "The parameters that specify which batch translation jobs to retrieve. Filters include job name, job status, and submission time. You can only set one filter at a time."
}

"""
ListTextTranslationJobs() = translate("ListTextTranslationJobs")
ListTextTranslationJobs(args) = translate("ListTextTranslationJobs", args)

"""
    StartTextTranslationJob

Starts an asynchronous batch translation job. Batch translation jobs can be used to translate large volumes of text across multiple documents at once. For more information, see async. Batch translation jobs can be described with the DescribeTextTranslationJob operation, listed with the ListTextTranslationJobs operation, and stopped with the StopTextTranslationJob operation.  Amazon Translate does not support batch translation of multiple source languages at once. 

Required Parameters:
{
  "InputDataConfig": "Specifies the format and S3 location of the input documents for the translation job.",
  "OutputDataConfig": "Specifies the S3 folder to which your job output will be saved. ",
  "DataAccessRoleArn": "The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that grants Amazon Translate read access to your input data. For more nformation, see identity-and-access-management.",
  "ClientToken": "The client token of the EC2 instance calling the request. This token is auto-generated when using the Amazon Translate SDK. Otherwise, use the DescribeInstances EC2 operation to retreive an instance's client token. For more information, see Client Tokens in the EC2 User Guide.",
  "SourceLanguageCode": "The language code of the input language. For a list of language codes, see what-is-languages. Amazon Translate does not automatically detect a source language during batch translation jobs.",
  "TargetLanguageCodes": "The language code of the output language."
}


Optional Parameters:
{
  "TerminologyNames": "The name of the terminology to use in the batch translation job. For a list of available terminologies, use the ListTerminologies operation.",
  "JobName": "The name of the batch translation job to be performed."
}

"""

StartTextTranslationJob(args) = translate("StartTextTranslationJob", args)
"""
    ListTerminologies

Provides a list of custom terminologies associated with your account.

Required Parameters:
{}


Optional Parameters:
{
  "MaxResults": "The maximum number of custom terminologies returned per list request.",
  "NextToken": "If the result of the request to ListTerminologies was truncated, include the NextToken to fetch the next group of custom terminologies. "
}

"""
ListTerminologies() = translate("ListTerminologies")
ListTerminologies(args) = translate("ListTerminologies", args)

"""
    DescribeTextTranslationJob

Gets the properties associated with an asycnhronous batch translation job including name, ID, status, source and target languages, input/output S3 buckets, and so on.

Required Parameters:
{
  "JobId": "The identifier that Amazon Translate generated for the job. The StartTextTranslationJob operation returns this identifier in its response."
}


Optional Parameters:
{}

"""

DescribeTextTranslationJob(args) = translate("DescribeTextTranslationJob", args)
"""
    GetTerminology

Retrieves a custom terminology.

Required Parameters:
{
  "TerminologyDataFormat": "The data format of the custom terminology being retrieved, either CSV or TMX.",
  "Name": "The name of the custom terminology being retrieved."
}


Optional Parameters:
{}

"""

GetTerminology(args) = translate("GetTerminology", args)
"""
    StopTextTranslationJob

Stops an asynchronous batch translation job that is in progress. If the job's state is IN_PROGRESS, the job will be marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state. Otherwise, the job is put into the STOPPED state. Asynchronous batch translation jobs are started with the StartTextTranslationJob operation. You can use the DescribeTextTranslationJob or ListTextTranslationJobs operations to get a batch translation job's JobId.

Required Parameters:
{
  "JobId": "The job ID of the job to be stopped."
}


Optional Parameters:
{}

"""

StopTextTranslationJob(args) = translate("StopTextTranslationJob", args)
"""
    TranslateText

Translates input text from the source language to the target language. For a list of available languages and language codes, see what-is-languages.

Required Parameters:
{
  "TargetLanguageCode": "The language code requested for the language of the target text. The language must be a language supported by Amazon Translate.",
  "SourceLanguageCode": "The language code for the language of the source text. The language must be a language supported by Amazon Translate. For a list of language codes, see what-is-languages. To have Amazon Translate determine the source language of your text, you can specify auto in the SourceLanguageCode field. If you specify auto, Amazon Translate will call Amazon Comprehend to determine the source language.",
  "Text": "The text to translate. The text string can be a maximum of 5,000 bytes long. Depending on your character set, this may be fewer than 5,000 characters."
}


Optional Parameters:
{
  "TerminologyNames": "The name of the terminology list file to be used in the TranslateText request. You can use 1 terminology list at most in a TranslateText request. Terminology lists can contain a maximum of 256 terms."
}

"""

TranslateText(args) = translate("TranslateText", args)
"""
    ImportTerminology

Creates or updates a custom terminology, depending on whether or not one already exists for the given terminology name. Importing a terminology with the same name as an existing one will merge the terminologies based on the chosen merge strategy. Currently, the only supported merge strategy is OVERWRITE, and so the imported terminology will overwrite an existing terminology of the same name. If you import a terminology that overwrites an existing one, the new terminology take up to 10 minutes to fully propagate and be available for use in a translation due to cache policies with the DataPlane service that performs the translations.

Required Parameters:
{
  "MergeStrategy": "The merge strategy of the custom terminology being imported. Currently, only the OVERWRITE merge strategy is supported. In this case, the imported terminology will overwrite an existing terminology of the same name.",
  "TerminologyData": "The terminology data for the custom terminology being imported.",
  "Name": "The name of the custom terminology being imported."
}


Optional Parameters:
{
  "Description": "The description of the custom terminology being imported.",
  "EncryptionKey": "The encryption key for the custom terminology being imported."
}

"""

ImportTerminology(args) = translate("ImportTerminology", args)
"""
    DeleteTerminology

A synchronous action that deletes a custom terminology.

Required Parameters:
{
  "Name": "The name of the custom terminology being deleted. "
}


Optional Parameters:
{}

"""

DeleteTerminology(args) = translate("DeleteTerminology", args)