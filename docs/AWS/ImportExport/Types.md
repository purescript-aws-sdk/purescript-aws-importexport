## Module AWS.ImportExport.Types

#### `options`

``` purescript
options :: Options
```

#### `APIVersion`

``` purescript
newtype APIVersion
  = APIVersion String
```

Specifies the version of the client tool.

##### Instances
``` purescript
Newtype APIVersion _
Generic APIVersion _
Show APIVersion
Decode APIVersion
Encode APIVersion
```

#### `Artifact`

``` purescript
newtype Artifact
  = Artifact { "Description" :: Maybe (Description), "URL" :: Maybe (URL) }
```

A discrete item that contains the description and URL of an artifact (such as a PDF).

##### Instances
``` purescript
Newtype Artifact _
Generic Artifact _
Show Artifact
Decode Artifact
Encode Artifact
```

#### `newArtifact`

``` purescript
newArtifact :: Artifact
```

Constructs Artifact from required parameters

#### `newArtifact'`

``` purescript
newArtifact' :: ({ "Description" :: Maybe (Description), "URL" :: Maybe (URL) } -> { "Description" :: Maybe (Description), "URL" :: Maybe (URL) }) -> Artifact
```

Constructs Artifact's fields from required parameters

#### `ArtifactList`

``` purescript
newtype ArtifactList
  = ArtifactList (Array Artifact)
```

A collection of artifacts.

##### Instances
``` purescript
Newtype ArtifactList _
Generic ArtifactList _
Show ArtifactList
Decode ArtifactList
Encode ArtifactList
```

#### `BucketPermissionException`

``` purescript
newtype BucketPermissionException
  = BucketPermissionException { message :: Maybe (ErrorMessage) }
```

The account specified does not have the appropriate bucket permissions.

##### Instances
``` purescript
Newtype BucketPermissionException _
Generic BucketPermissionException _
Show BucketPermissionException
Decode BucketPermissionException
Encode BucketPermissionException
```

#### `newBucketPermissionException`

``` purescript
newBucketPermissionException :: BucketPermissionException
```

Constructs BucketPermissionException from required parameters

#### `newBucketPermissionException'`

``` purescript
newBucketPermissionException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> BucketPermissionException
```

Constructs BucketPermissionException's fields from required parameters

#### `CancelJobInput`

``` purescript
newtype CancelJobInput
  = CancelJobInput { "JobId" :: JobId, "APIVersion" :: Maybe (APIVersion) }
```

Input structure for the CancelJob operation.

##### Instances
``` purescript
Newtype CancelJobInput _
Generic CancelJobInput _
Show CancelJobInput
Decode CancelJobInput
Encode CancelJobInput
```

#### `newCancelJobInput`

``` purescript
newCancelJobInput :: JobId -> CancelJobInput
```

Constructs CancelJobInput from required parameters

#### `newCancelJobInput'`

``` purescript
newCancelJobInput' :: JobId -> ({ "JobId" :: JobId, "APIVersion" :: Maybe (APIVersion) } -> { "JobId" :: JobId, "APIVersion" :: Maybe (APIVersion) }) -> CancelJobInput
```

Constructs CancelJobInput's fields from required parameters

#### `CancelJobOutput`

``` purescript
newtype CancelJobOutput
  = CancelJobOutput { "Success" :: Maybe (Success) }
```

Output structure for the CancelJob operation.

##### Instances
``` purescript
Newtype CancelJobOutput _
Generic CancelJobOutput _
Show CancelJobOutput
Decode CancelJobOutput
Encode CancelJobOutput
```

#### `newCancelJobOutput`

``` purescript
newCancelJobOutput :: CancelJobOutput
```

Constructs CancelJobOutput from required parameters

#### `newCancelJobOutput'`

``` purescript
newCancelJobOutput' :: ({ "Success" :: Maybe (Success) } -> { "Success" :: Maybe (Success) }) -> CancelJobOutput
```

Constructs CancelJobOutput's fields from required parameters

#### `CanceledJobIdException`

``` purescript
newtype CanceledJobIdException
  = CanceledJobIdException { message :: Maybe (ErrorMessage) }
```

The specified job ID has been canceled and is no longer valid.

##### Instances
``` purescript
Newtype CanceledJobIdException _
Generic CanceledJobIdException _
Show CanceledJobIdException
Decode CanceledJobIdException
Encode CanceledJobIdException
```

#### `newCanceledJobIdException`

``` purescript
newCanceledJobIdException :: CanceledJobIdException
```

Constructs CanceledJobIdException from required parameters

#### `newCanceledJobIdException'`

``` purescript
newCanceledJobIdException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> CanceledJobIdException
```

Constructs CanceledJobIdException's fields from required parameters

#### `Carrier`

``` purescript
newtype Carrier
  = Carrier String
```

Name of the shipping company. This value is included when the LocationCode is "Returned".

##### Instances
``` purescript
Newtype Carrier _
Generic Carrier _
Show Carrier
Decode Carrier
Encode Carrier
```

#### `CreateJobInput`

``` purescript
newtype CreateJobInput
  = CreateJobInput { "JobType" :: JobType, "Manifest" :: Manifest, "ManifestAddendum" :: Maybe (ManifestAddendum), "ValidateOnly" :: ValidateOnly, "APIVersion" :: Maybe (APIVersion) }
```

Input structure for the CreateJob operation.

##### Instances
``` purescript
Newtype CreateJobInput _
Generic CreateJobInput _
Show CreateJobInput
Decode CreateJobInput
Encode CreateJobInput
```

#### `newCreateJobInput`

``` purescript
newCreateJobInput :: JobType -> Manifest -> ValidateOnly -> CreateJobInput
```

Constructs CreateJobInput from required parameters

#### `newCreateJobInput'`

