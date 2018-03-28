## Module AWS.ImportExport.Requests

#### `cancelJob`

``` purescript
cancelJob :: forall eff. Service -> CancelJobInput -> Aff (exception :: EXCEPTION | eff) CancelJobOutput
```

This operation cancels a specified job. Only the job owner can cancel it. The operation fails if the job has already started or is complete.

#### `createJob`

``` purescript
createJob :: forall eff. Service -> CreateJobInput -> Aff (exception :: EXCEPTION | eff) CreateJobOutput
```

This operation initiates the process of scheduling an upload or download of your data. You include in the request a manifest that describes the data transfer specifics. The response to the request includes a job ID, which you can use in other operations, a signature that you use to identify your storage device, and the address where you should ship your storage device.

#### `getShippingLabel`

``` purescript
getShippingLabel :: forall eff. Service -> GetShippingLabelInput -> Aff (exception :: EXCEPTION | eff) GetShippingLabelOutput
```

This operation generates a pre-paid UPS shipping label that you will use to ship your device to AWS for processing.

#### `getStatus`

``` purescript
getStatus :: forall eff. Service -> GetStatusInput -> Aff (exception :: EXCEPTION | eff) GetStatusOutput
```

This operation returns information about a job, including where the job is in the processing pipeline, the status of the results, and the signature value associated with the job. You can only return information about jobs you own.

#### `listJobs`

``` purescript
listJobs :: forall eff. Service -> ListJobsInput -> Aff (exception :: EXCEPTION | eff) ListJobsOutput
```

This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.

#### `updateJob`

``` purescript
updateJob :: forall eff. Service -> UpdateJobInput -> Aff (exception :: EXCEPTION | eff) UpdateJobOutput
```

You use this operation to change the parameters specified in the original manifest file by supplying a new manifest file. The manifest file attached to this request replaces the original manifest file. You can only use the operation after a CreateJob request but before the data transfer starts and you can only use it on jobs you own.


