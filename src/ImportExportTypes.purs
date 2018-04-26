
module AWS.ImportExport.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | Specifies the version of the client tool.
newtype APIVersion = APIVersion String
derive instance newtypeAPIVersion :: Newtype APIVersion _
derive instance repGenericAPIVersion :: Generic APIVersion _
instance showAPIVersion :: Show APIVersion where show = genericShow
instance decodeAPIVersion :: Decode APIVersion where decode = genericDecode options
instance encodeAPIVersion :: Encode APIVersion where encode = genericEncode options



-- | A discrete item that contains the description and URL of an artifact (such as a PDF).
newtype Artifact = Artifact 
  { "Description" :: Maybe (Description)
  , "URL" :: Maybe (URL)
  }
derive instance newtypeArtifact :: Newtype Artifact _
derive instance repGenericArtifact :: Generic Artifact _
instance showArtifact :: Show Artifact where show = genericShow
instance decodeArtifact :: Decode Artifact where decode = genericDecode options
instance encodeArtifact :: Encode Artifact where encode = genericEncode options

-- | Constructs Artifact from required parameters
newArtifact :: Artifact
newArtifact  = Artifact { "Description": Nothing, "URL": Nothing }

-- | Constructs Artifact's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArtifact' :: ( { "Description" :: Maybe (Description) , "URL" :: Maybe (URL) } -> {"Description" :: Maybe (Description) , "URL" :: Maybe (URL) } ) -> Artifact
newArtifact'  customize = (Artifact <<< customize) { "Description": Nothing, "URL": Nothing }



-- | A collection of artifacts.
newtype ArtifactList = ArtifactList (Array Artifact)
derive instance newtypeArtifactList :: Newtype ArtifactList _
derive instance repGenericArtifactList :: Generic ArtifactList _
instance showArtifactList :: Show ArtifactList where show = genericShow
instance decodeArtifactList :: Decode ArtifactList where decode = genericDecode options
instance encodeArtifactList :: Encode ArtifactList where encode = genericEncode options



-- | The account specified does not have the appropriate bucket permissions.
newtype BucketPermissionException = BucketPermissionException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeBucketPermissionException :: Newtype BucketPermissionException _
derive instance repGenericBucketPermissionException :: Generic BucketPermissionException _
instance showBucketPermissionException :: Show BucketPermissionException where show = genericShow
instance decodeBucketPermissionException :: Decode BucketPermissionException where decode = genericDecode options
instance encodeBucketPermissionException :: Encode BucketPermissionException where encode = genericEncode options

-- | Constructs BucketPermissionException from required parameters
newBucketPermissionException :: BucketPermissionException
newBucketPermissionException  = BucketPermissionException { "message": Nothing }

-- | Constructs BucketPermissionException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBucketPermissionException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> BucketPermissionException
newBucketPermissionException'  customize = (BucketPermissionException <<< customize) { "message": Nothing }



-- | Input structure for the CancelJob operation.
newtype CancelJobInput = CancelJobInput 
  { "JobId" :: (JobId)
  , "APIVersion" :: Maybe (APIVersion)
  }
derive instance newtypeCancelJobInput :: Newtype CancelJobInput _
derive instance repGenericCancelJobInput :: Generic CancelJobInput _
instance showCancelJobInput :: Show CancelJobInput where show = genericShow
instance decodeCancelJobInput :: Decode CancelJobInput where decode = genericDecode options
instance encodeCancelJobInput :: Encode CancelJobInput where encode = genericEncode options

-- | Constructs CancelJobInput from required parameters
newCancelJobInput :: JobId -> CancelJobInput
newCancelJobInput _JobId = CancelJobInput { "JobId": _JobId, "APIVersion": Nothing }

-- | Constructs CancelJobInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelJobInput' :: JobId -> ( { "JobId" :: (JobId) , "APIVersion" :: Maybe (APIVersion) } -> {"JobId" :: (JobId) , "APIVersion" :: Maybe (APIVersion) } ) -> CancelJobInput
newCancelJobInput' _JobId customize = (CancelJobInput <<< customize) { "JobId": _JobId, "APIVersion": Nothing }



-- | Output structure for the CancelJob operation.
newtype CancelJobOutput = CancelJobOutput 
  { "Success" :: Maybe (Success)
  }
derive instance newtypeCancelJobOutput :: Newtype CancelJobOutput _
derive instance repGenericCancelJobOutput :: Generic CancelJobOutput _
instance showCancelJobOutput :: Show CancelJobOutput where show = genericShow
instance decodeCancelJobOutput :: Decode CancelJobOutput where decode = genericDecode options
instance encodeCancelJobOutput :: Encode CancelJobOutput where encode = genericEncode options

-- | Constructs CancelJobOutput from required parameters
newCancelJobOutput :: CancelJobOutput
newCancelJobOutput  = CancelJobOutput { "Success": Nothing }

-- | Constructs CancelJobOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelJobOutput' :: ( { "Success" :: Maybe (Success) } -> {"Success" :: Maybe (Success) } ) -> CancelJobOutput
newCancelJobOutput'  customize = (CancelJobOutput <<< customize) { "Success": Nothing }



-- | The specified job ID has been canceled and is no longer valid.
newtype CanceledJobIdException = CanceledJobIdException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeCanceledJobIdException :: Newtype CanceledJobIdException _
derive instance repGenericCanceledJobIdException :: Generic CanceledJobIdException _
instance showCanceledJobIdException :: Show CanceledJobIdException where show = genericShow
instance decodeCanceledJobIdException :: Decode CanceledJobIdException where decode = genericDecode options
instance encodeCanceledJobIdException :: Encode CanceledJobIdException where encode = genericEncode options

-- | Constructs CanceledJobIdException from required parameters
newCanceledJobIdException :: CanceledJobIdException
newCanceledJobIdException  = CanceledJobIdException { "message": Nothing }

-- | Constructs CanceledJobIdException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCanceledJobIdException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> CanceledJobIdException
newCanceledJobIdException'  customize = (CanceledJobIdException <<< customize) { "message": Nothing }



-- | Name of the shipping company. This value is included when the LocationCode is "Returned".
newtype Carrier = Carrier String
derive instance newtypeCarrier :: Newtype Carrier _
derive instance repGenericCarrier :: Generic Carrier _
instance showCarrier :: Show Carrier where show = genericShow
instance decodeCarrier :: Decode Carrier where decode = genericDecode options
instance encodeCarrier :: Encode Carrier where encode = genericEncode options



-- | Input structure for the CreateJob operation.
newtype CreateJobInput = CreateJobInput 
  { "JobType" :: (JobType)
  , "Manifest" :: (Manifest)
  , "ManifestAddendum" :: Maybe (ManifestAddendum)
  , "ValidateOnly" :: (ValidateOnly)
  , "APIVersion" :: Maybe (APIVersion)
  }
derive instance newtypeCreateJobInput :: Newtype CreateJobInput _
derive instance repGenericCreateJobInput :: Generic CreateJobInput _
instance showCreateJobInput :: Show CreateJobInput where show = genericShow
instance decodeCreateJobInput :: Decode CreateJobInput where decode = genericDecode options
instance encodeCreateJobInput :: Encode CreateJobInput where encode = genericEncode options

-- | Constructs CreateJobInput from required parameters
newCreateJobInput :: JobType -> Manifest -> ValidateOnly -> CreateJobInput
newCreateJobInput _JobType _Manifest _ValidateOnly = CreateJobInput { "JobType": _JobType, "Manifest": _Manifest, "ValidateOnly": _ValidateOnly, "APIVersion": Nothing, "ManifestAddendum": Nothing }