``` purescript
newCreateJobInput' :: JobType -> Manifest -> ValidateOnly -> ({ "JobType" :: JobType, "Manifest" :: Manifest, "ManifestAddendum" :: Maybe (ManifestAddendum), "ValidateOnly" :: ValidateOnly, "APIVersion" :: Maybe (APIVersion) } -> { "JobType" :: JobType, "Manifest" :: Manifest, "ManifestAddendum" :: Maybe (ManifestAddendum), "ValidateOnly" :: ValidateOnly, "APIVersion" :: Maybe (APIVersion) }) -> CreateJobInput
```

Constructs CreateJobInput's fields from required parameters

#### `CreateJobOutput`

``` purescript
newtype CreateJobOutput
  = CreateJobOutput { "JobId" :: Maybe (JobId), "JobType" :: Maybe (JobType), "Signature" :: Maybe (Signature), "SignatureFileContents" :: Maybe (SignatureFileContents), "WarningMessage" :: Maybe (WarningMessage), "ArtifactList" :: Maybe (ArtifactList) }
```

Output structure for the CreateJob operation.

##### Instances
``` purescript
Newtype CreateJobOutput _
Generic CreateJobOutput _
Show CreateJobOutput
Decode CreateJobOutput
Encode CreateJobOutput
```

#### `newCreateJobOutput`

``` purescript
newCreateJobOutput :: CreateJobOutput
```

Constructs CreateJobOutput from required parameters

#### `newCreateJobOutput'`

``` purescript
newCreateJobOutput' :: ({ "JobId" :: Maybe (JobId), "JobType" :: Maybe (JobType), "Signature" :: Maybe (Signature), "SignatureFileContents" :: Maybe (SignatureFileContents), "WarningMessage" :: Maybe (WarningMessage), "ArtifactList" :: Maybe (ArtifactList) } -> { "JobId" :: Maybe (JobId), "JobType" :: Maybe (JobType), "Signature" :: Maybe (Signature), "SignatureFileContents" :: Maybe (SignatureFileContents), "WarningMessage" :: Maybe (WarningMessage), "ArtifactList" :: Maybe (ArtifactList) }) -> CreateJobOutput
```

Constructs CreateJobOutput's fields from required parameters

#### `CreateJobQuotaExceededException`

``` purescript
newtype CreateJobQuotaExceededException
  = CreateJobQuotaExceededException { message :: Maybe (ErrorMessage) }
```

Each account can create only a certain number of jobs per day. If you need to create more than this, please contact awsimportexport@amazon.com to explain your particular use case.

##### Instances
``` purescript
Newtype CreateJobQuotaExceededException _
Generic CreateJobQuotaExceededException _
Show CreateJobQuotaExceededException
Decode CreateJobQuotaExceededException
Encode CreateJobQuotaExceededException
```

#### `newCreateJobQuotaExceededException`

``` purescript
newCreateJobQuotaExceededException :: CreateJobQuotaExceededException
```

Constructs CreateJobQuotaExceededException from required parameters

#### `newCreateJobQuotaExceededException'`

``` purescript
newCreateJobQuotaExceededException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> CreateJobQuotaExceededException
```

Constructs CreateJobQuotaExceededException's fields from required parameters

#### `CreationDate`

``` purescript
newtype CreationDate
  = CreationDate Timestamp
```

Timestamp of the CreateJob request in ISO8601 date format. For example "2010-03-28T20:27:35Z".

##### Instances
``` purescript
Newtype CreationDate _
Generic CreationDate _
Show CreationDate
Decode CreationDate
Encode CreationDate
```

#### `CurrentManifest`

``` purescript
newtype CurrentManifest
  = CurrentManifest String
```

The last manifest submitted, which will be used to process the job.

##### Instances
``` purescript
Newtype CurrentManifest _
Generic CurrentManifest _
Show CurrentManifest
Decode CurrentManifest
Encode CurrentManifest
```

#### `Description`

``` purescript
newtype Description
  = Description String
```

The associated description for this object.

##### Instances
``` purescript
Newtype Description _
Generic Description _
Show Description
Decode Description
Encode Description
```

#### `ErrorCount`

``` purescript
newtype ErrorCount
  = ErrorCount Int
```

Number of errors. We return this value when the ProgressCode is Success or SuccessWithErrors.

##### Instances
``` purescript
Newtype ErrorCount _
Generic ErrorCount _
Show ErrorCount
Decode ErrorCount
Encode ErrorCount
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

The human-readable description of a particular error.

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ExpiredJobIdException`

``` purescript
newtype ExpiredJobIdException
  = ExpiredJobIdException { message :: Maybe (ErrorMessage) }
```

Indicates that the specified job has expired out of the system.

##### Instances
``` purescript
Newtype ExpiredJobIdException _
Generic ExpiredJobIdException _
Show ExpiredJobIdException
Decode ExpiredJobIdException
Encode ExpiredJobIdException
```

#### `newExpiredJobIdException`

``` purescript
newExpiredJobIdException :: ExpiredJobIdException
```

Constructs ExpiredJobIdException from required parameters

#### `newExpiredJobIdException'`

``` purescript
newExpiredJobIdException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> ExpiredJobIdException
```

Constructs ExpiredJobIdException's fields from required parameters

#### `GenericString`

``` purescript
newtype GenericString
  = GenericString String
```

##### Instances
``` purescript
Newtype GenericString _
Generic GenericString _
Show GenericString
Decode GenericString
Encode GenericString
```

#### `GetShippingLabelInput`

