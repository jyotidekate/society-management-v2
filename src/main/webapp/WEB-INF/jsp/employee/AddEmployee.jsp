<jsp:include page="../header.jsp"></jsp:include>

<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true" ; onload="addemployeeBranch();RelativeRelationDropdownforaddemployee();">
    <form method="post" action="saveEmployee" name="validationform" modelAttribute="emp" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="_EVENTTARGET" id="_EVENTTARGET" value="" />
<input type="hidden" name="_EVENTARGUMENT" id="_EVENTARGUMENT" value="" />
<input type="hidden" name="_LASTFOCUS" id="_LASTFOCUS" value="" />
<input type="hidden" name="_VIEWSTATE" id="_VIEWSTATE" value="/wEPDwUKMTc2MDM3NjM0NA8WAh4ISXNNb2RpZnlkFgJmD2QWBAIBD2QWAgIDD2QWAmYPFgIeBFRleHQFEkVRRkkgTklESEkgTElNSVRFRGQCAw9kFh4CAQ8WAh4HVmlzaWJsZWdkAgMPFgIfAmdkAgUPFgIfAmdkAgcPFgIfAmdkAgkPFgIfAQURTWFpbiBPZmZpY2UgLSAwMDFkAgsPFgIfAQUUMDEvMDgvMjAyMiAtIDEwOjIwQU1kAg0PFgIfAQUTMDEvMDgvMjAyMiAtIDI6NDlQTWQCEQ8PFgIeCEltYWdlVXJsBRl+L0FkbWluL2Rpc3QvaW1nL1VzZXIucG5nZGQCEw8WAh8BBQVhZG1pbmQCFQ8PFgIfAwUZfi9BZG1pbi9kaXN0L2ltZy9Vc2VyLnBuZ2RkAhcPFgIfAQUFYWRtaW5kAh0PFgIfAQUERVFGSWQCHw8WAh4LXyFJdGVtQ291bnQCEhYkZg9kFgRmDxUDASM/PGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTMucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+Dk1lbWJlciBTZWN0aW9uZAIBDxYCHwQCBRYKZg9kFgJmDxUCDkFkZE1lbWJlci5hc3B4CkFkZCBNZW1iZXJkAgEPZBYCZg8VAhFBZGRNZW1iZXJLWUMuYXNweA5BZGQgTWVtYmVyIEtZQ2QCAg9kFgJmDxUCFU1lbWJlckFsbERldGFpbHMuYXNweA5NZW1iZXIgU3VtbWFyeWQCAw9kFgJmDxUCFE1lbWJlckRldGFpbFJwdC5hc3B4DU1lbWJlciBSZXBvcnRkAgQPZBYCZg8VAhFTZWFyY2hNZW1iZXIuYXNweA1TZWFyY2ggTWVtYmVyZAIBD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tNC5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4MTWVtYmVyIFNoYXJlZAIBDxYCHwQCBRYKZg9kFgJmDxUCHlNoYXJlSXNzdWUuYXNweD9pc21vZGlmeT1mYWxzZQ5TaGFyZSBUcmFuc2ZlcmQCAQ9kFgJmDxUCGVVuYWxsb3RlZFNoYXJlUmVwb3J0LmFzcHgSVW4tYWxsb3R0ZWQgU2hhcmVzZAICD2QWAmYPFQIVU2hhcmVDZXJ0aWZpY2F0ZS5hc3B4EVNoYXJlIENlcnRpZmljYXRlZAIDD2QWAmYPFQIWTWVtYmVyU2hhcmVSZXBvcnQuYXNweAxTaGFyZSBSZXBvcnRkAgQPZBYCZg8VAhBETk9HZW5lcmF0ZS5hc3B4D0ROTyBSZS1HZW5lcmF0ZWQCAg9kFgRmDxUDASM/PGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTUucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+EUNvbGxlY3Rvci9BZHZpc29yZAIBDxYCHwQCBhYMZg9kFgJmDxUCD0FkZEFkdmlzb3IuYXNweBVBZGQgQ29sbGVjdG9yL0Fkdmlzb3JkAgEPZBYCZg8VAhBBZHZpc29yVHJlZS5hc3B4FkNvbGxlY3Rvci9BZHZpc29yIFRyZWVkAgIPZBYCZg8VAhRBZHZpc29yRG93bmxpbmUuYXNweBpDb2xsZWN0b3IvQWR2aXNvciBEb3dubGluZWQCAw9kFgJmDxUCF0NvbGxlY3RvclByb21vdGlvbi5hc3B4G0NvbGxlY3Rvci9BZHZpc29yIFByb21vdGlvbmQCBA9kFgJmDxUCE0lEQ2FyZFByaW50aW5nLmFzcHgYQ29sbGVjdG9yL0Fkdmlzb3IgSS1DYXJkZAIFD2QWAmYPFQISQWR2aXNvclNlYXJjaC5hc3B4GENvbGxlY3Rvci9BZHZpc29yIFNlYXJjaGQCAw9kFgRmDxUDASM/PGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTMucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+EEVtcGxveWVlIFNlY3Rpb25kAgEPFgIfBAIFFgpmD2QWAmYPFQIWRGVzaWduYXRpb25NYXN0ZXIuYXNweA9BZGQgRGVzaWduYXRpb25kAgEPZBYCZg8VAhVEZXBhcnRtZW50TWFzdGVyLmFzcHgOQWRkIERlcGFydG1lbnRkAgIPZBYCZg8VAhBBZGRFbXBsb3llZS5hc3B4DEFkZCBFbXBsb3llZWQCAw9kFgJmDxUCG0VtcGxveWVlSURDYXJkUHJpbnRpbmcuYXNweA9FbXBsb3llZSBJLUNhcmRkAgQPZBYCZg8VAhNTZWFyY2hFbXBsb3llZS5hc3B4D1NlYXJjaCBFbXBsb3llZWQCBA9kFgRmDxUDASNAPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTYucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7IiAvPhJJbnZlc3RtZW50IFNlY3Rpb25kAgEPFgIfBAINFhpmD2QWAmYPFQIPUGxhbk1hc3Rlci5hc3B4C1BsYW4gTWFzdGVyZAIBD2QWAmYPFQISQWRkSW52ZXN0bWVudC5hc3B4Dk5ldyBJbnZlc3RtZW50ZAICD2QWAmYPFQIOUkRSZW5ld2FsLmFzcHgPUmVuZXdhbCBQYXltZW50ZAIDD2QWAmYPFQIYRGFpbHlSZW5ld2FsUGF5bWVudC5hc3B4FURhaWx5IFJlbmV3YWwgUGF5bWVudGQCBA9kFgJmDxUCJkZsZXhpcmVuZXdhbC5hc3B4P0lzTW9kaWZpY2F0aW9uPWZhbHNlFUZsZXhpIFJlbmV3YWwgUGF5bWVudGQCBQ9kFgJmDxUCFFJlbmV3YWxQYXNzYm9vay5hc3B4EURhaWx5L1JEIFBhc3Nib29rZAIGD2QWAmYPFQIjUG9saWN5UmVuZXdhbFJlY2VpcHQuYXNweD9Jc1RhZz1OZXcSSW52ZXN0bWVudCBSZWNlaXB0ZAIHD2QWAmYPFQIlUG9saWN5UmVuZXdhbFJlY2VpcHQuYXNweD9Jc1RhZz1SZW5ldxJSZWN1cnJpbmcgIFJlY2VpcHRkAggPZBYCZg8VAhVDZXJ0aWZpY2F0ZUlzc3VlLmFzcHgRQ2VydGlmaWNhdGUgSXNzdWVkAgkPZBYCZg8VAiVDZXJ0aWZpY2F0ZUlzc3VlLmFzcHg/UmVQcmludD1SZXByaW50FENlcnRpZmljYXRlIFJlLUlzc3VlZAIKD2QWAmYPFQIeSW52ZXN0bWVudEludGVyZXN0RGV0YWlscy5hc3B4EEludGVyZXN0IERldGFpbHNkAgsPZBYCZg8VAh5JbnZlc3RtZW50SW50ZXJlc3RQYXlhYmxlLmFzcHgQSW50ZXJlc3QgUGF5YWJsZWQCDA9kFgJmDxUCFUludmVzdG1lbnRTZWFyY2guYXNweBFJbnZlc3RtZW50IFNlYXJjaGQCBQ9kFgRmDxUDASNAPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTkucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7IiAvPg9TYXZpbmdzIEFjY291bnRkAgEPFgIfBAILFhZmD2QWAmYPFQIWU2F2aW5nc1BsYW5NYXN0ZXIuYXNweBNTYXZpbmdzIFBsYW4gTWFzdGVyZAIBD2QWAmYPFQIOQWRkU2F2aW5nLmFzcHgPU2F2aW5ncyBPcGVuaW5nZAICD2QWAmYPFQIcU2F2aW5nc1RyYW5zYWN0aW9uRW50cnkuYXNweBNTYXZpbmdzIFRyYW5zYWN0aW9uZAIDD2QWAmYPFQIYU2F2aW5nSW50cmFUcmFuc2Zlci5hc3B4EVNCIEludHJhIFRyYW5zZmVyZAIED2QWAmYPFQIXU0JJbnRlcmVzdEdlbmVyYXRlLmFzcHgUU0IgSW50ZXJlc3QgVHJhbnNmZXJkAgUPZBYCZg8VAhRTQlBhc3Nib29rUHJpbnQuYXNweBBTYXZpbmdzIFBhc3Nib29rZAIGD2QWAmYPFQIVU2F2aW5nc1N0YXRlbWVudC5hc3B4EVNhdmluZ3MgU3RhdGVtZW50ZAIHD2QWAmYPFQISQWNjb3VudENsb3Nlci5hc3B4DkFjY291bnQgQ2xvc2VyZAIID2QWAmYPFQIZU2VhcmNoU2F2aW5nc0FjY291bnQuYXNweBFTZWFyY2ggU2F2aW5ncyBBQ2QCCQ9kFgJmDxUCGFNNU0NoYXJnZXNEZWR1Y3Rpb24uYXNweBVTTVMgQ2hhcmdlcyBEZWR1Y3Rpb25kAgoPZBYCZg8VAhxTZXJ2aWNlQ2hhcmdlc0RlZHVjdGlvbi5hc3B4GVNlcnZpY2UgQ2hhcmdlcyBEZWR1Y3Rpb25kAgYPZBYEZg8VAwEjPzxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby03LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPgxMb2FuIFNlY3Rpb25kAgEPFgIfBAIOFhxmD2QWAmYPFQIZTG9hblBsYW4uYXNweD9UeXBlPU5vcm1hbBJMb2FuIFBsYW4gQ3JlYXRpb25kAgEPZBYCZg8VAhNMb2FuQ2FsY3VsYXRvci5hc3B4D0xvYW4gQ2FsY3VsYXRvcmQCAg9kFgJmDxUCJUxvYW5BcHBsaWNhdGlvbi5hc3B4P1R5cGU9QXBwbGljYXRpb24QTG9hbiBBcHBsaWNhdGlvbmQCAw9kFgJmDxUCIkxvYW5BcHBsaWNhdGlvbi5hc3B4P1R5cGU9QXBwcm92YWwPTG9hbiBBdXRob3JpemVkZAIED2QWAmYPFQIhTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1QYXltZW50FExvYW4gUGF5bWVudCBTZWN0aW9uZAIFD2QWAmYPFQIeTG9hblJlcGF5bWVudC5hc3B4P1R5cGU9Tm9ybWFsFlJlZ3VsYXIgRW1pIFJlLXBheW1lbnRkAgYPZBYCZg8VAilJcnJlZ3VsYXJFTUlQYXltZW50RW50cnkuYXNweD9UeXBlPU5vcm1hbBhJcnJlZ3VsYXIgRW1pIFJlLXBheW1lbnRkAgcPZBYCZg8VAiVSZWd1bGFyTG9hblN0YXRlbWVudC5hc3B4P1R5cGU9Tm9ybWFsFlJlZ3VsYXIgTG9hbiBTdGF0ZW1lbnRkAggPZBYCZg8VAidJcnJlZ3VsYXJMb2FuU3RhdGVtZW50LmFzcHg/VHlwZT1Ob3JtYWwYSXJyZWd1bGFyIExvYW4gU3RhdGVtZW50ZAIJD2QWAmYPFQIdUmVndWxhckxvYW5Eb2N1bWVudFByaW50LmFzcHgTTG9hbiBEb2N1bWVudCBQcmludGQCCg9kFgJmDxUCIkxvYW5QcmVTZXR0bGVtZW50LmFzcHg/VHlwZT1Ob3JtYWwOUHJlIFNldHRsZW1lbnRkAgsPZBYCZg8VAiFDbG9zZWRMb2FuUmVwb3J0LmFzcHg/VHlwZT1Ob3JtYWwTQ2xvc2VkIGxvYW4gRGV0YWlsc2QCDA9kFgJmDxUCGExvYW5Ob2MuYXNweD9UeXBlPU5vcm1hbA9OT0MgQ2VydGlmaWNhdGVkAg0PZBYCZg8VAg9Mb2FuU2VhcmNoLmFzcHgLU2VhcmNoIExvYW5kAgcPZBYEZg8VAwEjPzxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby04LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPglHb2xkIExvYW5kAgEPFgIfBAIOFhxmD2QWAmYPFQIXTG9hblBsYW4uYXNweD9UeXBlPUdvbGQSR29sZCBQbGFuIENyZWF0aW9uZAIBD2QWAmYPFQITR29sZExvYW5NYXN0ZXIuYXNweBBHb2xkIExvYW4gTWFzdGVyZAICD2QWAmYPFQIpR29sZExvYW5BcHBsaWNhdGlvbi5hc3B4P1R5cGU9QXBwbGljYXRpb24VR29sZCBMb2FuIEFwcGxpY2F0aW9uZAIDD2QWAmYPFQImR29sZExvYW5BcHBsaWNhdGlvbi5hc3B4P1R5cGU9QXBwcm92YWwUR29sZCBMb2FuIEF1dGhvcml6ZWRkAgQPZBYCZg8VAiVHb2xkTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1QYXltZW50FExvYW4gUGF5bWVudCBTZWN0aW9uZAIFD2QWAmYPFQIcTG9hblJlcGF5bWVudC5hc3B4P1R5cGU9R29sZBZSZWd1bGFyIEVtaSBSZS1wYXltZW50ZAIGD2QWAmYPFQInSXJyZWd1bGFyRU1JUGF5bWVudEVudHJ5LmFzcHg/VHlwZT1Hb2xkGElycmVndWxhciBFbWkgUmUtcGF5bWVudGQCBw9kFgJmDxUCI1JlZ3VsYXJMb2FuU3RhdGVtZW50LmFzcHg/VHlwZT1Hb2xkFlJlZ3VsYXIgTG9hbiBTdGF0ZW1lbnRkAggPZBYCZg8VAiVJcnJlZ3VsYXJMb2FuU3RhdGVtZW50LmFzcHg/VHlwZT1Hb2xkGElycmVndWxhciBMb2FuIFN0YXRlbWVudGQCCQ9kFgJmDxUCGkdvbGRMb2FuRG9jdW1lbnRQcmludC5hc3B4FExvYW4gRG9jdW1lbnRzIFByaW50ZAIKD2QWAmYPFQIgTG9hblByZVNldHRsZW1lbnQuYXNweD9UeXBlPUdvbGQOUHJlIFNldHRsZW1lbnRkAgsPZBYCZg8VAh9DbG9zZWRMb2FuUmVwb3J0LmFzcHg/VHlwZT1Hb2xkE0Nsb3NlZCBsb2FuIERldGFpbHNkAgwPZBYCZg8VAhZMb2FuTm9jLmFzcHg/VHlwZT1Hb2xkD05PQyBDZXJ0aWZpY2F0ZWQCDQ9kFgJmDxUCE0dvbGRMb2FuU2VhcmNoLmFzcHgLU2VhcmNoIExvYW5kAggPZBYEZg8VAwEjQTxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xNi5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiIC8+Ckdyb3VwIExvYW5kAgEPFgIfBAIMFhhmD2QWAmYPFQIYTG9hblBsYW4uYXNweD9UeXBlPUdyb3VwE0dyb3VwIFBsYW4gQ3JlYXRpb25kAgEPZBYCZg8VAhRMb2FuR3JvdXBNYXN0ZXIuYXNweAxHcm91cCBNYXN0ZXJkAgIPZBYCZg8VAhlHcm91cExvYW5BcHBsaWNhdGlvbi5hc3B4Fkdyb3VwIExvYW4gQXBwbGljYXRpb25kAgMPZBYCZg8VAiRHcm91cExvYW5BcHByb3ZhbC5hc3B4P1R5cGU9QXBwcm92YWwVR3JvdXAgTG9hbiBBdXRob3JpemVkZAIED2QWAmYPFQIjR3JvdXBMb2FuQXBwcm92YWwuYXNweD9UeXBlPVBheW1lbnQUTG9hbiBQYXltZW50IFNlY3Rpb25kAgUPZBYCZg8VAh1Mb2FuUmVwYXltZW50LmFzcHg/VHlwZT1Hcm91cA5FbWkgUmUtcGF5bWVudGQCBg9kFgJmDxUCGkdsRGFpbHlSZXBheW1lbnRTaGVldC5hc3B4FURhaWx5IFJlcGF5bWVudCBTaGVldGQCBw9kFgJmDxUCEERlbWFuZFNoZWV0LmFzcHgMRGVtYW5kIFNoZWV0ZAIID2QWAmYPFQIkUmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPUdyb3VwDkxvYW4gU3RhdGVtZW50ZAIJD2QWAmYPFQIhTG9hblByZVNldHRsZW1lbnQuYXNweD9UeXBlPUdyb3VwDlByZSBTZXR0bGVtZW50ZAIKD2QWAmYPFQIhQ2xvc2VkTG9hblJlcG9ydC5hc3B4P1R5cGU9Tm9ybWFsE0Nsb3NlZCBsb2FuIERldGFpbHNkAgsPZBYCZg8VAhRHcm91cExvYW5TZWFyY2guYXNweAtTZWFyY2ggTG9hbmQCCQ9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTEyLnBuZyIgIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4QQXBwcm92YWwgU2VjdGlvbmQCAQ8WAh8EAg0WGmYPZBYCZg8VAhZBZGRNZW1iZXJBcHByb3ZhbC5hc3B4EE1lbWJlciAgQXBwcm92YWxkAgEPZBYCZg8VAhdTaGFyZUlzc3VlQXBwcm92YWwuYXNweA5TaGFyZSBBcHByb3ZhbGQCAg9kFgJmDxUCFEFkdmlzb3JBcHByb3ZhbC5hc3B4GkFkdmlzb3IvQ29sbGVjdG9yIEFwcHJvdmFsZAIDD2QWAmYPFQIXSW52ZXN0bWVudEFwcHJvdmFsLmFzcHgTSW52ZXN0bWVudCBBcHByb3ZhbGQCBA9kFgJmDxUCFlJlY3VycmluZ0FwcHJvdmFsLmFzcHgTUmVjdXJyaW5nICBBcHByb3ZhbGQCBQ9kFgJmDxUCElNCVHhuQXBwcm92YWwuYXNweBtTYXZpbmcgVHJhbnNhY3Rpb24gQXBwcm92YWxkAgYPZBYCZg8VAhpJbnRyYVRyYW5zZmVyQXBwcm92YWwuYXNweBRTQiBUcmFuc2ZlciBBcHByb3ZhbGQCBw9kFgJmDxUCF1JlZ3VsYXJFTUlBcHByb3ZhbC5hc3B4FFJlZ3VsYXIgRU1JIEFwcHJvdmFsZAIID2QWAmYPFQIXSXJydWxhckVNSUFwcHJvdmFsLmFzcHgWSXJyZWd1bGFyIEVNSSBBcHByb3ZhbGQCCQ9kFgJmDxUCGVBheW1lbnRFbnRyeUFwcHJvdmFsLmFzcHgWUGF5bWVudCBFbnRyeSBBcHByb3ZhbGQCCg9kFgJmDxUCIE1hdHVyaXR5QXBwbGljYXRpb25BcHByb3ZhbC5hc3B4HU1hdHVyaXR5IEFwcGxpY2F0aW9uIEFwcHJvdmFsZAILD2QWAmYPFQIeTWF0dXJpdHlBcHBsaWNhdGlvbkRlbGV0ZS5hc3B4G01hdHVyaXR5IEFwcGxpY2F0aW9uIERlbGV0ZWQCDA9kFgJmDxUCHENTUENhc2hUcmFuc2ZlckFwcHJvdmFsLmFzcHgdQnJhbmNoIENhc2ggVHJhbnNmZXIgQXBwcm92YWxkAgoPZBYEZg8VAwEjQTxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xMC5wbmciICBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+FVJlY3RpZmljYXRpb24gU2VjdGlvbmQCAQ8WAh8EAg0WGmYPZBYCZg8VAiJBZGRNZW1iZXIuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlFE1lbWJlciBSZWN0aWZpY2F0aW9uZAIBD2QWAmYPFQIdU2hhcmVJc3N1ZS5hc3B4P2lzbW9kaWZ5PXRydWUTU2hhcmUgUmVjdGlmaWNhdGlvbmQCAg9kFgJmDxUCI0FkZEFkdmlzb3IuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlH0Fkdmlzb3IvQ29sbGVjdG9yIFJlY3RpZmljYXRpb25kAgMPZBYCZg8VAiZBZGRJbnZlc3RtZW50LmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRhJbnZlc3RtZW50IFJlY3RpZmljYXRpb25kAgQPZBYCZg8VAiJSRFJlbmV3YWwuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlFVJlbmV3YWwgUmVjdGlmaWNhdGlvbmQCBQ9kFgJmDxUCLERhaWx5UmVuZXdhbFBheW1lbnQuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlG0RhaWx5IFJlbmV3YWwgUmVjdGlmaWNhdGlvbmQCBg9kFgJmDxUCJUZsZXhpUmVuZXdhbC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUYRmxleGkgVHJhbnNhY3Rpb24gRGVsZXRlZAIHD2QWAmYPFQIiQWRkU2F2aW5nLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRVTYXZpbmdzIFJlY3RpZmljYXRpb25kAggPZBYCZg8VAjBTYXZpbmdzVHJhbnNhY3Rpb25FbnRyeS5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUaU2F2aW5ncyBUcmFuc2FjdGlvbiBEZWxldGVkAgkPZBYCZg8VAihMb2FuQXBwbGljYXRpb24uYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlEkxvYW4gUmVjdGlmaWNhdGlvbmQCCg9kFgJmDxUCLEdvbGRMb2FuQXBwbGljYXRpb24uYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlF0dvbGQgTG9hbiBSZWN0aWZpY2F0aW9uZAILD2QWAmYPFQIqR3JvdXBMb2FuQXBwcm92YWwuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlGEdyb3VwIExvYW4gUmVjdGlmaWNhdGlvbmQCDA9kFgJmDxUCJEFkZEVtcGxveWVlLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRVFbXBsb3llZSBNb2RpZmljYXRpb25kAgsPZBYEZg8VAwEjQTxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xMS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiIC8+EEFjY291bnRzIFNlY3Rpb25kAgEPFgIfBAIVFipmD2QWAmYPFQIVQWNjb3VudExlZ01hc3Rlci5hc3B4DUxlZGdlciBNYXN0ZXJkAgEPZBYCZg8VAhNQYXltZW50Vm91Y2hlci5hc3B4DVBheW1lbnQgRW50cnlkAgIPZBYCZg8VAhNSZWNlaXZlVm91Y2hlci5hc3B4DVJlY2VpdmUgRW50cnlkAgMPZBYCZg8VAhdDb250cmFWb3VjaGVyRW50cnkuYXNweAxDb250cmEgRW50cnlkAgQPZBYCZg8VAhNKb3VybmFsVm91Y2hlci5hc3B4DUpvdXJuYWwgRW50cnlkAgUPZBYCZg8VAhVJbmNlbnRpdmVQYXltZW50LmFzcHgRSW5jZW50aXZlIFBheW1lbnRkAgYPZBYCZg8VAg9NSVNQYXltZW50LmFzcHgQTUlTIGludC4gUGF5bWVudGQCBw9kFgJmDxUCEENoZXF1ZUNsZWFyLmFzcHgPQ2hlcXVlIENsZWFyaW5nZAIID2QWAmYPFQIcVW5lbmN1bWJlcmVkVGVybURlcG9zaXQuYXNweBdNYW5kYXRlIERlcG9zaXQgdG8gQmFua2QCCQ9kFgJmDxUCEkJhbmtTdGF0ZW1lbnQuYXNweA5CYW5rIFN0YXRlbWVudGQCCg9kFgJmDxUCEkNhc2hTdGF0ZW1lbnQuYXNweAlDYXNoIEJvb2tkAgsPZBYCZg8VAhFUcmFuc2ZlckJvb2suYXNweA1UcmFuc2ZlciBCb29rZAIMD2QWAmYPFQIVUmVndWxhclN0YXRlbWVudC5hc3B4CERheSBCb29rZAIND2QWAmYPFQIaRmluYW5jaWFsTGVkZ2VyUmVwb3J0LmFzcHgNTGVkZ2VyIFJlcG9ydGQCDg9kFgJmDxUCEkpvdXJuYWxSZXBvcnQuYXNweA5Kb3VybmFsIFJlcG9ydGQCDw9kFgJmDxUCGkZpbmFuY2lhbFRyaWFsQmFsYW5jZS5hc3B4DVRyYWlsIEJhbGFuY2VkAhAPZBYCZg8VAhBQTFN0YXRlbWVudC5hc3B4ElAmTCBTdGF0ZW1lbnQgKEZZKWQCEQ9kFgJmDxUCGkZpbmFuY2lhbEJhbGFuY2VTaGVldC5hc3B4EkJhbGFuY2UgU2hlZXQgKEZZKWQCEg9kFgJmDxUCF1Byb2ZpdExvc3NEYXRlV2lzZS5hc3B4DVAmTCBTdGF0ZW1lbnRkAhMPZBYCZg8VAhlCYWxhbmNlU2hlZXREYXRld2lzZS5hc3B4DUJhbGFuY2UgU2hlZXRkAhQPZBYCZg8VAhRDU1BDYXNoVHJhbnNmZXIuYXNweBRCcmFuY2ggQ2FzaCBUcmFuc2ZlcmQCDA9kFgRmDxUDASNAPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTEzLnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhFJbmNlbnRpdmUgU2VjdGlvbmQCAQ8WAh8EAgQWCGYPZBYCZg8VAhRJbmNlbnRpdmVNYXN0ZXIuYXNweBBJbmNlbnRpdmUgTWFzdGVyZAIBD2QWAmYPFQIYSW5jZW50aXZlR2VuZXJhdGlvbi5hc3B4EkluY2VudGl2ZSBHZW5lcmF0ZWQCAg9kFgJmDxUCGkluY2VudGl2ZURldGFpbHNQcmludC5hc3B4EUluY2VudGl2ZSBEZXRhaWxzZAIDD2QWAmYPFQIXSW5jZW50aXZlTGlzdFByaW50LmFzcHgOSW5jZW50aXZlIExpc3RkAg0PZBYEZg8VAwEjQDxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xNC5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4QTWF0dXJpdHkgU2VjdGlvbmQCAQ8WAh8EAgkWEmYPZBYCZg8VAhBQcmVNYXR1cml0eS5hc3B4D01hdHVyaXR5IE1hc3RlcmQCAQ9kFgJmDxUCGE1hdHVyaXR5QXBwbGljYXRpb24uYXNweBRNYXR1cml0eSBBcHBsaWNhdGlvbmQCAg9kFgJmDxUCFE1hdHVyaXR5UGF5bWVudC5hc3B4EE1hdHVyaXR5IFBheW1lbnRkAgMPZBYCZg8VAhlSZWRlbXRpb25QYXJ0UGF5bWVudC5hc3B4GU1hdHVyaXR5IFBheW1lbnQgKFBhcnRseSlkAgQPZBYCZg8VAh1NYXR1cml0eVRyYWNraW5nLmFzcHg/Q29kZT1SUhdNYXQuIEFwcGxpY2F0aW9uIFN0YXR1c2QCBQ9kFgJmDxUCHU1hdHVyaXR5VHJhY2tpbmcuYXNweD9Db2RlPUFSD0FwcHJvdmVkIFN0YXR1c2QCBg9kFgJmDxUCHU1hdHVyaXR5VHJhY2tpbmcuYXNweD9Db2RlPVBSE01hdC4gUGF5bWVudCBTdGF0dXNkAgcPZBYCZg8VAh5NYXR1cml0eVBhcnRQYXltZW50UmVwb3J0LmFzcHgcTWF0LiBQYXltZW50IFN0YXR1cyAoUGFydGx5KWQCCA9kFgJmDxUCG01hdHVyaXR5UmVjZWlwdFJlUHJpbnQuYXNweBZNYXR1cml0eSBSZWNlaXB0IFByaW50ZAIOD2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTUucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+DlJlcG9ydCBTZWN0aW9uZAIBDxYCHwQCFRYqZg9kFgJmDxUCGkludmVzdG1lbnRUb3RhbFJlcG9ydC5hc3B4EUludmVzdG1lbnQgUmVwb3J0ZAIBD2QWAmYPFQIcSW52ZXN0bWVudFJlcG9ydFN1bW1hcnkuYXNweBRJbnZlc3RtZW50IC0gU3VtbWFyeWQCAg9kFgJmDxUCF0VtcGxveWVlQ29sbGVjdGlvbi5hc3B4EkFkdmlzb3IgQ29sbGVjdGlvbmQCAw9kFgJmDxUCGkFkdmlzb3JUZWFtQ29sbGVjdGlvbi5hc3B4F0Fkdmlzb3IgVGVhbSBDb2xsZWN0aW9uZAIED2QWAmYPFQIXQ2hlcXVlU3RhdHVzUmVwb3J0LmFzcHgXQ2hlcXVlIENsZWFyYW5jZSBTdGF0dXNkAgUPZBYCZg8VAhtJbmNlbnRpdmVQYXltZW50UmVwb3J0LmFzcHgYSW5jZW50aXZlIFBheW1lbnQgcmVwb3J0ZAIGD2QWAmYPFQIXUmVjdXJyaW5nRHVlUmVwb3J0LmFzcHgUUmVjdXJyaW5nIER1ZSBSZXBvcnRkAgcPZBYCZg8VAhlMb2FuTm90QXBwcm92ZVJlcG9ydC5hc3B4GExvYW4gTm90IGFwcHJvdmVkIFJlcG9ydGQCCA9kFgJmDxUCF0xvYW5BcHByb3ZhbFJlcG9ydC5hc3B4DkFwcHJvdmVkIExvYW4gZAIJD2QWAmYPFQIWTG9hblBheW1lbnRSZXBvcnQuYXNweBNMb2FuIFBheW1lbnQgUmVwb3J0ZAIKD2QWAmYPFQIVTG9hbkVNSUR1ZVJlcG9ydC5hc3B4DkR1ZSBFbWkgUmVwb3J0ZAILD2QWAmYPFQIZTG9hbkVNSU92ZXJEdWVSZXBvcnQuYXNweBNFbWkgT3ZlciBEdWUgUmVwb3J0ZAIMD2QWAmYPFQIdTG9hbkVNSU91dHN0YW5kaW5nUmVwb3J0LmFzcHgWRW1pIE91dHN0YW5kaW5nIFJlcG9ydGQCDQ9kFgJmDxUCHkVNSUNvbGxlY3RvblJlcG9ydC5hc3B4P1R5cGU9UhJSZWd1bGFyIEVNSSBSZXBvcnRkAg4PZBYCZg8VAh5FTUlDb2xsZWN0b25SZXBvcnQuYXNweD9UeXBlPUkUSXJyZWd1bGFyIEVNSSBSZXBvcnRkAg8PZBYCZg8VAh1Mb2FuQ29sbGVjdGlvbnNoZWV0UHJpbnQuYXNweBBMb2FuIFNoZWV0IFByaW50ZAIQD2QWAmYPFQIZTWF0dXJpdHlTdGF0dXNSZXBvcnQuYXNweA9NYXR1cml0eSBTdGF0dXNkAhEPZBYCZg8VAhVQcm9qZWN0aW9uUmVwb3J0LmFzcHgRUHJvamVjdGlvbiBSZXBvcnRkAhIPZBYCZg8VAhxNYXR1cml0eUxpYWJpbGl0eVJlcG9ydC5hc3B4GU1hdHVyaXR5IExpYWJpbGl0eSBSZXBvcnRkAhMPZBYCZg8VAhdURFNEZWR1Y3Rpb25SZXBvcnQuYXNweBRURFMgRGVkdWN0aW9uIFJlcG9ydGQCFA9kFgJmDxUCFFBvbGljeVN0YXRlbWVudC5hc3B4EFBvbGljeSBTdGF0ZW1lbnRkAg8PZBYEZg8VAwEjQTxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xNy5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiIC8+ElBheXJvbGwgTWFuYWdlbWVudGQCAQ8WAh8EAhEWImYPZBYCZg8VAhZEZXNpZ25hdGlvbk1hc3Rlci5hc3B4D0FkZCBEZXNpZ25hdGlvbmQCAQ9kFgJmDxUCFURlcGFydG1lbnRNYXN0ZXIuYXNweA5BZGQgRGVwYXJ0bWVudGQCAg9kFgJmDxUCE0VtcGxveWVlTWFzdGVyLmFzcHgMQWRkIEVtcGxveWVlZAIDD2QWAmYPFQIZRW1wbG95ZWVMZWF2ZURldGFpbHMuYXNweA5FbXBsb3llZSBMZWF2ZWQCBA9kFgJmDxUCFlNhbGFyeVNldHVwTWFzdGVyLmFzcHgOU2FsYXJ5IERldGFpbHNkAgUPZBYCZg8VAhlIcm1BcHBvaW50bWVudExldHRlci5hc3B4EkFwcG9pbnRtZW50IExldHRlcmQCBg9kFgJmDxUCE0hybU9mZmVyTGV0dGVyLmFzcHgST2ZmZXIgTGV0dGVyIElzc3VlZAIHD2QWAmYPFQIST2ZmRGF5U2V0dGluZy5hc3B4DkhvbGlkYXkgTWFzdGVyZAIID2QWAmYPFQIUTGVhdmVBZGp1c3RtZW50LmFzcHgQTGVhdmUgQWRqdXN0bWVudGQCCQ9kFgJmDxUCEkhybUF0dGVuZGFuY2UuYXNweApBdHRlbmRhbmNlZAIKD2QWAmYPFQIWSHJtU2FsYXJ5R2VuZXJhdGUuYXNweA9TYWxhcnkgR2VuZXJhdGVkAgsPZBYCZg8VAhVIcm1TYWxhcnlQYXltZW50LmFzcHgOU2FsYXJ5IFBheW1lbnRkAgwPZBYCZg8VAhdIcm1TYWxhcnlTbGlwUHJpbnQuYXNweBFTYWxhcnkgU2xpcCBQcmludGQCDQ9kFgJmDxUCFUF0dGVuZGFuY2VSZXBvcnQuYXNweBFBdHRlbmRhbmNlIFJlcG9ydGQCDg9kFgJmDxUCG0hybVNhbGFyeVBheW1lbnRSZXBvcnQuYXNweBVTYWxhcnkgUGF5bWVudCBSZXBvcnRkAg8PZBYCZg8VAhZIUk1FbXBsb3llZVNlYXJjaC5hc3B4D0VtcGxveWVlIFNlYXJjaGQCEA9kFgJmDxUCFkhybUVtcGxveWVlSURDYXJkLmFzcHgQRW1wbG95ZWUgSUQgQ2FyZGQCEA9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE4LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4STW9iaWxlIEFwcCBDb250cm9sZAIBDxYCHwQCCBYQZg9kFgJmDxUCCk1Vc2VyLmFzcHgRQXBwIFVzZXIgQ3JlYXRpb25kAgEPZBYCZg8VAhpNb2JpbGVfTWVtYmVyQXBwcm92YWwuYXNweBBNZW1iZXIgIEFwcHJvdmFsZAICD2QWAmYPFQIdTW9iaWxlX0NvbGxlY3RvckFwcHJvdmFsLmFzcHgQQWR2aXNvciBBcHByb3ZhbGQCAw9kFgJmDxUCHk1vYmlsZV9JbnZlc3RtZW50QXBwcm92YWwuYXNweBNJbnZlc3RtZW50IEFwcHJvdmFsZAIED2QWAmYPFQIbTW9iaWxlX1JlbmF3YWxBcHByb3ZhbC5hc3B4E1JlY3VycmluZyAgQXBwcm92YWxkAgUPZBYCZg8VAh5Nb2JpbGVfUmVndWxhckVNSUFwcHJvdmFsLmFzcHgUUmVndWxhciBFTUkgQXBwcm92YWxkAgYPZBYCZg8VAiBNb2JpbGVfSXJyZWd1bGFyRU1JQXBwcm92YWwuYXNweBZJcnJlZ3VsYXIgRU1JIEFwcHJvdmFsZAIHD2QWAmYPFQIZTW9iaWxlX1NCVHhuQXBwcm92YWwuYXNweBtTYXZpbmcgVHJhbnNhY3Rpb24gQXBwcm92YWxkAhEPZBYEZg8VAwEjQDxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xNS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4RTW9iaWxlIEFwcCBSZXBvcnRkAgEPFgIfBAIHFg5mD2QWAmYPFQIgTW9iaWxlX01lbWJlckFwcHJvdmFsUmVwb3J0LmFzcHgWTWVtYmVyIEFwcHJvdmFsIFJlcG9ydGQCAQ9kFgJmDxUCIU1vYmlsZV9BZHZpc29yQXBwcm92YWxSZXBvcnQuYXNweBdBZHZpc29yIEFwcHJvdmFsIFJlcG9ydGQCAg9kFgJmDxUCJk1vYmlsZV9SZWd1bGFyRU1JQ29sbGVjdGlvblJlcG9ydC5hc3B4G1JlZ3VsYXIgRU1JIEFwcHJvdmFsIFJlcG9ydGQCAw9kFgJmDxUCKE1vYmlsZV9JcnJlZ3VsYXJFTUlDb2xsZWN0aW9uUmVwb3J0LmFzcHgdSXJyZWd1bGFyIEVNSSBBcHByb3ZhbCBSZXBvcnRkAgQPZBYCZg8VAh9Nb2JpbGVfU0JUeG5BcHByb3ZhbFJlcG9ydC5hc3B4FlNCIFR4biBBcHByb3ZhbCBSZXBvcnRkAgUPZBYCZg8VAiRNb2JpbGVfSW52ZXN0bWVudEFwcHJvdmFsUmVwb3J0LmFzcHgaSW52ZXN0bWVudCBBcHByb3ZhbCBSZXBvcnRkAgYPZBYCZg8VAiFNb2JpbGVfUmVuZXdhbEFwcHJvdmFsUmVwb3J0LmFzcHgXUmVuZXdhbCBBcHByb3ZhbCBSZXBvcnRkAiMPZBYYAgEPFgIeCWlubmVyaHRtbAUMQWRkIEVtcGxveWVlZAIDD2QWAgIDDw8WAh8BBQQxMDAxZGQCBQ9kFgICAQ8QZGQWAGQCCw8QDxYGHg1EYXRhVGV4dEZpZWxkBQVCTkFNRR4ORGF0YVZhbHVlRmllbGQFBUNDb2RlHgtfIURhdGFCb3VuZGdkEBUBEU1haW4gT2ZmaWNlIC0gMDAxFQEDMDAxFCsDAWdkZAIRDw8WAh8BBQowMS8wOC8yMDIyZGQCNQ8QDxYGHwYFD0Rlc2lnbmF0aW9uTmFtZR8HBQVEQ29kZR8IZ2QQFRAHT2ZmaWNlcglDb2xsZWN0b3IHQ2FzaGllcgRUZXN0B01hbmFnZXIHQWR2aXNvcgpTdXBlcnZpc29yDEFzc3QgTWFuYWdlcg9HZW5lcmFsIE1hbmFnZXIKSFIgTWFuYWdlcghDaGFpcm1hbglDT0xMRUNUT1IJQ09MTEVDVE9SCUNPTExFQ1RPUgpPRkZJQ0UgQk9ZB0Nhc2hpZXIVEAMxMDEDMTAyAzEwMwMxMDQDMTA1AzEwNgMxMDcDMTA4AzEwOQMxMTADMTExAzExMgMxMTMDMTE0AzExNQMxMTYUKwMQZ2dnZ2dnZ2dnZ2dnZ2dnZ2RkAjcPEA8WBh8GBQhEZXB0TmFtZR8HBQhEZXB0Q29kZR8IZ2QQFQ0NRmllbGQgT2ZmaWNlcghBY2NvdW50cwZTYWxlcyAETG9hbgRDYXNoB0dlbmVyYWwKQ29sbGVjdGlvbgJIUglNYXJrZXRpbmcNRklFTEQgT0ZGSUNFUg1GSUVMRCBPRkZJQ0VSDVNhbGVzICBQRVJTT04IQWNjb3VudHMVDQQxMDAxBDEwMDIEMTAwMwQxMDA0BDEwMDUEMTAwNgQxMDA3BDEwMDgEMTAwOQQxMDEwBDEwMTEEMTAxMgQxMDEzFCsDDWdnZ2dnZ2dnZ2dnZ2dkZAJDDxBkZBYBZmQCRQ9kFgICAQ8QZBAVABUAFCsDABYAZAJHD2QWAgIBDw8WAh8BZWRkAksPZBYEAgEPDxYCHwFlZGQCAw8PFgIfAQUKMDEvMDgvMjAyMmRkAlMPDxYCHwEFBFNhdmVkZAIlDw8WAh8BBRJFUUZJIE5JREhJIExJTUlURURkZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAQUlY3RsMDAkQ29udGVudFBsYWNlSG9sZGVyMSRjaGtpc2FjdGl2ZYcYQE3UmfaMmtcalxyTRqUOQe2OhVO3Lp9777INxzPi" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>
<script type="text/javascript">
   function calculateAge() {
	   const dob = new Date(document.getElementById("dob").value); // get DOB from the date input field
	   const age = Math.floor((Date.now() - dob) / (365.25 * 24 * 60 * 60 * 1000)); // calculate age
	   document.getElementById("ageId").value = age; // set the calculated age in the age input field
	 }