-- | Constructs CreateJobInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobInput' :: JobType -> Manifest -> ValidateOnly -> ( { "JobType" :: (JobType) , "Manifest" :: (Manifest) , "ManifestAddendum" :: Maybe (ManifestAddendum) , "ValidateOnly" :: (ValidateOnly) , "APIVersion" :: Maybe (APIVersion) } -> {"JobType" :: (JobType) , "Manifest" :: (Manifest) , "ManifestAddendum" :: Maybe (ManifestAddendum) , "ValidateOnly" :: (ValidateOnly) , "APIVersion" :: Maybe (APIVersion) } ) -> CreateJobInput
newCreateJobInput' _JobType _Manifest _ValidateOnly customize = (CreateJobInput <<< customize) { "JobType": _JobType, "Manifest": _Manifest, "ValidateOnly": _ValidateOnly, "APIVersion": Nothing, "ManifestAddendum": Nothing }



-- | Output structure for the CreateJob operation.
newtype CreateJobOutput = CreateJobOutput 
  { "JobId" :: Maybe (JobId)
  , "JobType" :: Maybe (JobType)
  , "Signature" :: Maybe (Signature)
  , "SignatureFileContents" :: Maybe (SignatureFileContents)
  , "WarningMessage" :: Maybe (WarningMessage)
  , "ArtifactList" :: Maybe (ArtifactList)
  }
derive instance newtypeCreateJobOutput :: Newtype CreateJobOutput _
derive instance repGenericCreateJobOutput :: Generic CreateJobOutput _
instance showCreateJobOutput :: Show CreateJobOutput where show = genericShow
instance decodeCreateJobOutput :: Decode CreateJobOutput where decode = genericDecode options
instance encodeCreateJobOutput :: Encode CreateJobOutput where encode = genericEncode options

-- | Constructs CreateJobOutput from required parameters
newCreateJobOutput :: CreateJobOutput
newCreateJobOutput  = CreateJobOutput { "ArtifactList": Nothing, "JobId": Nothing, "JobType": Nothing, "Signature": Nothing, "SignatureFileContents": Nothing, "WarningMessage": Nothing }

-- | Constructs CreateJobOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobOutput' :: ( { "JobId" :: Maybe (JobId) , "JobType" :: Maybe (JobType) , "Signature" :: Maybe (Signature) , "SignatureFileContents" :: Maybe (SignatureFileContents) , "WarningMessage" :: Maybe (WarningMessage) , "ArtifactList" :: Maybe (ArtifactList) } -> {"JobId" :: Maybe (JobId) , "JobType" :: Maybe (JobType) , "Signature" :: Maybe (Signature) , "SignatureFileContents" :: Maybe (SignatureFileContents) , "WarningMessage" :: Maybe (WarningMessage) , "ArtifactList" :: Maybe (ArtifactList) } ) -> CreateJobOutput
newCreateJobOutput'  customize = (CreateJobOutput <<< customize) { "ArtifactList": Nothing, "JobId": Nothing, "JobType": Nothing, "Signature": Nothing, "SignatureFileContents": Nothing, "WarningMessage": Nothing }



-- | Each account can create only a certain number of jobs per day. If you need to create more than this, please contact awsimportexport@amazon.com to explain your particular use case.
newtype CreateJobQuotaExceededException = CreateJobQuotaExceededException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeCreateJobQuotaExceededException :: Newtype CreateJobQuotaExceededException _
derive instance repGenericCreateJobQuotaExceededException :: Generic CreateJobQuotaExceededException _
instance showCreateJobQuotaExceededException :: Show CreateJobQuotaExceededException where show = genericShow
instance decodeCreateJobQuotaExceededException :: Decode CreateJobQuotaExceededException where decode = genericDecode options
instance encodeCreateJobQuotaExceededException :: Encode CreateJobQuotaExceededException where encode = genericEncode options

-- | Constructs CreateJobQuotaExceededException from required parameters
newCreateJobQuotaExceededException :: CreateJobQuotaExceededException
newCreateJobQuotaExceededException  = CreateJobQuotaExceededException { "message": Nothing }

-- | Constructs CreateJobQuotaExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobQuotaExceededException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> CreateJobQuotaExceededException
newCreateJobQuotaExceededException'  customize = (CreateJobQuotaExceededException <<< customize) { "message": Nothing }



-- | Timestamp of the CreateJob request in ISO8601 date format. For example "2010-03-28T20:27:35Z".
newtype CreationDate = CreationDate Types.Timestamp
derive instance newtypeCreationDate :: Newtype CreationDate _
derive instance repGenericCreationDate :: Generic CreationDate _
instance showCreationDate :: Show CreationDate where show = genericShow
instance decodeCreationDate :: Decode CreationDate where decode = genericDecode options
instance encodeCreationDate :: Encode CreationDate where encode = genericEncode options



-- | The last manifest submitted, which will be used to process the job.
newtype CurrentManifest = CurrentManifest String
derive instance newtypeCurrentManifest :: Newtype CurrentManifest _
derive instance repGenericCurrentManifest :: Generic CurrentManifest _
instance showCurrentManifest :: Show CurrentManifest where show = genericShow
instance decodeCurrentManifest :: Decode CurrentManifest where decode = genericDecode options
instance encodeCurrentManifest :: Encode CurrentManifest where encode = genericEncode options



-- | The associated description for this object.
newtype Description = Description String
derive instance newtypeDescription :: Newtype Description _
derive instance repGenericDescription :: Generic Description _
instance showDescription :: Show Description where show = genericShow
instance decodeDescription :: Decode Description where decode = genericDecode options
instance encodeDescription :: Encode Description where encode = genericEncode options



-- | Number of errors. We return this value when the ProgressCode is Success or SuccessWithErrors.
newtype ErrorCount = ErrorCount Int
derive instance newtypeErrorCount :: Newtype ErrorCount _
derive instance repGenericErrorCount :: Generic ErrorCount _
instance showErrorCount :: Show ErrorCount where show = genericShow
instance decodeErrorCount :: Decode ErrorCount where decode = genericDecode options
instance encodeErrorCount :: Encode ErrorCount where encode = genericEncode options



-- | The human-readable description of a particular error.
newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | Indicates that the specified job has expired out of the system.
newtype ExpiredJobIdException = ExpiredJobIdException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeExpiredJobIdException :: Newtype ExpiredJobIdException _
derive instance repGenericExpiredJobIdException :: Generic ExpiredJobIdException _
instance showExpiredJobIdException :: Show ExpiredJobIdException where show = genericShow
instance decodeExpiredJobIdException :: Decode ExpiredJobIdException where decode = genericDecode options
instance encodeExpiredJobIdException :: Encode ExpiredJobIdException where encode = genericEncode options

-- | Constructs ExpiredJobIdException from required parameters
newExpiredJobIdException :: ExpiredJobIdException
newExpiredJobIdException  = ExpiredJobIdException { "message": Nothing }

-- | Constructs ExpiredJobIdException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpiredJobIdException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> ExpiredJobIdException
newExpiredJobIdException'  customize = (ExpiredJobIdException <<< customize) { "message": Nothing }



newtype GenericString = GenericString String
derive instance newtypeGenericString :: Newtype GenericString _
derive instance repGenericGenericString :: Generic GenericString _
instance showGenericString :: Show GenericString where show = genericShow
instance decodeGenericString :: Decode GenericString where decode = genericDecode options
instance encodeGenericString :: Encode GenericString where encode = genericEncode options