``` purescript
newtype GetShippingLabelInput
  = GetShippingLabelInput { jobIds :: JobIdList, name :: Maybe (Name'), company :: Maybe (Company'), phoneNumber :: Maybe (PhoneNumber'), country :: Maybe (Country'), stateOrProvince :: Maybe (StateOrProvince'), city :: Maybe (City'), postalCode :: Maybe (PostalCode'), street1 :: Maybe (Street1'), street2 :: Maybe (Street2'), street3 :: Maybe (Street3'), "APIVersion" :: Maybe (APIVersion) }
```

##### Instances
``` purescript
Newtype GetShippingLabelInput _
Generic GetShippingLabelInput _
Show GetShippingLabelInput
Decode GetShippingLabelInput
Encode GetShippingLabelInput
```

#### `newGetShippingLabelInput`

``` purescript
newGetShippingLabelInput :: JobIdList -> GetShippingLabelInput
```

Constructs GetShippingLabelInput from required parameters

#### `newGetShippingLabelInput'`

``` purescript
newGetShippingLabelInput' :: JobIdList -> ({ jobIds :: JobIdList, name :: Maybe (Name'), company :: Maybe (Company'), phoneNumber :: Maybe (PhoneNumber'), country :: Maybe (Country'), stateOrProvince :: Maybe (StateOrProvince'), city :: Maybe (City'), postalCode :: Maybe (PostalCode'), street1 :: Maybe (Street1'), street2 :: Maybe (Street2'), street3 :: Maybe (Street3'), "APIVersion" :: Maybe (APIVersion) } -> { jobIds :: JobIdList, name :: Maybe (Name'), company :: Maybe (Company'), phoneNumber :: Maybe (PhoneNumber'), country :: Maybe (Country'), stateOrProvince :: Maybe (StateOrProvince'), city :: Maybe (City'), postalCode :: Maybe (PostalCode'), street1 :: Maybe (Street1'), street2 :: Maybe (Street2'), street3 :: Maybe (Street3'), "APIVersion" :: Maybe (APIVersion) }) -> GetShippingLabelInput
```

Constructs GetShippingLabelInput's fields from required parameters

#### `GetShippingLabelOutput`

``` purescript
newtype GetShippingLabelOutput
  = GetShippingLabelOutput { "ShippingLabelURL" :: Maybe (GenericString), "Warning" :: Maybe (GenericString) }
```

##### Instances
``` purescript
Newtype GetShippingLabelOutput _
Generic GetShippingLabelOutput _
Show GetShippingLabelOutput
Decode GetShippingLabelOutput
Encode GetShippingLabelOutput
```

#### `newGetShippingLabelOutput`

``` purescript
newGetShippingLabelOutput :: GetShippingLabelOutput
```

Constructs GetShippingLabelOutput from required parameters

#### `newGetShippingLabelOutput'`

``` purescript
newGetShippingLabelOutput' :: ({ "ShippingLabelURL" :: Maybe (GenericString), "Warning" :: Maybe (GenericString) } -> { "ShippingLabelURL" :: Maybe (GenericString), "Warning" :: Maybe (GenericString) }) -> GetShippingLabelOutput
```

Constructs GetShippingLabelOutput's fields from required parameters

#### `GetStatusInput`

``` purescript
newtype GetStatusInput
  = GetStatusInput { "JobId" :: JobId, "APIVersion" :: Maybe (APIVersion) }
```

Input structure for the GetStatus operation.

##### Instances
``` purescript
Newtype GetStatusInput _
Generic GetStatusInput _
Show GetStatusInput
Decode GetStatusInput
Encode GetStatusInput
```

#### `newGetStatusInput`

``` purescript
newGetStatusInput :: JobId -> GetStatusInput
```

Constructs GetStatusInput from required parameters

#### `newGetStatusInput'`

``` purescript
newGetStatusInput' :: JobId -> ({ "JobId" :: JobId, "APIVersion" :: Maybe (APIVersion) } -> { "JobId" :: JobId, "APIVersion" :: Maybe (APIVersion) }) -> GetStatusInput
```

Constructs GetStatusInput's fields from required parameters

#### `GetStatusOutput`

``` purescript
newtype GetStatusOutput
  = GetStatusOutput { "JobId" :: Maybe (JobId), "JobType" :: Maybe (JobType), "LocationCode" :: Maybe (LocationCode), "LocationMessage" :: Maybe (LocationMessage), "ProgressCode" :: Maybe (ProgressCode), "ProgressMessage" :: Maybe (ProgressMessage), "Carrier" :: Maybe (Carrier), "TrackingNumber" :: Maybe (TrackingNumber), "LogBucket" :: Maybe (LogBucket), "LogKey" :: Maybe (LogKey), "ErrorCount" :: Maybe (ErrorCount), "Signature" :: Maybe (Signature), "SignatureFileContents" :: Maybe (Signature), "CurrentManifest" :: Maybe (CurrentManifest), "CreationDate" :: Maybe (CreationDate), "ArtifactList" :: Maybe (ArtifactList) }
```

Output structure for the GetStatus operation.

##### Instances
``` purescript
Newtype GetStatusOutput _
Generic GetStatusOutput _
Show GetStatusOutput
Decode GetStatusOutput
Encode GetStatusOutput
```

#### `newGetStatusOutput`

``` purescript
newGetStatusOutput :: GetStatusOutput
```

Constructs GetStatusOutput from required parameters

#### `newGetStatusOutput'`