</script>
<script>
function validationFeilds() {
	  const DOJ= document.getElementById("doj"); 
	  const branch= document.getElementById("cspName"); 
	  const employename= document.getElementById("empName");
	  const dob= document.getElementById("dob");
	  const age= document.getElementById("age");
	  const phone= document.getElementById("phoneNo");
	  const address= document.getElementById("address");
	  const pan= document.getElementById("pan");
	  const designantion= document.getElementById("designation");
	  const department= document.getElementById("department");
	  const salary= document.getElementById("salary");
	  const fees= document.getElementById("advisorFees");
	  const PayMode= document.getElementById("payMode");
	  const empstatus= document.getElementById("isActive");
	  
	  if (DOJ.value === '') { 
		    var span = document.getElementById("DOJspan"); 
		    span.textContent = "Enter date of Joining."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (branch.value =="") { 
		    var span = document.getElementById("cspNamespan"); 
		    span.textContent = "Select the Branch."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (employename.value === '') { 
		    var span = document.getElementById("empNamespan"); 
		    span.textContent = "Enter Employee Name."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (dob.value === '') { 
		    var span = document.getElementById("DOBspan"); 
		    span.textContent = "Select Date of Birth."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (age.value === '') { 
		    var span = document.getElementById("agespan"); 
		    span.textContent = "Enter the Age."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (phone.value === '') { 
		    var span = document.getElementById("phoneNospan"); 
		    span.textContent = "Enter the Mobile Number."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (address.value === '') { 
		    var span = document.getElementById("addressspan"); 
		    span.textContent = "Enter Address."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (pan.value === '') { 
		    var span = document.getElementById("panspan"); 
		    span.textContent = "Enter Pan Number."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (designantion.value =="") { 
		    var span = document.getElementById("designationspan"); 
		    span.textContent = "Please Select Designation."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (department.value =="") { 
		    var span = document.getElementById("departmentspan"); 
		    span.textContent = "Please Select Desgination."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (salary.value === '') { 
		    var span = document.getElementById("salaryspan"); 
		    span.textContent = "Enter Salary."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (fees.value === '') { 
		    var span = document.getElementById("advisorFeesspan"); 
		    span.textContent = "Enter Fees."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (empstatus.value === '') { 
		    var span = document.getElementById("isActivespan"); 
		    span.textContent = " select Employe Status."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (PayMode.value === '') { 
		    var span = document.getElementById("payModespan"); 
		    span.textContent = " Please Select Paymode."; 
		    span.style.display = "block"; 
		    status = false; 
		    } 
	  if (status === true) { 
		     document.validationform.submit(); 
		     return true; 
		    } else { 
		     return false; 
		    } 
}
</script>

<script src="../WebResourcea077.js?d=aKrB3Wg4ktcAdLzfwHNclnzQJginAX-WDxEXiKln398ZfxSpl5en7e6-r-t6qAS--33aKUyvVcAR5D4ulS_TNNrAx-wX18laGa3-ySpD_j01&amp;t=637290976998988531" type="text/javascript"></script>


<script src="../ScriptResource8794.js?d=pl0DaltFZ-nCqZWgxNAqTvBniAbIZw3Iz1bSYE7rwyGDxh1etqVx0WLbkkAE88KWETjjkMMzd-H0InR9BngAQbQfYcq-ENJYTXgawkPhXCZJsAGJSSC1KoJTErXiWh7tEcXp6rwjlayV_PcTh7M4M8rvifeWAlJsyUFxR9AUwO81&amp;t=5334fc78" type="text/javascript"></script>
<script src="../ScriptResourced8e7.js?d=uSqqCHFE8MMix38uq8GgGybxYtpH6dYwFMSYHjhHytO5jH1yPS2uWYjdlBZZSuu9t5CBFsRRRI6lEwvTTYPraDdistIqSYPDLCP6VorXyjIpQTji_JKtdkLVZLH_mYVZvHI4YJqUtS662n__8I2atI54HJ4NkBUVIeVAPnAuCTI1&amp;t=2a797f5c" type="text/javascript"></script>
<script src="../ScriptResourceb4d6.js?d=KzKHuQVzCI25ZiHK9SA2HZdRjaymXCFpWiizBRMk8lvEiiZsQoLPz0ARKvRH6PmSA3Tt96qvSLsIOMPBDLx_VBsyISpzBQoSBrYr5izAbtKSWsBVrS0pYd7veJqhmzHYrhKgOEJXiOei6ZrcxpAdqnYxCXhjNIW9HOvs7dp7o0kgl18uTZv1SVlBuafpWq2x0&amp;t=2a797f5c" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
return true;
}
//]]>
</script>
<div class="aspNetHidden">

	<input type="hidden" name="_VIEWSTATEGENERATOR" id="_VIEWSTATEGENERATOR" value="B6CC105A" />
	<input type="hidden" name="_EVENTVALIDATION" id="_EVENTVALIDATION" value="/wEdAFipBOHs3Qc3zY9Pfwdw+FBSXXhtDrRv6st/qI+x+N0hz4VNppXIEHMAIHNnY0nj1N1CKvEvRMrCCIXCV/HtS6bwRtvF6Rv4IZoM5eH+AAY1kaFf1wGhnhbrlEIHgpzk13i2EWNbHvOCUsXMq6EJ10y20wWEo8O2tpzYOmr3ntlsdc7xQKyl8PYze/dMpIBwuYtopPdy+FF6sZhlpsDHuRnygyH/gTE247mo8UXBZIDPhhV8z11Sg1/nq1tXmm88AgJ5Hbi38nP5K8zwslo12mXDLdsmRdME7rBzIXbOjCWVEBzZy5HDj7Z6iId9bLExvle0rPTHPcdhWhB9ZmtDItEE/ieEoPhELBxiEMMVZI+uJZVnoTCUpnMuraq1wd4Ip8+txncNhrnhde8s+kf7rRgCx/XiF5xVYokHySfDIDjYkuwu9kBVk1hWy33TBcye7/+0F7WOzTPnNpjqhavXbbIdCjiDUzOB+KWeSe3FE5kQ5OT5uLLe8SGv84U2HD71ADS5XZK18h5VYJ306OGGuPPddDp/F1GJ068V0tXulXdSYdJGmrKpRwJqWP604VNDbk9yKFNUlgPmL5db6ZJmEDn0vSn40o5/LJWg7VoEht6Wzlr1/A4ntYzoXof/gonsRoVX5fMolZGwcY0M18CiqV07YUAni7qceB5mzLl05KeZEU5DM+t4Wn2FyXGe0CRn7JCCUGbIDcU2oHQExXLZLZOEYFL7xSciULS5yOAizRGS68WwFaJmSVkLg4jrtQbpwS6AUwMd2JM75igUgFNF0pGEhJ6TPWq3I+ncCo2O+zV7qJ/ssf+b/RQWgv5R3FCjdJwmjBIaCe3TuwdGIvNgIiiHDdapw5m0ydX48KAB9SUEtKUrTfgBZtu5K1S09NFwoYlY0KLEBUrPRaX4cNesP8aNBsaRHMGZxeKlZ/3kOeJLbaxAa99rz7/vyskl5SyLesll+lMgAqX/p+Shg/cZb6C/XnbpUsbYq4mOZkFm8AbrifSuVr3M2cs/TFM2N+VRhEWx2vqrHQODFF3JZRzjfvNhIIb9AEqlBF6h/+tyzTwRuLrH6yScyMwlOi7VLezXn7iCIpofXu1H5ZvpMbONO7KkBtWvY6XK7dJprxg88gMXCnjrXhsePMykr66tEUjlw5qIn5gBgSt1vMTHz6eCVIn3r4DXaKMbsjq5mavYPxRn1Ml0z3OQnl7Hs5noHOnYnYOq28+Ig0PkZFNcHanRUvm/mZjnwjxqcu7Y5Y63pnUmsEiPN1tfItGtlbjCws0inieOcs8Mpf5ttdEMk9CwR9HCoZV/hLC9nR53f4NVJgLD3KboAtZexRcfvycTGS/ehLXHlwYDK21qQ7aP+MD8xZ1oRbqxDMg17wjhg1FY9dqiyayFVcXEdceHPYBlW0PQel1ZEJygt9C7HK0u4RbKYz6I7a+nwgOapeE1KOxmiwaT9MWJA/VvAhlif9Ku8dk4ORFU1f/y8Iq+dC0Mth4TF73/8iB4i7wKmW8OLTUZQ+tuO411SsULaIHnDzajKZ1Y4Oy7w8oqE0TpE6K1RfXn56e9lhq4Dv8f8FMDZ9VdaoPpXbv8IuQ2dEGjR89iBEzyQ7MytoFtQ9OjvK2TDTjnXThp+vOIL+3NPtLgZboiUTtJemn9hiig3LKHOWJerCEiRvkOPnFFM9OYzBsANsL7s3Z6zNnbLDpmSZKH6aUOYxwaGO2S4p17QnSZssdtTgM5IAlwnxcKD09YNwjPQIUEtS0Q7RE+ahORKeDVkupDaLfs/FbCaRz3OhYKmWiaV/c7cMF4UbIocZiLWYhVRska6qwFzH8wmFvMrWsKT0UZGoAJRh11LhbwcyfalQM5dWV7TYXLqNURbvMcLLODojxzY27ZRNJpQalgjYOlBAJbayJjIgNxUCBww3ZnOMqP+8vRXmo=" />
</div>

     <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
     
      <!-- Header Start-->
            
            <jsp:include page="../menu.jsp" />  
           
           
           <!-- Header End -->
            <!-- Left side column. contains the logo and sidebar -->
            <!-- Aside Menu Start-->
            
            <jsp:include page="../asideMenu.jsp" />  
            
            <!-- Aside Menu end -->
            <script type="text/javascript">
            
            <script type="text/javascript">
          //<![CDATA[
          Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
          //]]>
          </script>
       <form method="post" action="saveEmployee"  modelAttribute="emp" name="FormaddEmployee">
                      <!-- Content Wrapper. Contains page content -->
                      <div class="content-wrapper" style="min-height: 1105.75px;">
                          

                           
               <section class="content-header">
                  <h1 id="ContentPlaceHolder1_IdHeader">Add Employee</h1>
                  <ol class="breadcrumb">
                      <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
                      <li><a href="#">Dashboard</a></li>
                      <li class="active">Employee</li>
                  </ol>
              </section>
              <section class="content">
                  

                  


                  <div class="row">
                      <div class="col-md-10">
                          <div class="box box-info">
                              <div class="box-header with-border">
                                  <h3 class="box-title">Employee Details</h3>
                              </div>
                              <div class="box-body">
                        <div class="col-md-6">

                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Joining Date <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input name="doj" type="date" id="doj" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
<!--                                         <input name="DOJ" type="text" value="" id="DOJ" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" /> -->
                                         <span id="DOJspan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                    </div>
                                    
                                </div>
                            </div>
                             <div class="form-group row">
                                <label class="col-sm-4 control-label">Branch Name <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="cspName" id="cspName" class="form-control select2" style="width: 100%;">
                                      
	                                <option value="">Select</option>
	                               
                                    </select>
                                    <span id="cspNamespan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtRelativeName" class="col-sm-4 control-label">Employee Name <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="empName" type="text" id="empName" class="form-control" Placeholder="Enter Employee Name" />
                                      <span id="empNamespan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtDOB" class="col-sm-4 control-label">DOB <strong style="color: Red">*</strong></label>
                                <div class="col-sm-5">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>

                                        <input  name="dob" type="date" value="" onchange="calculateAge()"  id="dob" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                        <span id="DOBspan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <input name="age" type="text" value="0" maxlength="2" id="ageId" class="form-control" Placeholder="Enter Age"  autocomplete="off" />
                                    <span id="agespan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Relative Name</label>
                                <div class="col-sm-8">
                                    <input name="relativeName" type="text" id="relativeName" class="form-control" Placeholder="Enter Relative Name" />
                                      
                                </div>
                            </div>

                           <div class="form-group row">
                                    <label for="drpRelativeRelation" class="col-sm-4 control-label">Relative Relation</label>
                                    <div class="col-sm-8">
                                      
                                        <select name="relativeRelation" id="relativeRelation" class="form-control" style="width: 100%;">
	<option value="">--Select--</option>
	

</select>
                                    </div>
                                </div>

                            <div class="form-group row">
                                <label for="txtPhoneno" class="col-sm-4 control-label">Mobile No <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="phoneNo" type="text" maxlength="10" id="phoneNo" class="form-control" Placeholder="Enter Mobile No" autocomplete="off" onkeypress="return isNumberOnlyKey(this, event);" />
                                    <span id="phoneNospan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Phone No</span>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="txtNomineeName" class="col-sm-4 control-label">Nominee Name</label>
                                <div class="col-sm-8">
                                    <input name="nomineeName" type="text" id="nomineeName" class="form-control" />
                                </div>
                            </div>
                           
                           
                           
                        </div>
                        <div class="col-md-6">
                           
                             <div class="form-group row">
                                <label for="txtNomineeName" class="col-sm-4 control-label">Nominee Age</label>
                                <div class="col-sm-8">
                                    <input name="nAge" type="text" maxlength="2" id="nAge" class="form-control" />
                                </div>
                            </div>
                             <div class="form-group row">
                                <label for="drpNomineeRelation" class="col-sm-4 control-label">Relation</label>
                                <div class="col-sm-8">

                                    <select name="nRelation" id="nRelation" class="form-control" style="width: 100%;">
	<option> Select </option>
</select>
                                </div>
                            </div>
                             <div class="form-group row">
                                    <label for="txtAddress" class="col-sm-4 control-label">Address <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <textarea name="address" rows="2" cols="20" id="address" class="form-control" Placeholder="Enter Addess">
</textarea>
                                        <span id="addressspan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Address</span>
                                    </div>
                                </div>

                            <div class="form-group row">
                                    <label for="txtDistrict" class="col-sm-4 control-label">PAN <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <input name="pan" type="text" maxlength="10" id="pan" class="form-control" Placeholder="Enter PAN" />
                                        <span id="panspan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter PAN</span>
                                    </div>
                                </div>
                            <div class="form-group row">
                                    <label for="drpState" class="col-sm-4 control-label">Bank A/C</label>
                                    <div class="col-sm-8">
                                       
                                         <input name="bankAc" type="text" maxlength="20" id="bankAc" class="form-control" />
                                         
                                    </div>
                                </div>
                            <div class="form-group row">
                                    <label for="txtPin" class="col-sm-4 control-label">IFSC Code</label>
                                    <div class="col-sm-8">
                                        <input name="ifsc" type="text" maxlength="16" id="ifsc" class="form-control" Placeholder="Enter IFSC Code" />
                                        
                                    </div>
                                </div>
                            <div class="form-group row">
                                    <label for="txtOccupation" class="col-sm-4 control-label">Exp. Details</label>
                                    <div class="col-sm-8">
                                        <input name="expDetails" type="text" id="expDetails" class="form-control" Placeholder="Enter Exp. Details" />
                                    </div>
                                </div>
                            <div class="form-group row">
                                    <label for="txtEducation" class="col-sm-4 control-label">Qualification</label>
                                    <div class="col-sm-8">
                                        <input name="education" type="text" id="education" class="form-control" Placeholder="Enter Qualification" />
                                    </div>
                                </div>
                            
                        </div>
                    </div>

                </div>
            </div>

            
        </div>
        <div class="row">
            <div class="col-md-10">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Designation Details</h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label  class="col-sm-4 control-label">Designation <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
    <select name="designation" id="designation" class="form-control" style="width: 100%;">
	<option value="">Select</option>
	<option value="101">Officer</option>
	<option value="102">Collector</option>
	<option value="103">Cashier</option>
	<option value="104">Test</option>
	<option value="105">Manager</option>
	<option value="106">Advisor</option>
	<option value="107">Supervisor</option>
	<option value="108">Asst Manager</option>
	<option value="109">General Manager</option>
	<option value="110">HR Manager</option>
	<option value="111">Chairman</option>
	<option value="112">COLLECTOR</option>
	<option value="113">COLLECTOR</option>
	<option value="114">COLLECTOR</option>
	<option value="115">OFFICE BOY</option>
	<option value="116">Cashier</option>

</select>
 <span id="designationspan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label  class="col-sm-4 control-label">Department <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
    <select name="department" id="department" class="form-control" style="width: 100%;">
    <option value="">Select</option>
	<option value="1001">Field Officer</option>
	<option value="1002">Accounts</option>
	<option value="1003">Sales </option>
	<option value="1004">Loan</option>
	<option value="1005">Cash</option>
	<option value="1006">General</option>
	<option value="1007">Collection</option>
	<option value="1008">HR</option>
	<option value="1009">Marketing</option>
	<option value="1010">FIELD OFFICER</option>
	<option value="1011">FIELD OFFICER</option>
	<option value="1012">Sales  PERSON</option>
	<option value="1013">Accounts</option>

</select>
<span id="departmentspan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                </div>
                            </div>
                            

                          
                           
                           
                        </div>
                        <div class="col-md-6">
                          
                            <div class="form-group row">
                                    <label  class="col-sm-4 control-label">Salary <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <input name="salary" type="text" id="salary" class="form-control" onkeypress="return isNumberOnlyKey(this, event);" autocomplete="off" />
                                        <span id="salaryspan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Net Salary</span>
                                    </div>
                                </div>
                           
                            <div class="form-group row">
                                    <label class="col-sm-4 control-label">SB Account No.</label>
                                    <div class="col-sm-8">
                                        <input name="bankAccount" type="text" id="bankAccount" class="form-control" />
                                       
                                    </div>
                                </div>
                            
                        </div>
                    </div>

                </div>
            </div>

            
        </div>



        <div class="row">
            <div class="col-md-10">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Payment Details </h3>
                    </div>
                    
                        <div class="box-body">
                            <div class="col-md-6">

                                <div class="form-group row">
                                    <label class="col-sm-4 control-label">Fees (if any) <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <input name="advisorFees" type="text" value="" id="advisorFees" class="form-control" onkeypress="return isNumberOnlyKey(this, event);" />
                                         <span id="advisorFeesspan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Advisor Fees (if any)</span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="drpPaymentBy" class="col-sm-4 control-label">Payment By <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
    <select name="payMode" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlPaymode\&#39;,\&#39;\&#39;)&#39;, 0)" id="payMode" class="form-control" style="width: 100%;">
	<option value="">Select</option>
	<option value="Cash">Cash</option>
	<option value="Cheque">Cheque</option>
	<option value="Online">Online</option>
	<option value="NEFT">NEFT</option>

</select>
<span id="payModespan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Advisor Fees (if any)</span>
                                    </div>
                                </div>
                                
                               
                                
                               
                                <div class="form-group row">
                                    <label  class="col-sm-4 control-label">Remarks</label>
                                    <div class="col-sm-8">
                                        <textarea name="remarks" rows="2" cols="20" id="remarks" class="form-control" Placeholder="Enter Remarks if any">
</textarea>
<span id="remarksspan" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="col-md-6">
                                
                                <div class="form-group row">
                                    <label class="col-sm-4 control-label">Emp. Status <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <label class="switch">
                                       <input id="isActive" type="checkbox" name="isActive" checked="checked" />
                                        <span class="slider round"></span>
                                            </label>
                                    </div>
                                </div>
                                
                                </div>
                           
                        </div>
                   
                     <div class="box-footer">
                                <div class="row col-md-12"> 
                                    
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnNew" value="New" id="ContentPlaceHolder1_btnNew" class="btn btn-info pull-right margin-r-5" />
                                    <button type="submit" name="ctl00$ContentPlaceHolder1$btnSave" value="Save" onclick="return validationFeilds();" id="ContentPlaceHolder1_btnSave" class="btn btn-success pull-right margin-r-5" >Save</button>
                                </div>
                            </div>
                </div>


                
            </div>
        </div>
    </section>




            </div>
            
             <!-- /.content-wrapper -->
                              <jsp:include page="../footer.jsp" />  
                              
                                <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- InputMask -->
        <script src="plugins/input-mask/jquery.inputmask.js"></script>
        <script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
        <script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
        <!-- date-range-picker -->
        <script src="bower_components/moment/min/moment.min.js"></script>
        <script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- bootstrap datepicker -->
        <script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <!-- bootstrap color picker -->
        <script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
        <!-- bootstrap time picker -->
        <script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
        <!-- SlimScroll -->
        <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- iCheck 1.0.1 -->
        <script src="plugins/iCheck/icheck.min.js"></script>
        <!-- FastClick -->
        <script src="bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js"></script>
         <script src="dist/js/EmpolyeeSection.js"></script>
        <!-- Select2 -->
        <script src="bower_components/select2/dist/js/select2.full.min.js"></script>
        <script>
            $(function () {
                //Initialize Select2 Elements
                $('.select2').select2();
                //Datemask dd/mm/yyyy
                $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
                //Datemask2 mm/dd/yyyy
                $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
                //Date range picker
                $('#reservation').daterangepicker()
                //Date range picker with time picker
                $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' } })
                $('#daterange-btn').daterangepicker(
                 {
                     ranges: {
                         'Today': [moment(), moment()],
                         'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                         'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                         'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                         'This Month': [moment().startOf('month'), moment().endOf('month')],
                         'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                     },
                     startDate: moment().subtract(29, 'days'),
                     endDate: moment()
                 },
                 function (start, end) {
                     $('#daterange-btn span').html(start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'))
                 }
               )
                //Date picker
                $('#datepicker').datepicker({
                    autoclose: true
                })
                //Money Euro
                $('[data-mask]').inputmask()

                //iCheck for checkbox and radio inputs
                $('span[type="checkbox"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                })





            })
        </script>
    
<script type="text/javascript">
//<![CDATA[
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator10"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_txtDOJ";
ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Enter Registration Date";
ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtMemberName";
ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Employee Name";
ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator12 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator12"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator12");
ContentPlaceHolder1_RequiredFieldValidator12.controltovalidate = "ContentPlaceHolder1_txtAge";
ContentPlaceHolder1_RequiredFieldValidator12.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator12.errormessage = "Enter Age";
ContentPlaceHolder1_RequiredFieldValidator12.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator12.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator12.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator12.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator8 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator8"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8");
ContentPlaceHolder1_RequiredFieldValidator8.controltovalidate = "ContentPlaceHolder1_txtPhoneno";
ContentPlaceHolder1_RequiredFieldValidator8.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator8.errormessage = "Enter Phone No";
ContentPlaceHolder1_RequiredFieldValidator8.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator8.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator8.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtAddress";
ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Enter Address";
ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtPAN";
ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter PAN";
ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator10 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator10"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator10");
ContentPlaceHolder1_RequiredFieldValidator10.controltovalidate = "ContentPlaceHolder1_txtSalary";
ContentPlaceHolder1_RequiredFieldValidator10.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator10.errormessage = "Enter Net Salary";
ContentPlaceHolder1_RequiredFieldValidator10.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator10.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator10.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator10.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidator7 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator7"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator7");
ContentPlaceHolder1_RequiredFieldValidator7.controltovalidate = "ContentPlaceHolder1_txtAdvisorFees";
ContentPlaceHolder1_RequiredFieldValidator7.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidator7.errormessage = "Enter Advisor Fees (if any)";
ContentPlaceHolder1_RequiredFieldValidator7.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidator7.validationGroup = "A";
ContentPlaceHolder1_RequiredFieldValidator7.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidator7.initialvalue = "";
//]]>
</script>


<script type="text/javascript">
//<![CDATA[

var Page_ValidationActive = false;
if (typeof(ValidatorOnLoad) == "function") {
    ValidatorOnLoad();
}

function ValidatorOnSubmit() {
    if (Page_ValidationActive) {
        return ValidatorCommonOnSubmit();
    }
    else {
        return true;
    }
}
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator12'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator10').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator10'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator7'));
}
//]]>
</script>
</form>