include("../AWSCorePrototypeServices.jl")
using .Services: translate

"""
Gets a list of the batch translation jobs that you have submitted.
"""
ListTextTranslationJobs() = translate("ListTextTranslationJobs")

"""
Starts an asynchronous batch translation job. Batch translation jobs can be used to translate large volumes of text across multiple documents at once. For more information, see async. Batch translation jobs can be described with the DescribeTextTranslationJob operation, listed with the ListTextTranslationJobs operation, and stopped with the StopTextTranslationJob operation.  Amazon Translate does not support batch translation of multiple source languages at once. 

Required Parameters:
InputDataConfig, OutputDataConfig, DataAccessRoleArn, SourceLanguageCode, TargetLanguageCodes, ClientToken
"""
StartTextTranslationJob(args) = translate("StartTextTranslationJob", args)

"""
Provides a list of custom terminologies associated with your account.
"""
ListTerminologies() = translate("ListTerminologies")

"""
Gets the properties associated with an asycnhronous batch translation job including name, ID, status, source and target languages, input/output S3 buckets, and so on.

Required Parameters:
JobId
"""
DescribeTextTranslationJob(args) = translate("DescribeTextTranslationJob", args)

"""
Retrieves a custom terminology.

Required Parameters:
Name, TerminologyDataFormat
"""
GetTerminology(args) = translate("GetTerminology", args)

"""
Stops an asynchronous batch translation job that is in progress. If the job's state is IN_PROGRESS, the job will be marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state. Otherwise, the job is put into the STOPPED state. Asynchronous batch translation jobs are started with the StartTextTranslationJob operation. You can use the DescribeTextTranslationJob or ListTextTranslationJobs operations to get a batch translation job's JobId.

Required Parameters:
JobId
"""
StopTextTranslationJob(args) = translate("StopTextTranslationJob", args)

"""
Translates input text from the source language to the target language. For a list of available languages and language codes, see what-is-languages.

Required Parameters:
Text, SourceLanguageCode, TargetLanguageCode
"""
TranslateText(args) = translate("TranslateText", args)

"""
Creates or updates a custom terminology, depending on whether or not one already exists for the given terminology name. Importing a terminology with the same name as an existing one will merge the terminologies based on the chosen merge strategy. Currently, the only supported merge strategy is OVERWRITE, and so the imported terminology will overwrite an existing terminology of the same name. If you import a terminology that overwrites an existing one, the new terminology take up to 10 minutes to fully propagate and be available for use in a translation due to cache policies with the DataPlane service that performs the translations.

Required Parameters:
Name, MergeStrategy, TerminologyData
"""
ImportTerminology(args) = translate("ImportTerminology", args)

"""
A synchronous action that deletes a custom terminology.

Required Parameters:
Name
"""
DeleteTerminology(args) = translate("DeleteTerminology", args)