``` purescript
newGetStatusOutput' :: ({ "JobId" :: Maybe (JobId), "JobType" :: Maybe (JobType), "LocationCode" :: Maybe (LocationCode), "LocationMessage" :: Maybe (LocationMessage), "ProgressCode" :: Maybe (ProgressCode), "ProgressMessage" :: Maybe (ProgressMessage), "Carrier" :: Maybe (Carrier), "TrackingNumber" :: Maybe (TrackingNumber), "LogBucket" :: Maybe (LogBucket), "LogKey" :: Maybe (LogKey), "ErrorCount" :: Maybe (ErrorCount), "Signature" :: Maybe (Signature), "SignatureFileContents" :: Maybe (Signature), "CurrentManifest" :: Maybe (CurrentManifest), "CreationDate" :: Maybe (CreationDate), "ArtifactList" :: Maybe (ArtifactList) } -> { "JobId" :: Maybe (JobId), "JobType" :: Maybe (JobType), "LocationCode" :: Maybe (LocationCode), "LocationMessage" :: Maybe (LocationMessage), "ProgressCode" :: Maybe (ProgressCode), "ProgressMessage" :: Maybe (ProgressMessage), "Carrier" :: Maybe (Carrier), "TrackingNumber" :: Maybe (TrackingNumber), "LogBucket" :: Maybe (LogBucket), "LogKey" :: Maybe (LogKey), "ErrorCount" :: Maybe (ErrorCount), "Signature" :: Maybe (Signature), "SignatureFileContents" :: Maybe (Signature), "CurrentManifest" :: Maybe (CurrentManifest), "CreationDate" :: Maybe (CreationDate), "ArtifactList" :: Maybe (ArtifactList) }) -> GetStatusOutput
```

Constructs GetStatusOutput's fields from required parameters

#### `InvalidAccessKeyIdException`

``` purescript
newtype InvalidAccessKeyIdException
  = InvalidAccessKeyIdException { message :: Maybe (ErrorMessage) }
```

The AWS Access Key ID specified in the request did not match the manifest's accessKeyId value. The manifest and the request authentication must use the same AWS Access Key ID.

##### Instances
``` purescript
Newtype InvalidAccessKeyIdException _
Generic InvalidAccessKeyIdException _
Show InvalidAccessKeyIdException
Decode InvalidAccessKeyIdException
Encode InvalidAccessKeyIdException
```

#### `newInvalidAccessKeyIdException`

``` purescript
newInvalidAccessKeyIdException :: InvalidAccessKeyIdException
```

Constructs InvalidAccessKeyIdException from required parameters

#### `newInvalidAccessKeyIdException'`

``` purescript
newInvalidAccessKeyIdException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidAccessKeyIdException
```

Constructs InvalidAccessKeyIdException's fields from required parameters

#### `InvalidAddressException`

``` purescript
newtype InvalidAddressException
  = InvalidAddressException { message :: Maybe (ErrorMessage) }
```

The address specified in the manifest is invalid.

##### Instances
``` purescript
Newtype InvalidAddressException _
Generic InvalidAddressException _
Show InvalidAddressException
Decode InvalidAddressException
Encode InvalidAddressException
```

#### `newInvalidAddressException`

``` purescript
newInvalidAddressException :: InvalidAddressException
```

Constructs InvalidAddressException from required parameters

#### `newInvalidAddressException'`

``` purescript
newInvalidAddressException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidAddressException
```

Constructs InvalidAddressException's fields from required parameters

#### `InvalidCustomsException`

``` purescript
newtype InvalidCustomsException
  = InvalidCustomsException { message :: Maybe (ErrorMessage) }
```

One or more customs parameters was invalid. Please correct and resubmit.

##### Instances
``` purescript
Newtype InvalidCustomsException _
Generic InvalidCustomsException _
Show InvalidCustomsException
Decode InvalidCustomsException
Encode InvalidCustomsException
```

#### `newInvalidCustomsException`

``` purescript
newInvalidCustomsException :: InvalidCustomsException
```

Constructs InvalidCustomsException from required parameters

#### `newInvalidCustomsException'`

``` purescript
newInvalidCustomsException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidCustomsException
```

Constructs InvalidCustomsException's fields from required parameters

#### `InvalidFileSystemException`

``` purescript
newtype InvalidFileSystemException
  = InvalidFileSystemException { message :: Maybe (ErrorMessage) }
```

File system specified in export manifest is invalid.

##### Instances
``` purescript
Newtype InvalidFileSystemException _
Generic InvalidFileSystemException _
Show InvalidFileSystemException
Decode InvalidFileSystemException
Encode InvalidFileSystemException
```

#### `newInvalidFileSystemException`

``` purescript
newInvalidFileSystemException :: InvalidFileSystemException
```

Constructs InvalidFileSystemException from required parameters

#### `newInvalidFileSystemException'`

``` purescript
newInvalidFileSystemException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidFileSystemException
```

Constructs InvalidFileSystemException's fields from required parameters

#### `InvalidJobIdException`

``` purescript
newtype InvalidJobIdException
  = InvalidJobIdException { message :: Maybe (ErrorMessage) }
```

The JOBID was missing, not found, or not associated with the AWS account.

##### Instances
``` purescript
Newtype InvalidJobIdException _
Generic InvalidJobIdException _
Show InvalidJobIdException
Decode InvalidJobIdException
Encode InvalidJobIdException
```

#### `newInvalidJobIdException`

``` purescript
newInvalidJobIdException :: InvalidJobIdException
```

Constructs InvalidJobIdException from required parameters

#### `newInvalidJobIdException'`

``` purescript
newInvalidJobIdException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidJobIdException
```

Constructs InvalidJobIdException's fields from required parameters

#### `InvalidManifestFieldException`

``` purescript
newtype InvalidManifestFieldException
  = InvalidManifestFieldException { message :: Maybe (ErrorMessage) }
```

One or more manifest fields was invalid. Please correct and resubmit.

##### Instances
``` purescript
Newtype InvalidManifestFieldException _
Generic InvalidManifestFieldException _
Show InvalidManifestFieldException
Decode InvalidManifestFieldException
Encode InvalidManifestFieldException
```

#### `newInvalidManifestFieldException`

``` purescript
newInvalidManifestFieldException :: InvalidManifestFieldException
```

Constructs InvalidManifestFieldException from required parameters