newtype GetShippingLabelInput = GetShippingLabelInput 
  { "jobIds" :: (JobIdList)
  , "name" :: Maybe (Name')
  , "company" :: Maybe (Company')
  , "phoneNumber" :: Maybe (PhoneNumber')
  , "country" :: Maybe (Country')
  , "stateOrProvince" :: Maybe (StateOrProvince')
  , "city" :: Maybe (City')
  , "postalCode" :: Maybe (PostalCode')
  , "street1" :: Maybe (Street1')
  , "street2" :: Maybe (Street2')
  , "street3" :: Maybe (Street3')
  , "APIVersion" :: Maybe (APIVersion)
  }
derive instance newtypeGetShippingLabelInput :: Newtype GetShippingLabelInput _
derive instance repGenericGetShippingLabelInput :: Generic GetShippingLabelInput _
instance showGetShippingLabelInput :: Show GetShippingLabelInput where show = genericShow
instance decodeGetShippingLabelInput :: Decode GetShippingLabelInput where decode = genericDecode options
instance encodeGetShippingLabelInput :: Encode GetShippingLabelInput where encode = genericEncode options

-- | Constructs GetShippingLabelInput from required parameters
newGetShippingLabelInput :: JobIdList -> GetShippingLabelInput
newGetShippingLabelInput _jobIds = GetShippingLabelInput { "jobIds": _jobIds, "APIVersion": Nothing, "city": Nothing, "company": Nothing, "country": Nothing, "name": Nothing, "phoneNumber": Nothing, "postalCode": Nothing, "stateOrProvince": Nothing, "street1": Nothing, "street2": Nothing, "street3": Nothing }

-- | Constructs GetShippingLabelInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetShippingLabelInput' :: JobIdList -> ( { "jobIds" :: (JobIdList) , "name" :: Maybe (Name') , "company" :: Maybe (Company') , "phoneNumber" :: Maybe (PhoneNumber') , "country" :: Maybe (Country') , "stateOrProvince" :: Maybe (StateOrProvince') , "city" :: Maybe (City') , "postalCode" :: Maybe (PostalCode') , "street1" :: Maybe (Street1') , "street2" :: Maybe (Street2') , "street3" :: Maybe (Street3') , "APIVersion" :: Maybe (APIVersion) } -> {"jobIds" :: (JobIdList) , "name" :: Maybe (Name') , "company" :: Maybe (Company') , "phoneNumber" :: Maybe (PhoneNumber') , "country" :: Maybe (Country') , "stateOrProvince" :: Maybe (StateOrProvince') , "city" :: Maybe (City') , "postalCode" :: Maybe (PostalCode') , "street1" :: Maybe (Street1') , "street2" :: Maybe (Street2') , "street3" :: Maybe (Street3') , "APIVersion" :: Maybe (APIVersion) } ) -> GetShippingLabelInput
newGetShippingLabelInput' _jobIds customize = (GetShippingLabelInput <<< customize) { "jobIds": _jobIds, "APIVersion": Nothing, "city": Nothing, "company": Nothing, "country": Nothing, "name": Nothing, "phoneNumber": Nothing, "postalCode": Nothing, "stateOrProvince": Nothing, "street1": Nothing, "street2": Nothing, "street3": Nothing }



newtype GetShippingLabelOutput = GetShippingLabelOutput 
  { "ShippingLabelURL" :: Maybe (GenericString)
  , "Warning" :: Maybe (GenericString)
  }
derive instance newtypeGetShippingLabelOutput :: Newtype GetShippingLabelOutput _
derive instance repGenericGetShippingLabelOutput :: Generic GetShippingLabelOutput _
instance showGetShippingLabelOutput :: Show GetShippingLabelOutput where show = genericShow
instance decodeGetShippingLabelOutput :: Decode GetShippingLabelOutput where decode = genericDecode options
instance encodeGetShippingLabelOutput :: Encode GetShippingLabelOutput where encode = genericEncode options

-- | Constructs GetShippingLabelOutput from required parameters
newGetShippingLabelOutput :: GetShippingLabelOutput
newGetShippingLabelOutput  = GetShippingLabelOutput { "ShippingLabelURL": Nothing, "Warning": Nothing }

-- | Constructs GetShippingLabelOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetShippingLabelOutput' :: ( { "ShippingLabelURL" :: Maybe (GenericString) , "Warning" :: Maybe (GenericString) } -> {"ShippingLabelURL" :: Maybe (GenericString) , "Warning" :: Maybe (GenericString) } ) -> GetShippingLabelOutput
newGetShippingLabelOutput'  customize = (GetShippingLabelOutput <<< customize) { "ShippingLabelURL": Nothing, "Warning": Nothing }



-- | Input structure for the GetStatus operation.
newtype GetStatusInput = GetStatusInput 
  { "JobId" :: (JobId)
  , "APIVersion" :: Maybe (APIVersion)
  }
derive instance newtypeGetStatusInput :: Newtype GetStatusInput _
derive instance repGenericGetStatusInput :: Generic GetStatusInput _
instance showGetStatusInput :: Show GetStatusInput where show = genericShow
instance decodeGetStatusInput :: Decode GetStatusInput where decode = genericDecode options
instance encodeGetStatusInput :: Encode GetStatusInput where encode = genericEncode options

-- | Constructs GetStatusInput from required parameters
newGetStatusInput :: JobId -> GetStatusInput
newGetStatusInput _JobId = GetStatusInput { "JobId": _JobId, "APIVersion": Nothing }

-- | Constructs GetStatusInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetStatusInput' :: JobId -> ( { "JobId" :: (JobId) , "APIVersion" :: Maybe (APIVersion) } -> {"JobId" :: (JobId) , "APIVersion" :: Maybe (APIVersion) } ) -> GetStatusInput
newGetStatusInput' _JobId customize = (GetStatusInput <<< customize) { "JobId": _JobId, "APIVersion": Nothing }



-- | Output structure for the GetStatus operation.
newtype GetStatusOutput = GetStatusOutput 
  { "JobId" :: Maybe (JobId)
  , "JobType" :: Maybe (JobType)
  , "LocationCode" :: Maybe (LocationCode)
  , "LocationMessage" :: Maybe (LocationMessage)
  , "ProgressCode" :: Maybe (ProgressCode)
  , "ProgressMessage" :: Maybe (ProgressMessage)
  , "Carrier" :: Maybe (Carrier)
  , "TrackingNumber" :: Maybe (TrackingNumber)
  , "LogBucket" :: Maybe (LogBucket)
  , "LogKey" :: Maybe (LogKey)
  , "ErrorCount" :: Maybe (ErrorCount)
  , "Signature" :: Maybe (Signature)
  , "SignatureFileContents" :: Maybe (Signature)
  , "CurrentManifest" :: Maybe (CurrentManifest)
  , "CreationDate" :: Maybe (CreationDate)
  , "ArtifactList" :: Maybe (ArtifactList)
  }
derive instance newtypeGetStatusOutput :: Newtype GetStatusOutput _
derive instance repGenericGetStatusOutput :: Generic GetStatusOutput _
instance showGetStatusOutput :: Show GetStatusOutput where show = genericShow
instance decodeGetStatusOutput :: Decode GetStatusOutput where decode = genericDecode options
instance encodeGetStatusOutput :: Encode GetStatusOutput where encode = genericEncode options

-- | Constructs GetStatusOutput from required parameters
newGetStatusOutput :: GetStatusOutput
newGetStatusOutput  = GetStatusOutput { "ArtifactList": Nothing, "Carrier": Nothing, "CreationDate": Nothing, "CurrentManifest": Nothing, "ErrorCount": Nothing, "JobId": Nothing, "JobType": Nothing, "LocationCode": Nothing, "LocationMessage": Nothing, "LogBucket": Nothing, "LogKey": Nothing, "ProgressCode": Nothing, "ProgressMessage": Nothing, "Signature": Nothing, "SignatureFileContents": Nothing, "TrackingNumber": Nothing }

-- | Constructs GetStatusOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetStatusOutput' :: ( { "JobId" :: Maybe (JobId) , "JobType" :: Maybe (JobType) , "LocationCode" :: Maybe (LocationCode) , "LocationMessage" :: Maybe (LocationMessage) , "ProgressCode" :: Maybe (ProgressCode) , "ProgressMessage" :: Maybe (ProgressMessage) , "Carrier" :: Maybe (Carrier) , "TrackingNumber" :: Maybe (TrackingNumber) , "LogBucket" :: Maybe (LogBucket) , "LogKey" :: Maybe (LogKey) , "ErrorCount" :: Maybe (ErrorCount) , "Signature" :: Maybe (Signature) , "SignatureFileContents" :: Maybe (Signature) , "CurrentManifest" :: Maybe (CurrentManifest) , "CreationDate" :: Maybe (CreationDate) , "ArtifactList" :: Maybe (ArtifactList) } -> {"JobId" :: Maybe (JobId) , "JobType" :: Maybe (JobType) , "LocationCode" :: Maybe (LocationCode) , "LocationMessage" :: Maybe (LocationMessage) , "ProgressCode" :: Maybe (ProgressCode) , "ProgressMessage" :: Maybe (ProgressMessage) , "Carrier" :: Maybe (Carrier) , "TrackingNumber" :: Maybe (TrackingNumber) , "LogBucket" :: Maybe (LogBucket) , "LogKey" :: Maybe (LogKey) , "ErrorCount" :: Maybe (ErrorCount) , "Signature" :: Maybe (Signature) , "SignatureFileContents" :: Maybe (Signature) , "CurrentManifest" :: Maybe (CurrentManifest) , "CreationDate" :: Maybe (CreationDate) , "ArtifactList" :: Maybe (ArtifactList) } ) -> GetStatusOutput
newGetStatusOutput'  customize = (GetStatusOutput <<< customize) { "ArtifactList": Nothing, "Carrier": Nothing, "CreationDate": Nothing, "CurrentManifest": Nothing, "ErrorCount": Nothing, "JobId": Nothing, "JobType": Nothing, "LocationCode": Nothing, "LocationMessage": Nothing, "LogBucket": Nothing, "LogKey": Nothing, "ProgressCode": Nothing, "ProgressMessage": Nothing, "Signature": Nothing, "SignatureFileContents": Nothing, "TrackingNumber": Nothing }



-- | The AWS Access Key ID specified in the request did not match the manifest's accessKeyId value. The manifest and the request authentication must use the same AWS Access Key ID.
newtype InvalidAccessKeyIdException = InvalidAccessKeyIdException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidAccessKeyIdException :: Newtype InvalidAccessKeyIdException _
derive instance repGenericInvalidAccessKeyIdException :: Generic InvalidAccessKeyIdException _
instance showInvalidAccessKeyIdException :: Show InvalidAccessKeyIdException where show = genericShow
instance decodeInvalidAccessKeyIdException :: Decode InvalidAccessKeyIdException where decode = genericDecode options
instance encodeInvalidAccessKeyIdException :: Encode InvalidAccessKeyIdException where encode = genericEncode options

-- | Constructs InvalidAccessKeyIdException from required parameters
newInvalidAccessKeyIdException :: InvalidAccessKeyIdException
newInvalidAccessKeyIdException  = InvalidAccessKeyIdException { "message": Nothing }

-- | Constructs InvalidAccessKeyIdException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidAccessKeyIdException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidAccessKeyIdException
newInvalidAccessKeyIdException'  customize = (InvalidAccessKeyIdException <<< customize) { "message": Nothing }



-- | The address specified in the manifest is invalid.
newtype InvalidAddressException = InvalidAddressException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidAddressException :: Newtype InvalidAddressException _
derive instance repGenericInvalidAddressException :: Generic InvalidAddressException _
instance showInvalidAddressException :: Show InvalidAddressException where show = genericShow
instance decodeInvalidAddressException :: Decode InvalidAddressException where decode = genericDecode options
instance encodeInvalidAddressException :: Encode InvalidAddressException where encode = genericEncode options

-- | Constructs InvalidAddressException from required parameters
newInvalidAddressException :: InvalidAddressException
newInvalidAddressException  = InvalidAddressException { "message": Nothing }

-- | Constructs InvalidAddressException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidAddressException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidAddressException
newInvalidAddressException'  customize = (InvalidAddressException <<< customize) { "message": Nothing }



-- | One or more customs parameters was invalid. Please correct and resubmit.
newtype InvalidCustomsException = InvalidCustomsException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidCustomsException :: Newtype InvalidCustomsException _
derive instance repGenericInvalidCustomsException :: Generic InvalidCustomsException _
instance showInvalidCustomsException :: Show InvalidCustomsException where show = genericShow
instance decodeInvalidCustomsException :: Decode InvalidCustomsException where decode = genericDecode options
instance encodeInvalidCustomsException :: Encode InvalidCustomsException where encode = genericEncode options

-- | Constructs InvalidCustomsException from required parameters
newInvalidCustomsException :: InvalidCustomsException
newInvalidCustomsException  = InvalidCustomsException { "message": Nothing }

-- | Constructs InvalidCustomsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidCustomsException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidCustomsException
newInvalidCustomsException'  customize = (InvalidCustomsException <<< customize) { "message": Nothing }



-- | File system specified in export manifest is invalid.
newtype InvalidFileSystemException = InvalidFileSystemException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidFileSystemException :: Newtype InvalidFileSystemException _
derive instance repGenericInvalidFileSystemException :: Generic InvalidFileSystemException _
instance showInvalidFileSystemException :: Show InvalidFileSystemException where show = genericShow
instance decodeInvalidFileSystemException :: Decode InvalidFileSystemException where decode = genericDecode options
instance encodeInvalidFileSystemException :: Encode InvalidFileSystemException where encode = genericEncode options

-- | Constructs InvalidFileSystemException from required parameters
newInvalidFileSystemException :: InvalidFileSystemException
newInvalidFileSystemException  = InvalidFileSystemException { "message": Nothing }

-- | Constructs InvalidFileSystemException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidFileSystemException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidFileSystemException
newInvalidFileSystemException'  customize = (InvalidFileSystemException <<< customize) { "message": Nothing }



-- | The JOBID was missing, not found, or not associated with the AWS account.
newtype InvalidJobIdException = InvalidJobIdException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidJobIdException :: Newtype InvalidJobIdException _
derive instance repGenericInvalidJobIdException :: Generic InvalidJobIdException _
instance showInvalidJobIdException :: Show InvalidJobIdException where show = genericShow
instance decodeInvalidJobIdException :: Decode InvalidJobIdException where decode = genericDecode options
instance encodeInvalidJobIdException :: Encode InvalidJobIdException where encode = genericEncode options

-- | Constructs InvalidJobIdException from required parameters
newInvalidJobIdException :: InvalidJobIdException
newInvalidJobIdException  = InvalidJobIdException { "message": Nothing }

-- | Constructs InvalidJobIdException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidJobIdException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidJobIdException
newInvalidJobIdException'  customize = (InvalidJobIdException <<< customize) { "message": Nothing }



-- | One or more manifest fields was invalid. Please correct and resubmit.
newtype InvalidManifestFieldException = InvalidManifestFieldException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidManifestFieldException :: Newtype InvalidManifestFieldException _
derive instance repGenericInvalidManifestFieldException :: Generic InvalidManifestFieldException _
instance showInvalidManifestFieldException :: Show InvalidManifestFieldException where show = genericShow
instance decodeInvalidManifestFieldException :: Decode InvalidManifestFieldException where decode = genericDecode options
instance encodeInvalidManifestFieldException :: Encode InvalidManifestFieldException where encode = genericEncode options

-- | Constructs InvalidManifestFieldException from required parameters
newInvalidManifestFieldException :: InvalidManifestFieldException
newInvalidManifestFieldException  = InvalidManifestFieldException { "message": Nothing }

-- | Constructs InvalidManifestFieldException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidManifestFieldException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidManifestFieldException
newInvalidManifestFieldException'  customize = (InvalidManifestFieldException <<< customize) { "message": Nothing }



-- | One or more parameters had an invalid value.
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": Nothing }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": Nothing }



-- | The client tool version is invalid.
newtype InvalidVersionException = InvalidVersionException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidVersionException :: Newtype InvalidVersionException _
derive instance repGenericInvalidVersionException :: Generic InvalidVersionException _
instance showInvalidVersionException :: Show InvalidVersionException where show = genericShow
instance decodeInvalidVersionException :: Decode InvalidVersionException where decode = genericDecode options
instance encodeInvalidVersionException :: Encode InvalidVersionException where encode = genericEncode options

-- | Constructs InvalidVersionException from required parameters
newInvalidVersionException :: InvalidVersionException
newInvalidVersionException  = InvalidVersionException { "message": Nothing }

-- | Constructs InvalidVersionException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidVersionException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> InvalidVersionException
newInvalidVersionException'  customize = (InvalidVersionException <<< customize) { "message": Nothing }



-- | Indicates whether the job was canceled.
newtype IsCanceled = IsCanceled Boolean
derive instance newtypeIsCanceled :: Newtype IsCanceled _
derive instance repGenericIsCanceled :: Generic IsCanceled _
instance showIsCanceled :: Show IsCanceled where show = genericShow
instance decodeIsCanceled :: Decode IsCanceled where decode = genericDecode options
instance encodeIsCanceled :: Encode IsCanceled where encode = genericEncode options



-- | Indicates whether the list of jobs was truncated. If true, then call ListJobs again using the last JobId element as the marker.
newtype IsTruncated = IsTruncated Boolean
derive instance newtypeIsTruncated :: Newtype IsTruncated _
derive instance repGenericIsTruncated :: Generic IsTruncated _
instance showIsTruncated :: Show IsTruncated where show = genericShow
instance decodeIsTruncated :: Decode IsTruncated where decode = genericDecode options
instance encodeIsTruncated :: Encode IsTruncated where encode = genericEncode options



-- | Representation of a job returned by the ListJobs operation.
newtype Job = Job 
  { "JobId" :: Maybe (JobId)
  , "CreationDate" :: Maybe (CreationDate)
  , "IsCanceled" :: Maybe (IsCanceled)
  , "JobType" :: Maybe (JobType)
  }
derive instance newtypeJob :: Newtype Job _
derive instance repGenericJob :: Generic Job _
instance showJob :: Show Job where show = genericShow
instance decodeJob :: Decode Job where decode = genericDecode options
instance encodeJob :: Encode Job where encode = genericEncode options

-- | Constructs Job from required parameters
newJob :: Job
newJob  = Job { "CreationDate": Nothing, "IsCanceled": Nothing, "JobId": Nothing, "JobType": Nothing }

-- | Constructs Job's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJob' :: ( { "JobId" :: Maybe (JobId) , "CreationDate" :: Maybe (CreationDate) , "IsCanceled" :: Maybe (IsCanceled) , "JobType" :: Maybe (JobType) } -> {"JobId" :: Maybe (JobId) , "CreationDate" :: Maybe (CreationDate) , "IsCanceled" :: Maybe (IsCanceled) , "JobType" :: Maybe (JobType) } ) -> Job
newJob'  customize = (Job <<< customize) { "CreationDate": Nothing, "IsCanceled": Nothing, "JobId": Nothing, "JobType": Nothing }



-- | A unique identifier which refers to a particular job.
newtype JobId = JobId String
derive instance newtypeJobId :: Newtype JobId _
derive instance repGenericJobId :: Generic JobId _
instance showJobId :: Show JobId where show = genericShow
instance decodeJobId :: Decode JobId where decode = genericDecode options
instance encodeJobId :: Encode JobId where encode = genericEncode options



newtype JobIdList = JobIdList (Array GenericString)
derive instance newtypeJobIdList :: Newtype JobIdList _
derive instance repGenericJobIdList :: Generic JobIdList _
instance showJobIdList :: Show JobIdList where show = genericShow
instance decodeJobIdList :: Decode JobIdList where decode = genericDecode options
instance encodeJobIdList :: Encode JobIdList where encode = genericEncode options



-- | Specifies whether the job to initiate is an import or export job.
newtype JobType = JobType String
derive instance newtypeJobType :: Newtype JobType _
derive instance repGenericJobType :: Generic JobType _
instance showJobType :: Show JobType where show = genericShow
instance decodeJobType :: Decode JobType where decode = genericDecode options
instance encodeJobType :: Encode JobType where encode = genericEncode options



-- | A list container for Jobs returned by the ListJobs operation.
newtype JobsList = JobsList (Array Job)
derive instance newtypeJobsList :: Newtype JobsList _
derive instance repGenericJobsList :: Generic JobsList _
instance showJobsList :: Show JobsList where show = genericShow
instance decodeJobsList :: Decode JobsList where decode = genericDecode options
instance encodeJobsList :: Encode JobsList where encode = genericEncode options



-- | Input structure for the ListJobs operation.
newtype ListJobsInput = ListJobsInput 
  { "MaxJobs" :: Maybe (MaxJobs)
  , "Marker" :: Maybe (Marker)
  , "APIVersion" :: Maybe (APIVersion)
  }
derive instance newtypeListJobsInput :: Newtype ListJobsInput _
derive instance repGenericListJobsInput :: Generic ListJobsInput _
instance showListJobsInput :: Show ListJobsInput where show = genericShow
instance decodeListJobsInput :: Decode ListJobsInput where decode = genericDecode options
instance encodeListJobsInput :: Encode ListJobsInput where encode = genericEncode options

-- | Constructs ListJobsInput from required parameters
newListJobsInput :: ListJobsInput
newListJobsInput  = ListJobsInput { "APIVersion": Nothing, "Marker": Nothing, "MaxJobs": Nothing }

-- | Constructs ListJobsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsInput' :: ( { "MaxJobs" :: Maybe (MaxJobs) , "Marker" :: Maybe (Marker) , "APIVersion" :: Maybe (APIVersion) } -> {"MaxJobs" :: Maybe (MaxJobs) , "Marker" :: Maybe (Marker) , "APIVersion" :: Maybe (APIVersion) } ) -> ListJobsInput
newListJobsInput'  customize = (ListJobsInput <<< customize) { "APIVersion": Nothing, "Marker": Nothing, "MaxJobs": Nothing }



-- | Output structure for the ListJobs operation.
newtype ListJobsOutput = ListJobsOutput 
  { "Jobs" :: Maybe (JobsList)
  , "IsTruncated" :: Maybe (IsTruncated)
  }
derive instance newtypeListJobsOutput :: Newtype ListJobsOutput _
derive instance repGenericListJobsOutput :: Generic ListJobsOutput _
instance showListJobsOutput :: Show ListJobsOutput where show = genericShow
instance decodeListJobsOutput :: Decode ListJobsOutput where decode = genericDecode options
instance encodeListJobsOutput :: Encode ListJobsOutput where encode = genericEncode options

-- | Constructs ListJobsOutput from required parameters
newListJobsOutput :: ListJobsOutput
newListJobsOutput  = ListJobsOutput { "IsTruncated": Nothing, "Jobs": Nothing }

-- | Constructs ListJobsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsOutput' :: ( { "Jobs" :: Maybe (JobsList) , "IsTruncated" :: Maybe (IsTruncated) } -> {"Jobs" :: Maybe (JobsList) , "IsTruncated" :: Maybe (IsTruncated) } ) -> ListJobsOutput
newListJobsOutput'  customize = (ListJobsOutput <<< customize) { "IsTruncated": Nothing, "Jobs": Nothing }



-- | A token representing the location of the storage device, such as "AtAWS".
newtype LocationCode = LocationCode String
derive instance newtypeLocationCode :: Newtype LocationCode _
derive instance repGenericLocationCode :: Generic LocationCode _
instance showLocationCode :: Show LocationCode where show = genericShow
instance decodeLocationCode :: Decode LocationCode where decode = genericDecode options
instance encodeLocationCode :: Encode LocationCode where encode = genericEncode options



-- | A more human readable form of the physical location of the storage device.
newtype LocationMessage = LocationMessage String
derive instance newtypeLocationMessage :: Newtype LocationMessage _
derive instance repGenericLocationMessage :: Generic LocationMessage _
instance showLocationMessage :: Show LocationMessage where show = genericShow
instance decodeLocationMessage :: Decode LocationMessage where decode = genericDecode options
instance encodeLocationMessage :: Encode LocationMessage where encode = genericEncode options



-- | Amazon S3 bucket for user logs.
newtype LogBucket = LogBucket String
derive instance newtypeLogBucket :: Newtype LogBucket _
derive instance repGenericLogBucket :: Generic LogBucket _
instance showLogBucket :: Show LogBucket where show = genericShow
instance decodeLogBucket :: Decode LogBucket where decode = genericDecode options
instance encodeLogBucket :: Encode LogBucket where encode = genericEncode options



-- | The key where the user logs were stored.
newtype LogKey = LogKey String
derive instance newtypeLogKey :: Newtype LogKey _
derive instance repGenericLogKey :: Generic LogKey _
instance showLogKey :: Show LogKey where show = genericShow
instance decodeLogKey :: Decode LogKey where decode = genericDecode options
instance encodeLogKey :: Encode LogKey where encode = genericEncode options



-- | Your manifest is not well-formed.
newtype MalformedManifestException = MalformedManifestException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeMalformedManifestException :: Newtype MalformedManifestException _
derive instance repGenericMalformedManifestException :: Generic MalformedManifestException _
instance showMalformedManifestException :: Show MalformedManifestException where show = genericShow
instance decodeMalformedManifestException :: Decode MalformedManifestException where decode = genericDecode options
instance encodeMalformedManifestException :: Encode MalformedManifestException where encode = genericEncode options

-- | Constructs MalformedManifestException from required parameters
newMalformedManifestException :: MalformedManifestException
newMalformedManifestException  = MalformedManifestException { "message": Nothing }

-- | Constructs MalformedManifestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedManifestException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> MalformedManifestException
newMalformedManifestException'  customize = (MalformedManifestException <<< customize) { "message": Nothing }



-- | The UTF-8 encoded text of the manifest file.
newtype Manifest = Manifest String
derive instance newtypeManifest :: Newtype Manifest _
derive instance repGenericManifest :: Generic Manifest _
instance showManifest :: Show Manifest where show = genericShow
instance decodeManifest :: Decode Manifest where decode = genericDecode options
instance encodeManifest :: Encode Manifest where encode = genericEncode options



-- | For internal use only.
newtype ManifestAddendum = ManifestAddendum String
derive instance newtypeManifestAddendum :: Newtype ManifestAddendum _
derive instance repGenericManifestAddendum :: Generic ManifestAddendum _
instance showManifestAddendum :: Show ManifestAddendum where show = genericShow
instance decodeManifestAddendum :: Decode ManifestAddendum where decode = genericDecode options
instance encodeManifestAddendum :: Encode ManifestAddendum where encode = genericEncode options



-- | Specifies the JOBID to start after when listing the jobs created with your account. AWS Import/Export lists your jobs in reverse chronological order. See MaxJobs.
newtype Marker = Marker String
derive instance newtypeMarker :: Newtype Marker _
derive instance repGenericMarker :: Generic Marker _
instance showMarker :: Show Marker where show = genericShow
instance decodeMarker :: Decode Marker where decode = genericDecode options
instance encodeMarker :: Encode Marker where encode = genericEncode options



-- | Sets the maximum number of jobs returned in the response. If there are additional jobs that were not returned because MaxJobs was exceeded, the response contains &lt;IsTruncated&gt;true&lt;/IsTruncated&gt;. To return the additional jobs, see Marker.
newtype MaxJobs = MaxJobs Int
derive instance newtypeMaxJobs :: Newtype MaxJobs _
derive instance repGenericMaxJobs :: Generic MaxJobs _
instance showMaxJobs :: Show MaxJobs where show = genericShow
instance decodeMaxJobs :: Decode MaxJobs where decode = genericDecode options
instance encodeMaxJobs :: Encode MaxJobs where encode = genericEncode options



-- | One or more required customs parameters was missing from the manifest.
newtype MissingCustomsException = MissingCustomsException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeMissingCustomsException :: Newtype MissingCustomsException _
derive instance repGenericMissingCustomsException :: Generic MissingCustomsException _
instance showMissingCustomsException :: Show MissingCustomsException where show = genericShow
instance decodeMissingCustomsException :: Decode MissingCustomsException where decode = genericDecode options
instance encodeMissingCustomsException :: Encode MissingCustomsException where encode = genericEncode options

-- | Constructs MissingCustomsException from required parameters
newMissingCustomsException :: MissingCustomsException
newMissingCustomsException  = MissingCustomsException { "message": Nothing }

-- | Constructs MissingCustomsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMissingCustomsException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> MissingCustomsException
newMissingCustomsException'  customize = (MissingCustomsException <<< customize) { "message": Nothing }



-- | One or more required fields were missing from the manifest file. Please correct and resubmit.
newtype MissingManifestFieldException = MissingManifestFieldException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeMissingManifestFieldException :: Newtype MissingManifestFieldException _
derive instance repGenericMissingManifestFieldException :: Generic MissingManifestFieldException _
instance showMissingManifestFieldException :: Show MissingManifestFieldException where show = genericShow
instance decodeMissingManifestFieldException :: Decode MissingManifestFieldException where decode = genericDecode options
instance encodeMissingManifestFieldException :: Encode MissingManifestFieldException where encode = genericEncode options

-- | Constructs MissingManifestFieldException from required parameters
newMissingManifestFieldException :: MissingManifestFieldException
newMissingManifestFieldException  = MissingManifestFieldException { "message": Nothing }

-- | Constructs MissingManifestFieldException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMissingManifestFieldException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> MissingManifestFieldException
newMissingManifestFieldException'  customize = (MissingManifestFieldException <<< customize) { "message": Nothing }



-- | One or more required parameters was missing from the request.
newtype MissingParameterException = MissingParameterException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeMissingParameterException :: Newtype MissingParameterException _
derive instance repGenericMissingParameterException :: Generic MissingParameterException _
instance showMissingParameterException :: Show MissingParameterException where show = genericShow
instance decodeMissingParameterException :: Decode MissingParameterException where decode = genericDecode options
instance encodeMissingParameterException :: Encode MissingParameterException where encode = genericEncode options

-- | Constructs MissingParameterException from required parameters
newMissingParameterException :: MissingParameterException
newMissingParameterException  = MissingParameterException { "message": Nothing }

-- | Constructs MissingParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMissingParameterException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> MissingParameterException
newMissingParameterException'  customize = (MissingParameterException <<< customize) { "message": Nothing }



-- | Your manifest file contained buckets from multiple regions. A job is restricted to buckets from one region. Please correct and resubmit.
newtype MultipleRegionsException = MultipleRegionsException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeMultipleRegionsException :: Newtype MultipleRegionsException _
derive instance repGenericMultipleRegionsException :: Generic MultipleRegionsException _
instance showMultipleRegionsException :: Show MultipleRegionsException where show = genericShow
instance decodeMultipleRegionsException :: Decode MultipleRegionsException where decode = genericDecode options
instance encodeMultipleRegionsException :: Encode MultipleRegionsException where encode = genericEncode options

-- | Constructs MultipleRegionsException from required parameters
newMultipleRegionsException :: MultipleRegionsException
newMultipleRegionsException  = MultipleRegionsException { "message": Nothing }

-- | Constructs MultipleRegionsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMultipleRegionsException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> MultipleRegionsException
newMultipleRegionsException'  customize = (MultipleRegionsException <<< customize) { "message": Nothing }



-- | The specified bucket does not exist. Create the specified bucket or change the manifest's bucket, exportBucket, or logBucket field to a bucket that the account, as specified by the manifest's Access Key ID, has write permissions to.
newtype NoSuchBucketException = NoSuchBucketException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNoSuchBucketException :: Newtype NoSuchBucketException _
derive instance repGenericNoSuchBucketException :: Generic NoSuchBucketException _
instance showNoSuchBucketException :: Show NoSuchBucketException where show = genericShow
instance decodeNoSuchBucketException :: Decode NoSuchBucketException where decode = genericDecode options
instance encodeNoSuchBucketException :: Encode NoSuchBucketException where encode = genericEncode options

-- | Constructs NoSuchBucketException from required parameters
newNoSuchBucketException :: NoSuchBucketException
newNoSuchBucketException  = NoSuchBucketException { "message": Nothing }

-- | Constructs NoSuchBucketException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchBucketException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> NoSuchBucketException
newNoSuchBucketException'  customize = (NoSuchBucketException <<< customize) { "message": Nothing }



-- | A token representing the state of the job, such as "Started".
newtype ProgressCode = ProgressCode String
derive instance newtypeProgressCode :: Newtype ProgressCode _
derive instance repGenericProgressCode :: Generic ProgressCode _
instance showProgressCode :: Show ProgressCode where show = genericShow
instance decodeProgressCode :: Decode ProgressCode where decode = genericDecode options
instance encodeProgressCode :: Encode ProgressCode where encode = genericEncode options



-- | A more human readable form of the job status.
newtype ProgressMessage = ProgressMessage String
derive instance newtypeProgressMessage :: Newtype ProgressMessage _
derive instance repGenericProgressMessage :: Generic ProgressMessage _
instance showProgressMessage :: Show ProgressMessage where show = genericShow
instance decodeProgressMessage :: Decode ProgressMessage where decode = genericDecode options
instance encodeProgressMessage :: Encode ProgressMessage where encode = genericEncode options



-- | An encrypted code used to authenticate the request and response, for example, "DV+TpDfx1/TdSE9ktyK9k/bDTVI=". Only use this value is you want to create the signature file yourself. Generally you should use the SignatureFileContents value.
newtype Signature = Signature String
derive instance newtypeSignature :: Newtype Signature _
derive instance repGenericSignature :: Generic Signature _
instance showSignature :: Show Signature where show = genericShow
instance decodeSignature :: Decode Signature where decode = genericDecode options
instance encodeSignature :: Encode Signature where encode = genericEncode options



-- | The actual text of the SIGNATURE file to be written to disk.
newtype SignatureFileContents = SignatureFileContents String
derive instance newtypeSignatureFileContents :: Newtype SignatureFileContents _
derive instance repGenericSignatureFileContents :: Generic SignatureFileContents _
instance showSignatureFileContents :: Show SignatureFileContents where show = genericShow
instance decodeSignatureFileContents :: Decode SignatureFileContents where decode = genericDecode options
instance encodeSignatureFileContents :: Encode SignatureFileContents where encode = genericEncode options



-- | Specifies whether (true) or not (false) AWS Import/Export updated your job.
newtype Success = Success Boolean
derive instance newtypeSuccess :: Newtype Success _
derive instance repGenericSuccess :: Generic Success _
instance showSuccess :: Show Success where show = genericShow
instance decodeSuccess :: Decode Success where decode = genericDecode options
instance encodeSuccess :: Encode Success where encode = genericEncode options



-- | The shipping tracking number assigned by AWS Import/Export to the storage device when it's returned to you. We return this value when the LocationCode is "Returned".
newtype TrackingNumber = TrackingNumber String
derive instance newtypeTrackingNumber :: Newtype TrackingNumber _
derive instance repGenericTrackingNumber :: Generic TrackingNumber _
instance showTrackingNumber :: Show TrackingNumber where show = genericShow
instance decodeTrackingNumber :: Decode TrackingNumber where decode = genericDecode options
instance encodeTrackingNumber :: Encode TrackingNumber where encode = genericEncode options



-- | The URL for a given Artifact.
newtype URL = URL String
derive instance newtypeURL :: Newtype URL _
derive instance repGenericURL :: Generic URL _
instance showURL :: Show URL where show = genericShow
instance decodeURL :: Decode URL where decode = genericDecode options
instance encodeURL :: Encode URL where encode = genericEncode options



-- | AWS Import/Export cannot cancel the job
newtype UnableToCancelJobIdException = UnableToCancelJobIdException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeUnableToCancelJobIdException :: Newtype UnableToCancelJobIdException _
derive instance repGenericUnableToCancelJobIdException :: Generic UnableToCancelJobIdException _
instance showUnableToCancelJobIdException :: Show UnableToCancelJobIdException where show = genericShow
instance decodeUnableToCancelJobIdException :: Decode UnableToCancelJobIdException where decode = genericDecode options
instance encodeUnableToCancelJobIdException :: Encode UnableToCancelJobIdException where encode = genericEncode options

-- | Constructs UnableToCancelJobIdException from required parameters
newUnableToCancelJobIdException :: UnableToCancelJobIdException
newUnableToCancelJobIdException  = UnableToCancelJobIdException { "message": Nothing }

-- | Constructs UnableToCancelJobIdException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnableToCancelJobIdException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> UnableToCancelJobIdException
newUnableToCancelJobIdException'  customize = (UnableToCancelJobIdException <<< customize) { "message": Nothing }



-- | AWS Import/Export cannot update the job
newtype UnableToUpdateJobIdException = UnableToUpdateJobIdException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeUnableToUpdateJobIdException :: Newtype UnableToUpdateJobIdException _
derive instance repGenericUnableToUpdateJobIdException :: Generic UnableToUpdateJobIdException _
instance showUnableToUpdateJobIdException :: Show UnableToUpdateJobIdException where show = genericShow
instance decodeUnableToUpdateJobIdException :: Decode UnableToUpdateJobIdException where decode = genericDecode options
instance encodeUnableToUpdateJobIdException :: Encode UnableToUpdateJobIdException where encode = genericEncode options

-- | Constructs UnableToUpdateJobIdException from required parameters
newUnableToUpdateJobIdException :: UnableToUpdateJobIdException
newUnableToUpdateJobIdException  = UnableToUpdateJobIdException { "message": Nothing }

-- | Constructs UnableToUpdateJobIdException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnableToUpdateJobIdException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> UnableToUpdateJobIdException
newUnableToUpdateJobIdException'  customize = (UnableToUpdateJobIdException <<< customize) { "message": Nothing }



-- | Input structure for the UpateJob operation.
newtype UpdateJobInput = UpdateJobInput 
  { "JobId" :: (JobId)
  , "Manifest" :: (Manifest)
  , "JobType" :: (JobType)
  , "ValidateOnly" :: (ValidateOnly)
  , "APIVersion" :: Maybe (APIVersion)
  }
derive instance newtypeUpdateJobInput :: Newtype UpdateJobInput _
derive instance repGenericUpdateJobInput :: Generic UpdateJobInput _
instance showUpdateJobInput :: Show UpdateJobInput where show = genericShow
instance decodeUpdateJobInput :: Decode UpdateJobInput where decode = genericDecode options
instance encodeUpdateJobInput :: Encode UpdateJobInput where encode = genericEncode options

-- | Constructs UpdateJobInput from required parameters
newUpdateJobInput :: JobId -> JobType -> Manifest -> ValidateOnly -> UpdateJobInput
newUpdateJobInput _JobId _JobType _Manifest _ValidateOnly = UpdateJobInput { "JobId": _JobId, "JobType": _JobType, "Manifest": _Manifest, "ValidateOnly": _ValidateOnly, "APIVersion": Nothing }

-- | Constructs UpdateJobInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobInput' :: JobId -> JobType -> Manifest -> ValidateOnly -> ( { "JobId" :: (JobId) , "Manifest" :: (Manifest) , "JobType" :: (JobType) , "ValidateOnly" :: (ValidateOnly) , "APIVersion" :: Maybe (APIVersion) } -> {"JobId" :: (JobId) , "Manifest" :: (Manifest) , "JobType" :: (JobType) , "ValidateOnly" :: (ValidateOnly) , "APIVersion" :: Maybe (APIVersion) } ) -> UpdateJobInput
newUpdateJobInput' _JobId _JobType _Manifest _ValidateOnly customize = (UpdateJobInput <<< customize) { "JobId": _JobId, "JobType": _JobType, "Manifest": _Manifest, "ValidateOnly": _ValidateOnly, "APIVersion": Nothing }



-- | Output structure for the UpateJob operation.
newtype UpdateJobOutput = UpdateJobOutput 
  { "Success" :: Maybe (Success)
  , "WarningMessage" :: Maybe (WarningMessage)
  , "ArtifactList" :: Maybe (ArtifactList)
  }
derive instance newtypeUpdateJobOutput :: Newtype UpdateJobOutput _
derive instance repGenericUpdateJobOutput :: Generic UpdateJobOutput _
instance showUpdateJobOutput :: Show UpdateJobOutput where show = genericShow
instance decodeUpdateJobOutput :: Decode UpdateJobOutput where decode = genericDecode options
instance encodeUpdateJobOutput :: Encode UpdateJobOutput where encode = genericEncode options

-- | Constructs UpdateJobOutput from required parameters
newUpdateJobOutput :: UpdateJobOutput
newUpdateJobOutput  = UpdateJobOutput { "ArtifactList": Nothing, "Success": Nothing, "WarningMessage": Nothing }

-- | Constructs UpdateJobOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobOutput' :: ( { "Success" :: Maybe (Success) , "WarningMessage" :: Maybe (WarningMessage) , "ArtifactList" :: Maybe (ArtifactList) } -> {"Success" :: Maybe (Success) , "WarningMessage" :: Maybe (WarningMessage) , "ArtifactList" :: Maybe (ArtifactList) } ) -> UpdateJobOutput
newUpdateJobOutput'  customize = (UpdateJobOutput <<< customize) { "ArtifactList": Nothing, "Success": Nothing, "WarningMessage": Nothing }



-- | Validate the manifest and parameter values in the request but do not actually create a job.
newtype ValidateOnly = ValidateOnly Boolean
derive instance newtypeValidateOnly :: Newtype ValidateOnly _
derive instance repGenericValidateOnly :: Generic ValidateOnly _
instance showValidateOnly :: Show ValidateOnly where show = genericShow
instance decodeValidateOnly :: Decode ValidateOnly where decode = genericDecode options
instance encodeValidateOnly :: Encode ValidateOnly where encode = genericEncode options



-- | An optional message notifying you of non-fatal issues with the job, such as use of an incompatible Amazon S3 bucket name.
newtype WarningMessage = WarningMessage String
derive instance newtypeWarningMessage :: Newtype WarningMessage _
derive instance repGenericWarningMessage :: Generic WarningMessage _
instance showWarningMessage :: Show WarningMessage where show = genericShow
instance decodeWarningMessage :: Decode WarningMessage where decode = genericDecode options
instance encodeWarningMessage :: Encode WarningMessage where encode = genericEncode options



-- | Specifies the name of your city for the return address.
newtype City' = City' String
derive instance newtypeCity' :: Newtype City' _
derive instance repGenericCity' :: Generic City' _
instance showCity' :: Show City' where show = genericShow
instance decodeCity' :: Decode City' where decode = genericDecode options
instance encodeCity' :: Encode City' where encode = genericEncode options



-- | Specifies the name of the company that will ship this package.
newtype Company' = Company' String
derive instance newtypeCompany' :: Newtype Company' _
derive instance repGenericCompany' :: Generic Company' _
instance showCompany' :: Show Company' where show = genericShow
instance decodeCompany' :: Decode Company' where decode = genericDecode options
instance encodeCompany' :: Encode Company' where encode = genericEncode options



-- | Specifies the name of your country for the return address.
newtype Country' = Country' String
derive instance newtypeCountry' :: Newtype Country' _
derive instance repGenericCountry' :: Generic Country' _
instance showCountry' :: Show Country' where show = genericShow
instance decodeCountry' :: Decode Country' where decode = genericDecode options
instance encodeCountry' :: Encode Country' where encode = genericEncode options



-- | Specifies the name of the person responsible for shipping this package.
newtype Name' = Name' String
derive instance newtypeName' :: Newtype Name' _
derive instance repGenericName' :: Generic Name' _
instance showName' :: Show Name' where show = genericShow
instance decodeName' :: Decode Name' where decode = genericDecode options
instance encodeName' :: Encode Name' where encode = genericEncode options



-- | Specifies the phone number of the person responsible for shipping this package.
newtype PhoneNumber' = PhoneNumber' String
derive instance newtypePhoneNumber' :: Newtype PhoneNumber' _
derive instance repGenericPhoneNumber' :: Generic PhoneNumber' _
instance showPhoneNumber' :: Show PhoneNumber' where show = genericShow
instance decodePhoneNumber' :: Decode PhoneNumber' where decode = genericDecode options
instance encodePhoneNumber' :: Encode PhoneNumber' where encode = genericEncode options



-- | Specifies the postal code for the return address.
newtype PostalCode' = PostalCode' String
derive instance newtypePostalCode' :: Newtype PostalCode' _
derive instance repGenericPostalCode' :: Generic PostalCode' _
instance showPostalCode' :: Show PostalCode' where show = genericShow
instance decodePostalCode' :: Decode PostalCode' where decode = genericDecode options
instance encodePostalCode' :: Encode PostalCode' where encode = genericEncode options



-- | Specifies the name of your state or your province for the return address.
newtype StateOrProvince' = StateOrProvince' String
derive instance newtypeStateOrProvince' :: Newtype StateOrProvince' _
derive instance repGenericStateOrProvince' :: Generic StateOrProvince' _
instance showStateOrProvince' :: Show StateOrProvince' where show = genericShow
instance decodeStateOrProvince' :: Decode StateOrProvince' where decode = genericDecode options
instance encodeStateOrProvince' :: Encode StateOrProvince' where encode = genericEncode options



-- | Specifies the first part of the street address for the return address, for example 1234 Main Street.
newtype Street1' = Street1' String
derive instance newtypeStreet1' :: Newtype Street1' _
derive instance repGenericStreet1' :: Generic Street1' _
instance showStreet1' :: Show Street1' where show = genericShow
instance decodeStreet1' :: Decode Street1' where decode = genericDecode options
instance encodeStreet1' :: Encode Street1' where encode = genericEncode options



-- | Specifies the optional second part of the street address for the return address, for example Suite 100.
newtype Street2' = Street2' String
derive instance newtypeStreet2' :: Newtype Street2' _
derive instance repGenericStreet2' :: Generic Street2' _
instance showStreet2' :: Show Street2' where show = genericShow
instance decodeStreet2' :: Decode Street2' where decode = genericDecode options
instance encodeStreet2' :: Encode Street2' where encode = genericEncode options



-- | Specifies the optional third part of the street address for the return address, for example c/o Jane Doe.
newtype Street3' = Street3' String
derive instance newtypeStreet3' :: Newtype Street3' _
derive instance repGenericStreet3' :: Generic Street3' _
instance showStreet3' :: Show Street3' where show = genericShow
instance decodeStreet3' :: Decode Street3' where decode = genericDecode options
instance encodeStreet3' :: Encode Street3' where encode = genericEncode options

