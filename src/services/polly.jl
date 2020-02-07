include("../AWSCorePrototypeServices.jl")
using .Services: polly

"""
Retrieves a specific SpeechSynthesisTask object based on its TaskID. This object contains information about the given speech synthesis task, including the status of the task, and a link to the S3 bucket containing the output of the task.
"""
GetSpeechSynthesisTask(TaskId) = polly("GET", "/v1/synthesisTasks/$TaskId")
GetSpeechSynthesisTask(TaskId, args) = polly("GET", "/v1/synthesisTasks/$TaskId", args)
GetSpeechSynthesisTask(a...; b...) = GetSpeechSynthesisTask(a..., b)

"""
Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input must be valid, well-formed SSML. Some alphabets might not be available with all the voices (for example, Cyrillic might not be read at all by English voices) unless phoneme mapping is used. For more information, see How it Works.
"""
SynthesizeSpeech(OutputFormat, Text, VoiceId) = polly("POST", "/v1/speech")
SynthesizeSpeech(OutputFormat, Text, VoiceId, args) = polly("POST", "/v1/speech", args)
SynthesizeSpeech(a...; b...) = SynthesizeSpeech(a..., b)

"""
Deletes the specified pronunciation lexicon stored in an AWS Region. A lexicon which has been deleted is not available for speech synthesis, nor is it possible to retrieve it using either the GetLexicon or ListLexicon APIs. For more information, see Managing Lexicons.
"""
DeleteLexicon(Name) = polly("DELETE", "/v1/lexicons/$LexiconName")
DeleteLexicon(Name, args) = polly("DELETE", "/v1/lexicons/$LexiconName", args)
DeleteLexicon(a...; b...) = DeleteLexicon(a..., b)

"""
Returns the list of voices that are available for use when requesting speech synthesis. Each voice speaks a specified language, is either male or female, and is identified by an ID, which is the ASCII version of the voice name.  When synthesizing speech ( SynthesizeSpeech ), you provide the voice ID for the voice you want from the list of voices returned by DescribeVoices. For example, you want your news reader application to read news in a specific language, but giving a user the option to choose the voice. Using the DescribeVoices operation you can provide the user with a list of available voices to select from.  You can optionally specify a language code to filter the available voices. For example, if you specify en-US, the operation returns a list of all available US English voices.  This operation requires permissions to perform the polly:DescribeVoices action.
"""
DescribeVoices() = polly("GET", "/v1/voices")
DescribeVoices(, args) = polly("GET", "/v1/voices", args)
DescribeVoices(a...; b...) = DescribeVoices(a..., b)

"""
Returns a list of SpeechSynthesisTask objects ordered by their creation date. This operation can filter the tasks by their status, for example, allowing users to list only tasks that are completed.
"""
ListSpeechSynthesisTasks() = polly("GET", "/v1/synthesisTasks")
ListSpeechSynthesisTasks(, args) = polly("GET", "/v1/synthesisTasks", args)
ListSpeechSynthesisTasks(a...; b...) = ListSpeechSynthesisTasks(a..., b)

"""
Allows the creation of an asynchronous synthesis task, by starting a new SpeechSynthesisTask. This operation requires all the standard information needed for speech synthesis, plus the name of an Amazon S3 bucket for the service to store the output of the synthesis task and two optional parameters (OutputS3KeyPrefix and SnsTopicArn). Once the synthesis task is created, this operation will return a SpeechSynthesisTask object, which will include an identifier of this task as well as the current status.
"""
StartSpeechSynthesisTask(OutputFormat, OutputS3BucketName, Text, VoiceId) = polly("POST", "/v1/synthesisTasks")
StartSpeechSynthesisTask(OutputFormat, OutputS3BucketName, Text, VoiceId, args) = polly("POST", "/v1/synthesisTasks", args)
StartSpeechSynthesisTask(a...; b...) = StartSpeechSynthesisTask(a..., b)

"""
Stores a pronunciation lexicon in an AWS Region. If a lexicon with the same name already exists in the region, it is overwritten by the new lexicon. Lexicon operations have eventual consistency, therefore, it might take some time before the lexicon is available to the SynthesizeSpeech operation. For more information, see Managing Lexicons.
"""
PutLexicon(Name, Content) = polly("PUT", "/v1/lexicons/$LexiconName")
PutLexicon(Name, Content, args) = polly("PUT", "/v1/lexicons/$LexiconName", args)
PutLexicon(a...; b...) = PutLexicon(a..., b)

"""
Returns the content of the specified pronunciation lexicon stored in an AWS Region. For more information, see Managing Lexicons.
"""
GetLexicon(Name) = polly("GET", "/v1/lexicons/$LexiconName")
GetLexicon(Name, args) = polly("GET", "/v1/lexicons/$LexiconName", args)
GetLexicon(a...; b...) = GetLexicon(a..., b)

"""
Returns a list of pronunciation lexicons stored in an AWS Region. For more information, see Managing Lexicons.
"""
ListLexicons() = polly("GET", "/v1/lexicons")
ListLexicons(, args) = polly("GET", "/v1/lexicons", args)
ListLexicons(a...; b...) = ListLexicons(a..., b)