#### `newInvalidManifestFieldException'`

``` purescript
newInvalidManifestFieldException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidManifestFieldException
```

Constructs InvalidManifestFieldException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: Maybe (ErrorMessage) }
```

One or more parameters had an invalid value.

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `InvalidVersionException`

``` purescript
newtype InvalidVersionException
  = InvalidVersionException { message :: Maybe (ErrorMessage) }
```

The client tool version is invalid.

##### Instances
``` purescript
Newtype InvalidVersionException _
Generic InvalidVersionException _
Show InvalidVersionException
Decode InvalidVersionException
Encode InvalidVersionException
```

#### `newInvalidVersionException`

``` purescript
newInvalidVersionException :: InvalidVersionException
```

Constructs InvalidVersionException from required parameters

#### `newInvalidVersionException'`

``` purescript
newInvalidVersionException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> InvalidVersionException
```

Constructs InvalidVersionException's fields from required parameters

#### `IsCanceled`

``` purescript
newtype IsCanceled
  = IsCanceled Boolean
```

Indicates whether the job was canceled.

##### Instances
``` purescript
Newtype IsCanceled _
Generic IsCanceled _
Show IsCanceled
Decode IsCanceled
Encode IsCanceled
```

#### `IsTruncated`

``` purescript
newtype IsTruncated
  = IsTruncated Boolean
```

Indicates whether the list of jobs was truncated. If true, then call ListJobs again using the last JobId element as the marker.

##### Instances
``` purescript
Newtype IsTruncated _
Generic IsTruncated _
Show IsTruncated
Decode IsTruncated
Encode IsTruncated
```

#### `Job`

``` purescript
newtype Job
  = Job { "JobId" :: Maybe (JobId), "CreationDate" :: Maybe (CreationDate), "IsCanceled" :: Maybe (IsCanceled), "JobType" :: Maybe (JobType) }
```

Representation of a job returned by the ListJobs operation.

##### Instances
``` purescript
Newtype Job _
Generic Job _
Show Job
Decode Job
Encode Job
```

#### `newJob`

``` purescript
newJob :: Job
```

Constructs Job from required parameters

#### `newJob'`

``` purescript
newJob' :: ({ "JobId" :: Maybe (JobId), "CreationDate" :: Maybe (CreationDate), "IsCanceled" :: Maybe (IsCanceled), "JobType" :: Maybe (JobType) } -> { "JobId" :: Maybe (JobId), "CreationDate" :: Maybe (CreationDate), "IsCanceled" :: Maybe (IsCanceled), "JobType" :: Maybe (JobType) }) -> Job
```

Constructs Job's fields from required parameters

#### `JobId`

``` purescript
newtype JobId
  = JobId String
```

A unique identifier which refers to a particular job.

##### Instances
``` purescript
Newtype JobId _
Generic JobId _
Show JobId
Decode JobId
Encode JobId
```

#### `JobIdList`

``` purescript
newtype JobIdList
  = JobIdList (Array GenericString)
```

##### Instances
``` purescript
Newtype JobIdList _
Generic JobIdList _
Show JobIdList
Decode JobIdList
Encode JobIdList
```

#### `JobType`

``` purescript
newtype JobType
  = JobType String
```

Specifies whether the job to initiate is an import or export job.

##### Instances
``` purescript
Newtype JobType _
Generic JobType _
Show JobType
Decode JobType
Encode JobType
```

#### `JobsList`

``` purescript
newtype JobsList
  = JobsList (Array Job)
```

A list container for Jobs returned by the ListJobs operation.

##### Instances
``` purescript
Newtype JobsList _
Generic JobsList _
Show JobsList
Decode JobsList
Encode JobsList
```

#### `ListJobsInput`

``` purescript
newtype ListJobsInput
  = ListJobsInput { "MaxJobs" :: Maybe (MaxJobs), "Marker" :: Maybe (Marker), "APIVersion" :: Maybe (APIVersion) }
```

Input structure for the ListJobs operation.

##### Instances
``` purescript
Newtype ListJobsInput _
Generic ListJobsInput _
Show ListJobsInput
Decode ListJobsInput
Encode ListJobsInput
```

#### `newListJobsInput`

``` purescript
newListJobsInput :: ListJobsInput
```

Constructs ListJobsInput from required parameters

#### `newListJobsInput'`

``` purescript
newListJobsInput' :: ({ "MaxJobs" :: Maybe (MaxJobs), "Marker" :: Maybe (Marker), "APIVersion" :: Maybe (APIVersion) } -> { "MaxJobs" :: Maybe (MaxJobs), "Marker" :: Maybe (Marker), "APIVersion" :: Maybe (APIVersion) }) -> ListJobsInput
```

Constructs ListJobsInput's fields from required parameters

#### `ListJobsOutput`

``` purescript
newtype ListJobsOutput
  = ListJobsOutput { "Jobs" :: Maybe (JobsList), "IsTruncated" :: Maybe (IsTruncated) }
```

Output structure for the ListJobs operation.

##### Instances
``` purescript
Newtype ListJobsOutput _
Generic ListJobsOutput _
Show ListJobsOutput
Decode ListJobsOutput
Encode ListJobsOutput
```

#### `newListJobsOutput`

``` purescript
newListJobsOutput :: ListJobsOutput
```

Constructs ListJobsOutput from required parameters

#### `newListJobsOutput'`

``` purescript
newListJobsOutput' :: ({ "Jobs" :: Maybe (JobsList), "IsTruncated" :: Maybe (IsTruncated) } -> { "Jobs" :: Maybe (JobsList), "IsTruncated" :: Maybe (IsTruncated) }) -> ListJobsOutput
```

Constructs ListJobsOutput's fields from required parameters

#### `LocationCode`

``` purescript
newtype LocationCode
  = LocationCode String
```

