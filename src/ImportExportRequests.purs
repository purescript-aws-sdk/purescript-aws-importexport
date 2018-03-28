
module AWS.ImportExport.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.ImportExport as ImportExport
import AWS.ImportExport.Types as ImportExportTypes


-- | This operation cancels a specified job. Only the job owner can cancel it. The operation fails if the job has already started or is complete.
cancelJob :: forall eff. ImportExport.Service -> ImportExportTypes.CancelJobInput -> Aff (exception :: EXCEPTION | eff) ImportExportTypes.CancelJobOutput
cancelJob (ImportExport.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelJob"


-- | This operation initiates the process of scheduling an upload or download of your data. You include in the request a manifest that describes the data transfer specifics. The response to the request includes a job ID, which you can use in other operations, a signature that you use to identify your storage device, and the address where you should ship your storage device.
createJob :: forall eff. ImportExport.Service -> ImportExportTypes.CreateJobInput -> Aff (exception :: EXCEPTION | eff) ImportExportTypes.CreateJobOutput
createJob (ImportExport.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createJob"


-- | This operation generates a pre-paid UPS shipping label that you will use to ship your device to AWS for processing.
getShippingLabel :: forall eff. ImportExport.Service -> ImportExportTypes.GetShippingLabelInput -> Aff (exception :: EXCEPTION | eff) ImportExportTypes.GetShippingLabelOutput
getShippingLabel (ImportExport.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getShippingLabel"


-- | This operation returns information about a job, including where the job is in the processing pipeline, the status of the results, and the signature value associated with the job. You can only return information about jobs you own.
getStatus :: forall eff. ImportExport.Service -> ImportExportTypes.GetStatusInput -> Aff (exception :: EXCEPTION | eff) ImportExportTypes.GetStatusOutput
getStatus (ImportExport.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getStatus"


-- | This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.
listJobs :: forall eff. ImportExport.Service -> ImportExportTypes.ListJobsInput -> Aff (exception :: EXCEPTION | eff) ImportExportTypes.ListJobsOutput
listJobs (ImportExport.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listJobs"


-- | You use this operation to change the parameters specified in the original manifest file by supplying a new manifest file. The manifest file attached to this request replaces the original manifest file. You can only use the operation after a CreateJob request but before the data transfer starts and you can only use it on jobs you own.
updateJob :: forall eff. ImportExport.Service -> ImportExportTypes.UpdateJobInput -> Aff (exception :: EXCEPTION | eff) ImportExportTypes.UpdateJobOutput
updateJob (ImportExport.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateJob"