A token representing the location of the storage device, such as "AtAWS".

##### Instances
``` purescript
Newtype LocationCode _
Generic LocationCode _
Show LocationCode
Decode LocationCode
Encode LocationCode
```

#### `LocationMessage`

``` purescript
newtype LocationMessage
  = LocationMessage String
```

A more human readable form of the physical location of the storage device.

##### Instances
``` purescript
Newtype LocationMessage _
Generic LocationMessage _
Show LocationMessage
Decode LocationMessage
Encode LocationMessage
```

#### `LogBucket`

``` purescript
newtype LogBucket
  = LogBucket String
```

Amazon S3 bucket for user logs.

##### Instances
``` purescript
Newtype LogBucket _
Generic LogBucket _
Show LogBucket
Decode LogBucket
Encode LogBucket
```

#### `LogKey`

``` purescript
newtype LogKey
  = LogKey String
```

The key where the user logs were stored.

##### Instances
``` purescript
Newtype LogKey _
Generic LogKey _
Show LogKey
Decode LogKey
Encode LogKey
```

#### `MalformedManifestException`

``` purescript
newtype MalformedManifestException
  = MalformedManifestException { message :: Maybe (ErrorMessage) }
```

Your manifest is not well-formed.

##### Instances
``` purescript
Newtype MalformedManifestException _
Generic MalformedManifestException _
Show MalformedManifestException
Decode MalformedManifestException
Encode MalformedManifestException
```

#### `newMalformedManifestException`

``` purescript
newMalformedManifestException :: MalformedManifestException
```

Constructs MalformedManifestException from required parameters

#### `newMalformedManifestException'`

``` purescript
newMalformedManifestException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> MalformedManifestException
```

Constructs MalformedManifestException's fields from required parameters

#### `Manifest`

``` purescript
newtype Manifest
  = Manifest String
```

The UTF-8 encoded text of the manifest file.

##### Instances
``` purescript
Newtype Manifest _
Generic Manifest _
Show Manifest
Decode Manifest
Encode Manifest
```

#### `ManifestAddendum`

``` purescript
newtype ManifestAddendum
  = ManifestAddendum String
```

For internal use only.

##### Instances
``` purescript
Newtype ManifestAddendum _
Generic ManifestAddendum _
Show ManifestAddendum
Decode ManifestAddendum
Encode ManifestAddendum
```

#### `Marker`

``` purescript
newtype Marker
  = Marker String
```

Specifies the JOBID to start after when listing the jobs created with your account. AWS Import/Export lists your jobs in reverse chronological order. See MaxJobs.

##### Instances
``` purescript
Newtype Marker _
Generic Marker _
Show Marker
Decode Marker
Encode Marker
```

#### `MaxJobs`

``` purescript
newtype MaxJobs
  = MaxJobs Int
```

Sets the maximum number of jobs returned in the response. If there are additional jobs that were not returned because MaxJobs was exceeded, the response contains &lt;IsTruncated&gt;true&lt;/IsTruncated&gt;. To return the additional jobs, see Marker.

##### Instances
``` purescript
Newtype MaxJobs _
Generic MaxJobs _
Show MaxJobs
Decode MaxJobs
Encode MaxJobs
```

#### `MissingCustomsException`

``` purescript
newtype MissingCustomsException
  = MissingCustomsException { message :: Maybe (ErrorMessage) }
```

One or more required customs parameters was missing from the manifest.

##### Instances
``` purescript
Newtype MissingCustomsException _
Generic MissingCustomsException _
Show MissingCustomsException
Decode MissingCustomsException
Encode MissingCustomsException
```

#### `newMissingCustomsException`

``` purescript
newMissingCustomsException :: MissingCustomsException
```

Constructs MissingCustomsException from required parameters

#### `newMissingCustomsException'`

``` purescript
newMissingCustomsException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> MissingCustomsException
```

Constructs MissingCustomsException's fields from required parameters

#### `MissingManifestFieldException`

``` purescript
newtype MissingManifestFieldException
  = MissingManifestFieldException { message :: Maybe (ErrorMessage) }
```

One or more required fields were missing from the manifest file. Please correct and resubmit.

##### Instances
``` purescript
Newtype MissingManifestFieldException _
Generic MissingManifestFieldException _
Show MissingManifestFieldException
Decode MissingManifestFieldException
Encode MissingManifestFieldException
```

#### `newMissingManifestFieldException`

``` purescript
newMissingManifestFieldException :: MissingManifestFieldException
```

Constructs MissingManifestFieldException from required parameters

#### `newMissingManifestFieldException'`

``` purescript
newMissingManifestFieldException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> MissingManifestFieldException
```

Constructs MissingManifestFieldException's fields from required parameters

#### `MissingParameterException`

``` purescript
newtype MissingParameterException
  = MissingParameterException { message :: Maybe (ErrorMessage) }
```

One or more required parameters was missing from the request.

##### Instances
``` purescript
Newtype MissingParameterException _
Generic MissingParameterException _
Show MissingParameterException
Decode MissingParameterException
Encode MissingParameterException
```

#### `newMissingParameterException`

``` purescript
newMissingParameterException :: MissingParameterException
```

Constructs MissingParameterException from required parameters

#### `newMissingParameterException'`

``` purescript
newMissingParameterException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> MissingParameterException
```

Constructs MissingParameterException's fields from required parameters

#### `MultipleRegionsException`

``` purescript
newtype MultipleRegionsException
  = MultipleRegionsException { message :: Maybe (ErrorMessage) }
```

Your manifest file contained buckets from multiple regions. A job is restricted to buckets from one region. Please correct and resubmit.

##### Instances
``` purescript
Newtype MultipleRegionsException _
Generic MultipleRegionsException _
Show MultipleRegionsException
Decode MultipleRegionsException
Encode MultipleRegionsException
```

#### `newMultipleRegionsException`

``` purescript
newMultipleRegionsException :: MultipleRegionsException
```

Constructs MultipleRegionsException from required parameters

#### `newMultipleRegionsException'`

``` purescript
newMultipleRegionsException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> MultipleRegionsException
```

Constructs MultipleRegionsException's fields from required parameters

#### `NoSuchBucketException`

``` purescript
newtype NoSuchBucketException
  = NoSuchBucketException { message :: Maybe (ErrorMessage) }
```

The specified bucket does not exist. Create the specified bucket or change the manifest's bucket, exportBucket, or logBucket field to a bucket that the account, as specified by the manifest's Access Key ID, has write permissions to.

##### Instances
``` purescript
Newtype NoSuchBucketException _
Generic NoSuchBucketException _
Show NoSuchBucketException
Decode NoSuchBucketException
Encode NoSuchBucketException
```

#### `newNoSuchBucketException`

``` purescript
newNoSuchBucketException :: NoSuchBucketException
```

Constructs NoSuchBucketException from required parameters

#### `newNoSuchBucketException'`

``` purescript
newNoSuchBucketException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> NoSuchBucketException
```

Constructs NoSuchBucketException's fields from required parameters

#### `ProgressCode`

``` purescript
newtype ProgressCode
  = ProgressCode String
```

A token representing the state of the job, such as "Started".

##### Instances
``` purescript
Newtype ProgressCode _
Generic ProgressCode _
Show ProgressCode
Decode ProgressCode
Encode ProgressCode
```

#### `ProgressMessage`

``` purescript
newtype ProgressMessage
  = ProgressMessage String
```

A more human readable form of the job status.

##### Instances
``` purescript
Newtype ProgressMessage _
Generic ProgressMessage _
Show ProgressMessage
Decode ProgressMessage
Encode ProgressMessage
```

#### `Signature`

``` purescript
newtype Signature
  = Signature String
```

An encrypted code used to authenticate the request and response, for example, "DV+TpDfx1/TdSE9ktyK9k/bDTVI=". Only use this value is you want to create the signature file yourself. Generally you should use the SignatureFileContents value.

##### Instances
``` purescript
Newtype Signature _
Generic Signature _
Show Signature
Decode Signature
Encode Signature
```

#### `SignatureFileContents`

``` purescript
newtype SignatureFileContents
  = SignatureFileContents String
```

The actual text of the SIGNATURE file to be written to disk.

##### Instances
``` purescript
Newtype SignatureFileContents _
Generic SignatureFileContents _
Show SignatureFileContents
Decode SignatureFileContents
Encode SignatureFileContents
```

#### `Success`

``` purescript
newtype Success
  = Success Boolean
```

Specifies whether (true) or not (false) AWS Import/Export updated your job.

##### Instances
``` purescript
Newtype Success _
Generic Success _
Show Success
Decode Success
Encode Success
```

#### `TrackingNumber`

``` purescript
newtype TrackingNumber
  = TrackingNumber String
```

The shipping tracking number assigned by AWS Import/Export to the storage device when it's returned to you. We return this value when the LocationCode is "Returned".

##### Instances
``` purescript
Newtype TrackingNumber _
Generic TrackingNumber _
Show TrackingNumber
Decode TrackingNumber
Encode TrackingNumber
```

#### `URL`

``` purescript
newtype URL
  = URL String
```

The URL for a given Artifact.

##### Instances
``` purescript
Newtype URL _
Generic URL _
Show URL
Decode URL
Encode URL
```

#### `UnableToCancelJobIdException`

``` purescript
newtype UnableToCancelJobIdException
  = UnableToCancelJobIdException { message :: Maybe (ErrorMessage) }
```

AWS Import/Export cannot cancel the job

##### Instances
``` purescript
Newtype UnableToCancelJobIdException _
Generic UnableToCancelJobIdException _
Show UnableToCancelJobIdException
Decode UnableToCancelJobIdException
Encode UnableToCancelJobIdException
```

#### `newUnableToCancelJobIdException`

``` purescript
newUnableToCancelJobIdException :: UnableToCancelJobIdException
```

Constructs UnableToCancelJobIdException from required parameters

#### `newUnableToCancelJobIdException'`

``` purescript
newUnableToCancelJobIdException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> UnableToCancelJobIdException
```

Constructs UnableToCancelJobIdException's fields from required parameters

#### `UnableToUpdateJobIdException`

``` purescript
newtype UnableToUpdateJobIdException
  = UnableToUpdateJobIdException { message :: Maybe (ErrorMessage) }
```

AWS Import/Export cannot update the job

##### Instances
``` purescript
Newtype UnableToUpdateJobIdException _
Generic UnableToUpdateJobIdException _
Show UnableToUpdateJobIdException
Decode UnableToUpdateJobIdException
Encode UnableToUpdateJobIdException
```

#### `newUnableToUpdateJobIdException`

``` purescript
newUnableToUpdateJobIdException :: UnableToUpdateJobIdException
```

Constructs UnableToUpdateJobIdException from required parameters

#### `newUnableToUpdateJobIdException'`

``` purescript
newUnableToUpdateJobIdException' :: ({ message :: Maybe (ErrorMessage) } -> { message :: Maybe (ErrorMessage) }) -> UnableToUpdateJobIdException
```

Constructs UnableToUpdateJobIdException's fields from required parameters

#### `UpdateJobInput`

``` purescript
newtype UpdateJobInput
  = UpdateJobInput { "JobId" :: JobId, "Manifest" :: Manifest, "JobType" :: JobType, "ValidateOnly" :: ValidateOnly, "APIVersion" :: Maybe (APIVersion) }
```

Input structure for the UpateJob operation.

##### Instances
``` purescript
Newtype UpdateJobInput _
Generic UpdateJobInput _
Show UpdateJobInput
Decode UpdateJobInput
Encode UpdateJobInput
```

#### `newUpdateJobInput`

``` purescript
newUpdateJobInput :: JobId -> JobType -> Manifest -> ValidateOnly -> UpdateJobInput
```

Constructs UpdateJobInput from required parameters

#### `newUpdateJobInput'`

``` purescript
newUpdateJobInput' :: JobId -> JobType -> Manifest -> ValidateOnly -> ({ "JobId" :: JobId, "Manifest" :: Manifest, "JobType" :: JobType, "ValidateOnly" :: ValidateOnly, "APIVersion" :: Maybe (APIVersion) } -> { "JobId" :: JobId, "Manifest" :: Manifest, "JobType" :: JobType, "ValidateOnly" :: ValidateOnly, "APIVersion" :: Maybe (APIVersion) }) -> UpdateJobInput
```

Constructs UpdateJobInput's fields from required parameters

#### `UpdateJobOutput`

``` purescript
newtype UpdateJobOutput
  = UpdateJobOutput { "Success" :: Maybe (Success), "WarningMessage" :: Maybe (WarningMessage), "ArtifactList" :: Maybe (ArtifactList) }
```

Output structure for the UpateJob operation.

##### Instances
``` purescript
Newtype UpdateJobOutput _
Generic UpdateJobOutput _
Show UpdateJobOutput
Decode UpdateJobOutput
Encode UpdateJobOutput
```

#### `newUpdateJobOutput`

``` purescript
newUpdateJobOutput :: UpdateJobOutput
```

Constructs UpdateJobOutput from required parameters

#### `newUpdateJobOutput'`

``` purescript
newUpdateJobOutput' :: ({ "Success" :: Maybe (Success), "WarningMessage" :: Maybe (WarningMessage), "ArtifactList" :: Maybe (ArtifactList) } -> { "Success" :: Maybe (Success), "WarningMessage" :: Maybe (WarningMessage), "ArtifactList" :: Maybe (ArtifactList) }) -> UpdateJobOutput
```

Constructs UpdateJobOutput's fields from required parameters

#### `ValidateOnly`

``` purescript
newtype ValidateOnly
  = ValidateOnly Boolean
```

Validate the manifest and parameter values in the request but do not actually create a job.

##### Instances
``` purescript
Newtype ValidateOnly _
Generic ValidateOnly _
Show ValidateOnly
Decode ValidateOnly
Encode ValidateOnly
```

#### `WarningMessage`

``` purescript
newtype WarningMessage
  = WarningMessage String
```

An optional message notifying you of non-fatal issues with the job, such as use of an incompatible Amazon S3 bucket name.

##### Instances
``` purescript
Newtype WarningMessage _
Generic WarningMessage _
Show WarningMessage
Decode WarningMessage
Encode WarningMessage
```

#### `City'`

``` purescript
newtype City'
  = City' String
```

Specifies the name of your city for the return address.

##### Instances
``` purescript
Newtype City' _
Generic City' _
Show City'
Decode City'
Encode City'
```

#### `Company'`

``` purescript
newtype Company'
  = Company' String
```

Specifies the name of the company that will ship this package.

##### Instances
``` purescript
Newtype Company' _
Generic Company' _
Show Company'
Decode Company'
Encode Company'
```

#### `Country'`

``` purescript
newtype Country'
  = Country' String
```

Specifies the name of your country for the return address.

##### Instances
``` purescript
Newtype Country' _
Generic Country' _
Show Country'
Decode Country'
Encode Country'
```

#### `Name'`

``` purescript
newtype Name'
  = Name' String
```

Specifies the name of the person responsible for shipping this package.

##### Instances
``` purescript
Newtype Name' _
Generic Name' _
Show Name'
Decode Name'
Encode Name'
```

#### `PhoneNumber'`

``` purescript
newtype PhoneNumber'
  = PhoneNumber' String
```

Specifies the phone number of the person responsible for shipping this package.

##### Instances
``` purescript
Newtype PhoneNumber' _
Generic PhoneNumber' _
Show PhoneNumber'
Decode PhoneNumber'
Encode PhoneNumber'
```

#### `PostalCode'`

``` purescript
newtype PostalCode'
  = PostalCode' String
```

Specifies the postal code for the return address.

##### Instances
``` purescript
Newtype PostalCode' _
Generic PostalCode' _
Show PostalCode'
Decode PostalCode'
Encode PostalCode'
```

#### `StateOrProvince'`

``` purescript
newtype StateOrProvince'
  = StateOrProvince' String
```

Specifies the name of your state or your province for the return address.

##### Instances
``` purescript
Newtype StateOrProvince' _
Generic StateOrProvince' _
Show StateOrProvince'
Decode StateOrProvince'
Encode StateOrProvince'
```

#### `Street1'`

``` purescript
newtype Street1'
  = Street1' String
```

Specifies the first part of the street address for the return address, for example 1234 Main Street.

##### Instances
``` purescript
Newtype Street1' _
Generic Street1' _
Show Street1'
Decode Street1'
Encode Street1'
```

#### `Street2'`

``` purescript
newtype Street2'
  = Street2' String
```

Specifies the optional second part of the street address for the return address, for example Suite 100.

##### Instances
``` purescript
Newtype Street2' _
Generic Street2' _
Show Street2'
Decode Street2'
Encode Street2'
```

#### `Street3'`

``` purescript
newtype Street3'
  = Street3' String
```

Specifies the optional third part of the street address for the return address, for example c/o Jane Doe.

##### Instances
``` purescript
Newtype Street3' _
Generic Street3' _
Show Street3'
Decode Street3'
Encode Street3'
```


