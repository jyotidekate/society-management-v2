

<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<body class="skin-blue sidebar-mini"  style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
   
    
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE3NzM5NTk5NDMPZBYCZg9kFgQCAQ9kFgICAw9kFgJmDxYCHgRUZXh0BRJFUUZJIE5JREhJIExJTUlURURkAgMPZBYeAgEPFgIeB1Zpc2libGVnZAIDDxYCHwFnZAIFDxYCHwFnZAIHDxYCHwFnZAIJDxYCHwAFEU1haW4gT2ZmaWNlIC0gMDAxZAILDxYCHwAFFDAxLzA4LzIwMjIgLSAxMDoyMEFNZAINDxYCHwAFEzAxLzA4LzIwMjIgLSAyOjUyUE1kAhEPDxYCHghJbWFnZVVybAUZfi9BZG1pbi9kaXN0L2ltZy9Vc2VyLnBuZ2RkAhMPFgIfAAUFYWRtaW5kAhUPDxYCHwIFGX4vQWRtaW4vZGlzdC9pbWcvVXNlci5wbmdkZAIXDxYCHwAFBWFkbWluZAIdDxYCHwAFBEVRRklkAh8PFgIeC18hSXRlbUNvdW50AhIWJGYPZBYEZg8VAwEjPzxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0zLnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPg5NZW1iZXIgU2VjdGlvbmQCAQ8WAh8DAgUWCmYPZBYCZg8VAg5BZGRNZW1iZXIuYXNweApBZGQgTWVtYmVyZAIBD2QWAmYPFQIRQWRkTWVtYmVyS1lDLmFzcHgOQWRkIE1lbWJlciBLWUNkAgIPZBYCZg8VAhVNZW1iZXJBbGxEZXRhaWxzLmFzcHgOTWVtYmVyIFN1bW1hcnlkAgMPZBYCZg8VAhRNZW1iZXJEZXRhaWxScHQuYXNweA1NZW1iZXIgUmVwb3J0ZAIED2QWAmYPFQIRU2VhcmNoTWVtYmVyLmFzcHgNU2VhcmNoIE1lbWJlcmQCAQ9kFgRmDxUDASM/PGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTQucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+DE1lbWJlciBTaGFyZWQCAQ8WAh8DAgUWCmYPZBYCZg8VAh5TaGFyZUlzc3VlLmFzcHg/aXNtb2RpZnk9ZmFsc2UOU2hhcmUgVHJhbnNmZXJkAgEPZBYCZg8VAhlVbmFsbG90ZWRTaGFyZVJlcG9ydC5hc3B4ElVuLWFsbG90dGVkIFNoYXJlc2QCAg9kFgJmDxUCFVNoYXJlQ2VydGlmaWNhdGUuYXNweBFTaGFyZSBDZXJ0aWZpY2F0ZWQCAw9kFgJmDxUCFk1lbWJlclNoYXJlUmVwb3J0LmFzcHgMU2hhcmUgUmVwb3J0ZAIED2QWAmYPFQIQRE5PR2VuZXJhdGUuYXNweA9ETk8gUmUtR2VuZXJhdGVkAgIPZBYEZg8VAwEjPzxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby01LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhFDb2xsZWN0b3IvQWR2aXNvcmQCAQ8WAh8DAgYWDGYPZBYCZg8VAg9BZGRBZHZpc29yLmFzcHgVQWRkIENvbGxlY3Rvci9BZHZpc29yZAIBD2QWAmYPFQIQQWR2aXNvclRyZWUuYXNweBZDb2xsZWN0b3IvQWR2aXNvciBUcmVlZAICD2QWAmYPFQIUQWR2aXNvckRvd25saW5lLmFzcHgaQ29sbGVjdG9yL0Fkdmlzb3IgRG93bmxpbmVkAgMPZBYCZg8VAhdDb2xsZWN0b3JQcm9tb3Rpb24uYXNweBtDb2xsZWN0b3IvQWR2aXNvciBQcm9tb3Rpb25kAgQPZBYCZg8VAhNJRENhcmRQcmludGluZy5hc3B4GENvbGxlY3Rvci9BZHZpc29yIEktQ2FyZGQCBQ9kFgJmDxUCEkFkdmlzb3JTZWFyY2guYXNweBhDb2xsZWN0b3IvQWR2aXNvciBTZWFyY2hkAgMPZBYEZg8VAwEjPzxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0zLnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhBFbXBsb3llZSBTZWN0aW9uZAIBDxYCHwMCBRYKZg9kFgJmDxUCFkRlc2lnbmF0aW9uTWFzdGVyLmFzcHgPQWRkIERlc2lnbmF0aW9uZAIBD2QWAmYPFQIVRGVwYXJ0bWVudE1hc3Rlci5hc3B4DkFkZCBEZXBhcnRtZW50ZAICD2QWAmYPFQIQQWRkRW1wbG95ZWUuYXNweAxBZGQgRW1wbG95ZWVkAgMPZBYCZg8VAhtFbXBsb3llZUlEQ2FyZFByaW50aW5nLmFzcHgPRW1wbG95ZWUgSS1DYXJkZAIED2QWAmYPFQITU2VhcmNoRW1wbG95ZWUuYXNweA9TZWFyY2ggRW1wbG95ZWVkAgQPZBYEZg8VAwEjQDxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby02LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4SSW52ZXN0bWVudCBTZWN0aW9uZAIBDxYCHwMCDRYaZg9kFgJmDxUCD1BsYW5NYXN0ZXIuYXNweAtQbGFuIE1hc3RlcmQCAQ9kFgJmDxUCEkFkZEludmVzdG1lbnQuYXNweA5OZXcgSW52ZXN0bWVudGQCAg9kFgJmDxUCDlJEUmVuZXdhbC5hc3B4D1JlbmV3YWwgUGF5bWVudGQCAw9kFgJmDxUCGERhaWx5UmVuZXdhbFBheW1lbnQuYXNweBVEYWlseSBSZW5ld2FsIFBheW1lbnRkAgQPZBYCZg8VAiZGbGV4aXJlbmV3YWwuYXNweD9Jc01vZGlmaWNhdGlvbj1mYWxzZRVGbGV4aSBSZW5ld2FsIFBheW1lbnRkAgUPZBYCZg8VAhRSZW5ld2FsUGFzc2Jvb2suYXNweBFEYWlseS9SRCBQYXNzYm9va2QCBg9kFgJmDxUCI1BvbGljeVJlbmV3YWxSZWNlaXB0LmFzcHg/SXNUYWc9TmV3EkludmVzdG1lbnQgUmVjZWlwdGQCBw9kFgJmDxUCJVBvbGljeVJlbmV3YWxSZWNlaXB0LmFzcHg/SXNUYWc9UmVuZXcSUmVjdXJyaW5nICBSZWNlaXB0ZAIID2QWAmYPFQIVQ2VydGlmaWNhdGVJc3N1ZS5hc3B4EUNlcnRpZmljYXRlIElzc3VlZAIJD2QWAmYPFQIlQ2VydGlmaWNhdGVJc3N1ZS5hc3B4P1JlUHJpbnQ9UmVwcmludBRDZXJ0aWZpY2F0ZSBSZS1Jc3N1ZWQCCg9kFgJmDxUCHkludmVzdG1lbnRJbnRlcmVzdERldGFpbHMuYXNweBBJbnRlcmVzdCBEZXRhaWxzZAILD2QWAmYPFQIeSW52ZXN0bWVudEludGVyZXN0UGF5YWJsZS5hc3B4EEludGVyZXN0IFBheWFibGVkAgwPZBYCZg8VAhVJbnZlc3RtZW50U2VhcmNoLmFzcHgRSW52ZXN0bWVudCBTZWFyY2hkAgUPZBYEZg8VAwEjQDxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby05LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4PU2F2aW5ncyBBY2NvdW50ZAIBDxYCHwMCCxYWZg9kFgJmDxUCFlNhdmluZ3NQbGFuTWFzdGVyLmFzcHgTU2F2aW5ncyBQbGFuIE1hc3RlcmQCAQ9kFgJmDxUCDkFkZFNhdmluZy5hc3B4D1NhdmluZ3MgT3BlbmluZ2QCAg9kFgJmDxUCHFNhdmluZ3NUcmFuc2FjdGlvbkVudHJ5LmFzcHgTU2F2aW5ncyBUcmFuc2FjdGlvbmQCAw9kFgJmDxUCGFNhdmluZ0ludHJhVHJhbnNmZXIuYXNweBFTQiBJbnRyYSBUcmFuc2ZlcmQCBA9kFgJmDxUCF1NCSW50ZXJlc3RHZW5lcmF0ZS5hc3B4FFNCIEludGVyZXN0IFRyYW5zZmVyZAIFD2QWAmYPFQIUU0JQYXNzYm9va1ByaW50LmFzcHgQU2F2aW5ncyBQYXNzYm9va2QCBg9kFgJmDxUCFVNhdmluZ3NTdGF0ZW1lbnQuYXNweBFTYXZpbmdzIFN0YXRlbWVudGQCBw9kFgJmDxUCEkFjY291bnRDbG9zZXIuYXNweA5BY2NvdW50IENsb3NlcmQCCA9kFgJmDxUCGVNlYXJjaFNhdmluZ3NBY2NvdW50LmFzcHgRU2VhcmNoIFNhdmluZ3MgQUNkAgkPZBYCZg8VAhhTTVNDaGFyZ2VzRGVkdWN0aW9uLmFzcHgVU01TIENoYXJnZXMgRGVkdWN0aW9uZAIKD2QWAmYPFQIcU2VydmljZUNoYXJnZXNEZWR1Y3Rpb24uYXNweBlTZXJ2aWNlIENoYXJnZXMgRGVkdWN0aW9uZAIGD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tNy5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4MTG9hbiBTZWN0aW9uZAIBDxYCHwMCDhYcZg9kFgJmDxUCGUxvYW5QbGFuLmFzcHg/VHlwZT1Ob3JtYWwSTG9hbiBQbGFuIENyZWF0aW9uZAIBD2QWAmYPFQITTG9hbkNhbGN1bGF0b3IuYXNweA9Mb2FuIENhbGN1bGF0b3JkAgIPZBYCZg8VAiVMb2FuQXBwbGljYXRpb24uYXNweD9UeXBlPUFwcGxpY2F0aW9uEExvYW4gQXBwbGljYXRpb25kAgMPZBYCZg8VAiJMb2FuQXBwbGljYXRpb24uYXNweD9UeXBlPUFwcHJvdmFsD0xvYW4gQXV0aG9yaXplZGQCBA9kFgJmDxUCIUxvYW5BcHBsaWNhdGlvbi5hc3B4P1R5cGU9UGF5bWVudBRMb2FuIFBheW1lbnQgU2VjdGlvbmQCBQ9kFgJmDxUCHkxvYW5SZXBheW1lbnQuYXNweD9UeXBlPU5vcm1hbBZSZWd1bGFyIEVtaSBSZS1wYXltZW50ZAIGD2QWAmYPFQIpSXJyZWd1bGFyRU1JUGF5bWVudEVudHJ5LmFzcHg/VHlwZT1Ob3JtYWwYSXJyZWd1bGFyIEVtaSBSZS1wYXltZW50ZAIHD2QWAmYPFQIlUmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPU5vcm1hbBZSZWd1bGFyIExvYW4gU3RhdGVtZW50ZAIID2QWAmYPFQInSXJyZWd1bGFyTG9hblN0YXRlbWVudC5hc3B4P1R5cGU9Tm9ybWFsGElycmVndWxhciBMb2FuIFN0YXRlbWVudGQCCQ9kFgJmDxUCHVJlZ3VsYXJMb2FuRG9jdW1lbnRQcmludC5hc3B4E0xvYW4gRG9jdW1lbnQgUHJpbnRkAgoPZBYCZg8VAiJMb2FuUHJlU2V0dGxlbWVudC5hc3B4P1R5cGU9Tm9ybWFsDlByZSBTZXR0bGVtZW50ZAILD2QWAmYPFQIhQ2xvc2VkTG9hblJlcG9ydC5hc3B4P1R5cGU9Tm9ybWFsE0Nsb3NlZCBsb2FuIERldGFpbHNkAgwPZBYCZg8VAhhMb2FuTm9jLmFzcHg/VHlwZT1Ob3JtYWwPTk9DIENlcnRpZmljYXRlZAIND2QWAmYPFQIPTG9hblNlYXJjaC5hc3B4C1NlYXJjaCBMb2FuZAIHD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tOC5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4JR29sZCBMb2FuZAIBDxYCHwMCDhYcZg9kFgJmDxUCF0xvYW5QbGFuLmFzcHg/VHlwZT1Hb2xkEkdvbGQgUGxhbiBDcmVhdGlvbmQCAQ9kFgJmDxUCE0dvbGRMb2FuTWFzdGVyLmFzcHgQR29sZCBMb2FuIE1hc3RlcmQCAg9kFgJmDxUCKUdvbGRMb2FuQXBwbGljYXRpb24uYXNweD9UeXBlPUFwcGxpY2F0aW9uFUdvbGQgTG9hbiBBcHBsaWNhdGlvbmQCAw9kFgJmDxUCJkdvbGRMb2FuQXBwbGljYXRpb24uYXNweD9UeXBlPUFwcHJvdmFsFEdvbGQgTG9hbiBBdXRob3JpemVkZAIED2QWAmYPFQIlR29sZExvYW5BcHBsaWNhdGlvbi5hc3B4P1R5cGU9UGF5bWVudBRMb2FuIFBheW1lbnQgU2VjdGlvbmQCBQ9kFgJmDxUCHExvYW5SZXBheW1lbnQuYXNweD9UeXBlPUdvbGQWUmVndWxhciBFbWkgUmUtcGF5bWVudGQCBg9kFgJmDxUCJ0lycmVndWxhckVNSVBheW1lbnRFbnRyeS5hc3B4P1R5cGU9R29sZBhJcnJlZ3VsYXIgRW1pIFJlLXBheW1lbnRkAgcPZBYCZg8VAiNSZWd1bGFyTG9hblN0YXRlbWVudC5hc3B4P1R5cGU9R29sZBZSZWd1bGFyIExvYW4gU3RhdGVtZW50ZAIID2QWAmYPFQIlSXJyZWd1bGFyTG9hblN0YXRlbWVudC5hc3B4P1R5cGU9R29sZBhJcnJlZ3VsYXIgTG9hbiBTdGF0ZW1lbnRkAgkPZBYCZg8VAhpHb2xkTG9hbkRvY3VtZW50UHJpbnQuYXNweBRMb2FuIERvY3VtZW50cyBQcmludGQCCg9kFgJmDxUCIExvYW5QcmVTZXR0bGVtZW50LmFzcHg/VHlwZT1Hb2xkDlByZSBTZXR0bGVtZW50ZAILD2QWAmYPFQIfQ2xvc2VkTG9hblJlcG9ydC5hc3B4P1R5cGU9R29sZBNDbG9zZWQgbG9hbiBEZXRhaWxzZAIMD2QWAmYPFQIWTG9hbk5vYy5hc3B4P1R5cGU9R29sZA9OT0MgQ2VydGlmaWNhdGVkAg0PZBYCZg8VAhNHb2xkTG9hblNlYXJjaC5hc3B4C1NlYXJjaCBMb2FuZAIID2QWBGYPFQMBI0E8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTYucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7IiAvPgpHcm91cCBMb2FuZAIBDxYCHwMCDBYYZg9kFgJmDxUCGExvYW5QbGFuLmFzcHg/VHlwZT1Hcm91cBNHcm91cCBQbGFuIENyZWF0aW9uZAIBD2QWAmYPFQIUTG9hbkdyb3VwTWFzdGVyLmFzcHgMR3JvdXAgTWFzdGVyZAICD2QWAmYPFQIZR3JvdXBMb2FuQXBwbGljYXRpb24uYXNweBZHcm91cCBMb2FuIEFwcGxpY2F0aW9uZAIDD2QWAmYPFQIkR3JvdXBMb2FuQXBwcm92YWwuYXNweD9UeXBlPUFwcHJvdmFsFUdyb3VwIExvYW4gQXV0aG9yaXplZGQCBA9kFgJmDxUCI0dyb3VwTG9hbkFwcHJvdmFsLmFzcHg/VHlwZT1QYXltZW50FExvYW4gUGF5bWVudCBTZWN0aW9uZAIFD2QWAmYPFQIdTG9hblJlcGF5bWVudC5hc3B4P1R5cGU9R3JvdXAORW1pIFJlLXBheW1lbnRkAgYPZBYCZg8VAhpHbERhaWx5UmVwYXltZW50U2hlZXQuYXNweBVEYWlseSBSZXBheW1lbnQgU2hlZXRkAgcPZBYCZg8VAhBEZW1hbmRTaGVldC5hc3B4DERlbWFuZCBTaGVldGQCCA9kFgJmDxUCJFJlZ3VsYXJMb2FuU3RhdGVtZW50LmFzcHg/VHlwZT1Hcm91cA5Mb2FuIFN0YXRlbWVudGQCCQ9kFgJmDxUCIUxvYW5QcmVTZXR0bGVtZW50LmFzcHg/VHlwZT1Hcm91cA5QcmUgU2V0dGxlbWVudGQCCg9kFgJmDxUCIUNsb3NlZExvYW5SZXBvcnQuYXNweD9UeXBlPU5vcm1hbBNDbG9zZWQgbG9hbiBEZXRhaWxzZAILD2QWAmYPFQIUR3JvdXBMb2FuU2VhcmNoLmFzcHgLU2VhcmNoIExvYW5kAgkPZBYEZg8VAwEjQTxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xMi5wbmciICBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+EEFwcHJvdmFsIFNlY3Rpb25kAgEPFgIfAwINFhpmD2QWAmYPFQIWQWRkTWVtYmVyQXBwcm92YWwuYXNweBBNZW1iZXIgIEFwcHJvdmFsZAIBD2QWAmYPFQIXU2hhcmVJc3N1ZUFwcHJvdmFsLmFzcHgOU2hhcmUgQXBwcm92YWxkAgIPZBYCZg8VAhRBZHZpc29yQXBwcm92YWwuYXNweBpBZHZpc29yL0NvbGxlY3RvciBBcHByb3ZhbGQCAw9kFgJmDxUCF0ludmVzdG1lbnRBcHByb3ZhbC5hc3B4E0ludmVzdG1lbnQgQXBwcm92YWxkAgQPZBYCZg8VAhZSZWN1cnJpbmdBcHByb3ZhbC5hc3B4E1JlY3VycmluZyAgQXBwcm92YWxkAgUPZBYCZg8VAhJTQlR4bkFwcHJvdmFsLmFzcHgbU2F2aW5nIFRyYW5zYWN0aW9uIEFwcHJvdmFsZAIGD2QWAmYPFQIaSW50cmFUcmFuc2ZlckFwcHJvdmFsLmFzcHgUU0IgVHJhbnNmZXIgQXBwcm92YWxkAgcPZBYCZg8VAhdSZWd1bGFyRU1JQXBwcm92YWwuYXNweBRSZWd1bGFyIEVNSSBBcHByb3ZhbGQCCA9kFgJmDxUCF0lycnVsYXJFTUlBcHByb3ZhbC5hc3B4FklycmVndWxhciBFTUkgQXBwcm92YWxkAgkPZBYCZg8VAhlQYXltZW50RW50cnlBcHByb3ZhbC5hc3B4FlBheW1lbnQgRW50cnkgQXBwcm92YWxkAgoPZBYCZg8VAiBNYXR1cml0eUFwcGxpY2F0aW9uQXBwcm92YWwuYXNweB1NYXR1cml0eSBBcHBsaWNhdGlvbiBBcHByb3ZhbGQCCw9kFgJmDxUCHk1hdHVyaXR5QXBwbGljYXRpb25EZWxldGUuYXNweBtNYXR1cml0eSBBcHBsaWNhdGlvbiBEZWxldGVkAgwPZBYCZg8VAhxDU1BDYXNoVHJhbnNmZXJBcHByb3ZhbC5hc3B4HUJyYW5jaCBDYXNoIFRyYW5zZmVyIEFwcHJvdmFsZAIKD2QWBGYPFQMBI0E8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTAucG5nIiAgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhVSZWN0aWZpY2F0aW9uIFNlY3Rpb25kAgEPFgIfAwINFhpmD2QWAmYPFQIiQWRkTWVtYmVyLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRRNZW1iZXIgUmVjdGlmaWNhdGlvbmQCAQ9kFgJmDxUCHVNoYXJlSXNzdWUuYXNweD9pc21vZGlmeT10cnVlE1NoYXJlIFJlY3RpZmljYXRpb25kAgIPZBYCZg8VAiNBZGRBZHZpc29yLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZR9BZHZpc29yL0NvbGxlY3RvciBSZWN0aWZpY2F0aW9uZAIDD2QWAmYPFQImQWRkSW52ZXN0bWVudC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUYSW52ZXN0bWVudCBSZWN0aWZpY2F0aW9uZAIED2QWAmYPFQIiUkRSZW5ld2FsLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRVSZW5ld2FsIFJlY3RpZmljYXRpb25kAgUPZBYCZg8VAixEYWlseVJlbmV3YWxQYXltZW50LmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRtEYWlseSBSZW5ld2FsIFJlY3RpZmljYXRpb25kAgYPZBYCZg8VAiVGbGV4aVJlbmV3YWwuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlGEZsZXhpIFRyYW5zYWN0aW9uIERlbGV0ZWQCBw9kFgJmDxUCIkFkZFNhdmluZy5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUVU2F2aW5ncyBSZWN0aWZpY2F0aW9uZAIID2QWAmYPFQIwU2F2aW5nc1RyYW5zYWN0aW9uRW50cnkuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlGlNhdmluZ3MgVHJhbnNhY3Rpb24gRGVsZXRlZAIJD2QWAmYPFQIoTG9hbkFwcGxpY2F0aW9uLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRJMb2FuIFJlY3RpZmljYXRpb25kAgoPZBYCZg8VAixHb2xkTG9hbkFwcGxpY2F0aW9uLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRdHb2xkIExvYW4gUmVjdGlmaWNhdGlvbmQCCw9kFgJmDxUCKkdyb3VwTG9hbkFwcHJvdmFsLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRhHcm91cCBMb2FuIFJlY3RpZmljYXRpb25kAgwPZBYCZg8VAiRBZGRFbXBsb3llZS5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUVRW1wbG95ZWUgTW9kaWZpY2F0aW9uZAILD2QWBGYPFQMBI0E8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTEucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7IiAvPhBBY2NvdW50cyBTZWN0aW9uZAIBDxYCHwMCFRYqZg9kFgJmDxUCFUFjY291bnRMZWdNYXN0ZXIuYXNweA1MZWRnZXIgTWFzdGVyZAIBD2QWAmYPFQITUGF5bWVudFZvdWNoZXIuYXNweA1QYXltZW50IEVudHJ5ZAICD2QWAmYPFQITUmVjZWl2ZVZvdWNoZXIuYXNweA1SZWNlaXZlIEVudHJ5ZAIDD2QWAmYPFQIXQ29udHJhVm91Y2hlckVudHJ5LmFzcHgMQ29udHJhIEVudHJ5ZAIED2QWAmYPFQITSm91cm5hbFZvdWNoZXIuYXNweA1Kb3VybmFsIEVudHJ5ZAIFD2QWAmYPFQIVSW5jZW50aXZlUGF5bWVudC5hc3B4EUluY2VudGl2ZSBQYXltZW50ZAIGD2QWAmYPFQIPTUlTUGF5bWVudC5hc3B4EE1JUyBpbnQuIFBheW1lbnRkAgcPZBYCZg8VAhBDaGVxdWVDbGVhci5hc3B4D0NoZXF1ZSBDbGVhcmluZ2QCCA9kFgJmDxUCHFVuZW5jdW1iZXJlZFRlcm1EZXBvc2l0LmFzcHgXTWFuZGF0ZSBEZXBvc2l0IHRvIEJhbmtkAgkPZBYCZg8VAhJCYW5rU3RhdGVtZW50LmFzcHgOQmFuayBTdGF0ZW1lbnRkAgoPZBYCZg8VAhJDYXNoU3RhdGVtZW50LmFzcHgJQ2FzaCBCb29rZAILD2QWAmYPFQIRVHJhbnNmZXJCb29rLmFzcHgNVHJhbnNmZXIgQm9va2QCDA9kFgJmDxUCFVJlZ3VsYXJTdGF0ZW1lbnQuYXNweAhEYXkgQm9va2QCDQ9kFgJmDxUCGkZpbmFuY2lhbExlZGdlclJlcG9ydC5hc3B4DUxlZGdlciBSZXBvcnRkAg4PZBYCZg8VAhJKb3VybmFsUmVwb3J0LmFzcHgOSm91cm5hbCBSZXBvcnRkAg8PZBYCZg8VAhpGaW5hbmNpYWxUcmlhbEJhbGFuY2UuYXNweA1UcmFpbCBCYWxhbmNlZAIQD2QWAmYPFQIQUExTdGF0ZW1lbnQuYXNweBJQJkwgU3RhdGVtZW50IChGWSlkAhEPZBYCZg8VAhpGaW5hbmNpYWxCYWxhbmNlU2hlZXQuYXNweBJCYWxhbmNlIFNoZWV0IChGWSlkAhIPZBYCZg8VAhdQcm9maXRMb3NzRGF0ZVdpc2UuYXNweA1QJkwgU3RhdGVtZW50ZAITD2QWAmYPFQIZQmFsYW5jZVNoZWV0RGF0ZXdpc2UuYXNweA1CYWxhbmNlIFNoZWV0ZAIUD2QWAmYPFQIUQ1NQQ2FzaFRyYW5zZmVyLmFzcHgUQnJhbmNoIENhc2ggVHJhbnNmZXJkAgwPZBYEZg8VAwEjQDxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xMy5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4RSW5jZW50aXZlIFNlY3Rpb25kAgEPFgIfAwIEFghmD2QWAmYPFQIUSW5jZW50aXZlTWFzdGVyLmFzcHgQSW5jZW50aXZlIE1hc3RlcmQCAQ9kFgJmDxUCGEluY2VudGl2ZUdlbmVyYXRpb24uYXNweBJJbmNlbnRpdmUgR2VuZXJhdGVkAgIPZBYCZg8VAhpJbmNlbnRpdmVEZXRhaWxzUHJpbnQuYXNweBFJbmNlbnRpdmUgRGV0YWlsc2QCAw9kFgJmDxUCF0luY2VudGl2ZUxpc3RQcmludC5hc3B4DkluY2VudGl2ZSBMaXN0ZAIND2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTQucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+EE1hdHVyaXR5IFNlY3Rpb25kAgEPFgIfAwIJFhJmD2QWAmYPFQIQUHJlTWF0dXJpdHkuYXNweA9NYXR1cml0eSBNYXN0ZXJkAgEPZBYCZg8VAhhNYXR1cml0eUFwcGxpY2F0aW9uLmFzcHgUTWF0dXJpdHkgQXBwbGljYXRpb25kAgIPZBYCZg8VAhRNYXR1cml0eVBheW1lbnQuYXNweBBNYXR1cml0eSBQYXltZW50ZAIDD2QWAmYPFQIZUmVkZW10aW9uUGFydFBheW1lbnQuYXNweBlNYXR1cml0eSBQYXltZW50IChQYXJ0bHkpZAIED2QWAmYPFQIdTWF0dXJpdHlUcmFja2luZy5hc3B4P0NvZGU9UlIXTWF0LiBBcHBsaWNhdGlvbiBTdGF0dXNkAgUPZBYCZg8VAh1NYXR1cml0eVRyYWNraW5nLmFzcHg/Q29kZT1BUg9BcHByb3ZlZCBTdGF0dXNkAgYPZBYCZg8VAh1NYXR1cml0eVRyYWNraW5nLmFzcHg/Q29kZT1QUhNNYXQuIFBheW1lbnQgU3RhdHVzZAIHD2QWAmYPFQIeTWF0dXJpdHlQYXJ0UGF5bWVudFJlcG9ydC5hc3B4HE1hdC4gUGF5bWVudCBTdGF0dXMgKFBhcnRseSlkAggPZBYCZg8VAhtNYXR1cml0eVJlY2VpcHRSZVByaW50LmFzcHgWTWF0dXJpdHkgUmVjZWlwdCBQcmludGQCDg9kFgRmDxUDASNAPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE1LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPg5SZXBvcnQgU2VjdGlvbmQCAQ8WAh8DAhUWKmYPZBYCZg8VAhpJbnZlc3RtZW50VG90YWxSZXBvcnQuYXNweBFJbnZlc3RtZW50IFJlcG9ydGQCAQ9kFgJmDxUCHEludmVzdG1lbnRSZXBvcnRTdW1tYXJ5LmFzcHgUSW52ZXN0bWVudCAtIFN1bW1hcnlkAgIPZBYCZg8VAhdFbXBsb3llZUNvbGxlY3Rpb24uYXNweBJBZHZpc29yIENvbGxlY3Rpb25kAgMPZBYCZg8VAhpBZHZpc29yVGVhbUNvbGxlY3Rpb24uYXNweBdBZHZpc29yIFRlYW0gQ29sbGVjdGlvbmQCBA9kFgJmDxUCF0NoZXF1ZVN0YXR1c1JlcG9ydC5hc3B4F0NoZXF1ZSBDbGVhcmFuY2UgU3RhdHVzZAIFD2QWAmYPFQIbSW5jZW50aXZlUGF5bWVudFJlcG9ydC5hc3B4GEluY2VudGl2ZSBQYXltZW50IHJlcG9ydGQCBg9kFgJmDxUCF1JlY3VycmluZ0R1ZVJlcG9ydC5hc3B4FFJlY3VycmluZyBEdWUgUmVwb3J0ZAIHD2QWAmYPFQIZTG9hbk5vdEFwcHJvdmVSZXBvcnQuYXNweBhMb2FuIE5vdCBhcHByb3ZlZCBSZXBvcnRkAggPZBYCZg8VAhdMb2FuQXBwcm92YWxSZXBvcnQuYXNweA5BcHByb3ZlZCBMb2FuIGQCCQ9kFgJmDxUCFkxvYW5QYXltZW50UmVwb3J0LmFzcHgTTG9hbiBQYXltZW50IFJlcG9ydGQCCg9kFgJmDxUCFUxvYW5FTUlEdWVSZXBvcnQuYXNweA5EdWUgRW1pIFJlcG9ydGQCCw9kFgJmDxUCGUxvYW5FTUlPdmVyRHVlUmVwb3J0LmFzcHgTRW1pIE92ZXIgRHVlIFJlcG9ydGQCDA9kFgJmDxUCHUxvYW5FTUlPdXRzdGFuZGluZ1JlcG9ydC5hc3B4FkVtaSBPdXRzdGFuZGluZyBSZXBvcnRkAg0PZBYCZg8VAh5FTUlDb2xsZWN0b25SZXBvcnQuYXNweD9UeXBlPVISUmVndWxhciBFTUkgUmVwb3J0ZAIOD2QWAmYPFQIeRU1JQ29sbGVjdG9uUmVwb3J0LmFzcHg/VHlwZT1JFElycmVndWxhciBFTUkgUmVwb3J0ZAIPD2QWAmYPFQIdTG9hbkNvbGxlY3Rpb25zaGVldFByaW50LmFzcHgQTG9hbiBTaGVldCBQcmludGQCEA9kFgJmDxUCGU1hdHVyaXR5U3RhdHVzUmVwb3J0LmFzcHgPTWF0dXJpdHkgU3RhdHVzZAIRD2QWAmYPFQIVUHJvamVjdGlvblJlcG9ydC5hc3B4EVByb2plY3Rpb24gUmVwb3J0ZAISD2QWAmYPFQIcTWF0dXJpdHlMaWFiaWxpdHlSZXBvcnQuYXNweBlNYXR1cml0eSBMaWFiaWxpdHkgUmVwb3J0ZAITD2QWAmYPFQIXVERTRGVkdWN0aW9uUmVwb3J0LmFzcHgUVERTIERlZHVjdGlvbiBSZXBvcnRkAhQPZBYCZg8VAhRQb2xpY3lTdGF0ZW1lbnQuYXNweBBQb2xpY3kgU3RhdGVtZW50ZAIPD2QWBGYPFQMBI0E8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTcucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7IiAvPhJQYXlyb2xsIE1hbmFnZW1lbnRkAgEPFgIfAwIRFiJmD2QWAmYPFQIWRGVzaWduYXRpb25NYXN0ZXIuYXNweA9BZGQgRGVzaWduYXRpb25kAgEPZBYCZg8VAhVEZXBhcnRtZW50TWFzdGVyLmFzcHgOQWRkIERlcGFydG1lbnRkAgIPZBYCZg8VAhNFbXBsb3llZU1hc3Rlci5hc3B4DEFkZCBFbXBsb3llZWQCAw9kFgJmDxUCGUVtcGxveWVlTGVhdmVEZXRhaWxzLmFzcHgORW1wbG95ZWUgTGVhdmVkAgQPZBYCZg8VAhZTYWxhcnlTZXR1cE1hc3Rlci5hc3B4DlNhbGFyeSBEZXRhaWxzZAIFD2QWAmYPFQIZSHJtQXBwb2ludG1lbnRMZXR0ZXIuYXNweBJBcHBvaW50bWVudCBMZXR0ZXJkAgYPZBYCZg8VAhNIcm1PZmZlckxldHRlci5hc3B4Ek9mZmVyIExldHRlciBJc3N1ZWQCBw9kFgJmDxUCEk9mZkRheVNldHRpbmcuYXNweA5Ib2xpZGF5IE1hc3RlcmQCCA9kFgJmDxUCFExlYXZlQWRqdXN0bWVudC5hc3B4EExlYXZlIEFkanVzdG1lbnRkAgkPZBYCZg8VAhJIcm1BdHRlbmRhbmNlLmFzcHgKQXR0ZW5kYW5jZWQCCg9kFgJmDxUCFkhybVNhbGFyeUdlbmVyYXRlLmFzcHgPU2FsYXJ5IEdlbmVyYXRlZAILD2QWAmYPFQIVSHJtU2FsYXJ5UGF5bWVudC5hc3B4DlNhbGFyeSBQYXltZW50ZAIMD2QWAmYPFQIXSHJtU2FsYXJ5U2xpcFByaW50LmFzcHgRU2FsYXJ5IFNsaXAgUHJpbnRkAg0PZBYCZg8VAhVBdHRlbmRhbmNlUmVwb3J0LmFzcHgRQXR0ZW5kYW5jZSBSZXBvcnRkAg4PZBYCZg8VAhtIcm1TYWxhcnlQYXltZW50UmVwb3J0LmFzcHgVU2FsYXJ5IFBheW1lbnQgUmVwb3J0ZAIPD2QWAmYPFQIWSFJNRW1wbG95ZWVTZWFyY2guYXNweA9FbXBsb3llZSBTZWFyY2hkAhAPZBYCZg8VAhZIcm1FbXBsb3llZUlEQ2FyZC5hc3B4EEVtcGxveWVlIElEIENhcmRkAhAPZBYEZg8VAwEjQTxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xOC5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiIC8+Ek1vYmlsZSBBcHAgQ29udHJvbGQCAQ8WAh8DAggWEGYPZBYCZg8VAgpNVXNlci5hc3B4EUFwcCBVc2VyIENyZWF0aW9uZAIBD2QWAmYPFQIaTW9iaWxlX01lbWJlckFwcHJvdmFsLmFzcHgQTWVtYmVyICBBcHByb3ZhbGQCAg9kFgJmDxUCHU1vYmlsZV9Db2xsZWN0b3JBcHByb3ZhbC5hc3B4EEFkdmlzb3IgQXBwcm92YWxkAgMPZBYCZg8VAh5Nb2JpbGVfSW52ZXN0bWVudEFwcHJvdmFsLmFzcHgTSW52ZXN0bWVudCBBcHByb3ZhbGQCBA9kFgJmDxUCG01vYmlsZV9SZW5hd2FsQXBwcm92YWwuYXNweBNSZWN1cnJpbmcgIEFwcHJvdmFsZAIFD2QWAmYPFQIeTW9iaWxlX1JlZ3VsYXJFTUlBcHByb3ZhbC5hc3B4FFJlZ3VsYXIgRU1JIEFwcHJvdmFsZAIGD2QWAmYPFQIgTW9iaWxlX0lycmVndWxhckVNSUFwcHJvdmFsLmFzcHgWSXJyZWd1bGFyIEVNSSBBcHByb3ZhbGQCBw9kFgJmDxUCGU1vYmlsZV9TQlR4bkFwcHJvdmFsLmFzcHgbU2F2aW5nIFRyYW5zYWN0aW9uIEFwcHJvdmFsZAIRD2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTUucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+EU1vYmlsZSBBcHAgUmVwb3J0ZAIBDxYCHwMCBxYOZg9kFgJmDxUCIE1vYmlsZV9NZW1iZXJBcHByb3ZhbFJlcG9ydC5hc3B4Fk1lbWJlciBBcHByb3ZhbCBSZXBvcnRkAgEPZBYCZg8VAiFNb2JpbGVfQWR2aXNvckFwcHJvdmFsUmVwb3J0LmFzcHgXQWR2aXNvciBBcHByb3ZhbCBSZXBvcnRkAgIPZBYCZg8VAiZNb2JpbGVfUmVndWxhckVNSUNvbGxlY3Rpb25SZXBvcnQuYXNweBtSZWd1bGFyIEVNSSBBcHByb3ZhbCBSZXBvcnRkAgMPZBYCZg8VAihNb2JpbGVfSXJyZWd1bGFyRU1JQ29sbGVjdGlvblJlcG9ydC5hc3B4HUlycmVndWxhciBFTUkgQXBwcm92YWwgUmVwb3J0ZAIED2QWAmYPFQIfTW9iaWxlX1NCVHhuQXBwcm92YWxSZXBvcnQuYXNweBZTQiBUeG4gQXBwcm92YWwgUmVwb3J0ZAIFD2QWAmYPFQIkTW9iaWxlX0ludmVzdG1lbnRBcHByb3ZhbFJlcG9ydC5hc3B4GkludmVzdG1lbnQgQXBwcm92YWwgUmVwb3J0ZAIGD2QWAmYPFQIhTW9iaWxlX1JlbmV3YWxBcHByb3ZhbFJlcG9ydC5hc3B4F1JlbmV3YWwgQXBwcm92YWwgUmVwb3J0ZAIjD2QWBgIDDxAPFgYeDkRhdGFWYWx1ZUZpZWxkBQVDQ29kZR4NRGF0YVRleHRGaWVsZAUHQ1NQTmFtZR4LXyFEYXRhQm91bmRnZBAVAgpBbGwgQnJhbmNoEU1haW4gT2ZmaWNlIC0gMDAxFQIDQWxsAzAwMRQrAwJnZ2RkAhEPFCsABWQoKVhTeXN0ZW0uR3VpZCwgbXNjb3JsaWIsIFZlcnNpb249NC4wLjAuMCwgQ3VsdHVyZT1uZXV0cmFsLCBQdWJsaWNLZXlUb2tlbj1iNzdhNWM1NjE5MzRlMDg5JGI0ZTY1ODE5LWRiNGYtNDkwOS05ODEzLWVhODAxNzZhZGIzYgIBFCsAATwrAAQBAGZkZAITDxQrAAVkKCsEJGE2MTU1OWQ4LTk3YTMtNDgxYy1iZDQzLWY5NmFlMTk1YTA0MgIBFCsAATwrAAQBAGZkZAIlDw8WAh8ABRJFUUZJIE5JREhJIExJTUlURURkZGSTjtOaNPffYMNoqyYAI4VPWp+uRomj9DjDsrnQ6vfzRA==" />
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


<script src="../WebResourcea077.js?d=aKrB3Wg4ktcAdLzfwHNclnzQJginAX-WDxEXiKln398ZfxSpl5en7e6-r-t6qAS--33aKUyvVcAR5D4ulS_TNNrAx-wX18laGa3-ySpD_j01&amp;t=637290976998988531" type="text/javascript"></script>


<script src="../ScriptResourced8e7.js?d=uSqqCHFE8MMix38uq8GgGybxYtpH6dYwFMSYHjhHytO5jH1yPS2uWYjdlBZZSuu9t5CBFsRRRI6lEwvTTYPraDdistIqSYPDLCP6VorXyjIpQTji_JKtdkLVZLH_mYVZvHI4YJqUtS662n__8I2atI54HJ4NkBUVIeVAPnAuCTI1&amp;t=2a797f5c" type="text/javascript"></script>
<script src="../ScriptResourceb4d6.js?d=KzKHuQVzCI25ZiHK9SA2HZdRjaymXCFpWiizBRMk8lvEiiZsQoLPz0ARKvRH6PmSA3Tt96qvSLsIOMPBDLx_VBsyISpzBQoSBrYr5izAbtKSWsBVrS0pYd7veJqhmzHYrhKgOEJXiOei6ZrcxpAdqnYxCXhjNIW9HOvs7dp7o0kgl18uTZv1SVlBuafpWq2x0&amp;t=2a797f5c" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D1E0E168" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAle5aouhITtjGqGfAGYoZfGXXhtDrRv6st/qI+x+N0hz4VNppXIEHMAIHNnY0nj1N3T0Pq/1cDfbPKKLoVNMhKcFvD/zVADzuUXng+CCuGRtEPQI1RC2v7K0iVkfbE9+2rNLwNnpX7SaGgjTqu3VexijkxbpcxoWPNP2dR2wiSei64jW+fDmcIdY/ICXQIODiCX1Br0jnjCNmhetVma4JlHUlimKr6BiUoFNhyPigyWFw==" />
</div>

        <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">

            <header class="main-header">

                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse pull-left" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a class="b-1" href="Home.html">Home</a></li>
                            <li id="idconfig" class="dropdown">
                                <a class="dropdown-toggle b-1" data-toggle="dropdown" href="#" aria-expanded="false">Configuration <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="CompanyDetails.html">Company Setting</a></li>
                                    <li><a href="AddFinancialMaster.html">Add FY Master</a></li>
                                    <li><a href="Branch.html">Branch Creation</a></li>
                                    <li><a href="AddBankAccount.html">Bank Master</a></li>
                                    <li><a href="CodeSetting.html">Code Setting</a></li>
                                    <li><a href="DirectorDetail.html">Add Director/Promoter</a></li>
                                    <li><a href="UserCreate.html">User Creation</a></li>
                                    <li><a href="UserMenuAccess.html">User Menu Access</a></li>
                                    <li><a href="UserActivityReport.html">User Activity Report</a></li>
                                    
                                </ul>
                            </li>
                            <li id="idLegal" class="dropdown">
                                <a class="dropdown-toggle b-1" data-toggle="dropdown" href="#" aria-expanded="false">NDH Report <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="NDH1Form.html">NDH-1</a></li>
                                    <li><a href="NDH2Form.html">NDH-2</a></li>
                                    <li><a href="NDH3Form.html">NDH-3</a></li>
                                    <li><a href="NDH4Form.html">NDH-4</a></li>
                                    <li><a href="MemberReportFor_NDH.html">Member Report</a></li>
                                    <li><a href="InvestmentReportFor_NDH.html">Investment Report</a></li>
                                    <li><a href="SavingsReportFor_NDH.html">Savings Account Report</a></li>
                                    <li><a href="LoanEMIOutstandingReport.html">Loan Report</a></li>
                                </ul>
                            </li>
                            
                            <li id="idcollsheet"><a class="b-1" href="AllCollectionSheet.html">Collection Sheet</a></li>
                            <li id="idquickdep"><a class="b-1" href="QuickDeposit.html">Quick Deposit <span class="label label-success">NEW</span></a></li>

                           

                        </ul>
                    </div>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav p-1">
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-success">3</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 3 messages</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <!-- start message -->
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <i class="fa fa-align-right text-danger"></i>
                                                    </div>
                                                    <h4>LogIn Branch
                       
                                                        <small><i class="fa fa-clock-o"></i></small>
                                                    </h4>
                                                    <p>
                                                       Main Office - 001
                                                    </p>
                                                </a>
                                            </li>
                                            <!-- end message -->
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <i class="fa fa-align-right text-danger"></i>
                                                    </div>
                                                    <h4>Last LogIn Date/Time
                       
                                                        <small><i class="fa fa-clock-o"></i></small>
                                                    </h4>
                                                    <p>
                                                        01/08/2022 - 10:20AM
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <i class="fa fa-align-right text-danger"></i>
                                                    </div>
                                                    <h4>Server Date/Time
                       
                                                        <small><i class="fa fa-clock-o"></i></small>
                                                    </h4>
                                                    <p>
                                                       01/08/2022 - 2:52PM
                                                    </p>
                                                </a>
                                            </li>
                                            <li>
                                                
                                            </li>

                                        </ul>
                                    </li>

                                </ul>
                            </li>
                            <!-- Notifications: style can be found in dropdown.less -->
                            <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">4</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 4 notifications</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a href="RecurringDueNotification.html">
                                                    <i class="fa fa-recycle text-aqua"></i>Renewal Due Today
                                                </a>
                                            </li>
                                            <li>
                                                <a href="LoanEmiDueNotification.html">
                                                    <i class="fa fa-newspaper-o text-yellow"></i>EMI Due Today
                                                </a>
                                            </li>
                                            <li>
                                                <a href="MaturityNotification.html">
                                                    <i class="fa fa-money text-red"></i>Maturity Today
                                                </a>
                                            </li>
                                            <li>
                                                <a href="MemberBirthdayNotification.html">
                                                    <i class="fa fa-birthday-cake text-green"></i>Member Birthday
                                                </a>
                                            </li>
                                           
                                        </ul>
                                    </li>

                                </ul>
                            </li>


                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img id="imgRightside" class="user-image" alt="User Image" src="dist/img/User.png" />
                                    <span class="hidden-xs">admin
                                    </span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img id="imgdrop" class="img-circle" alt="User Image" src="dist/img/User.png" />
                                        <p>
                                             admin
                                        </p>
                                    </li>
                                    <!-- Menu Body -->

                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a id="lnkChangeUserPhoto" class="btn btn-default btn-flat" href="javascript:__doPostBack(&#39;ctl00$lnkChangeUserPhoto&#39;,&#39;&#39;)">Change Password</a>
                                        </div>
                                        <div class="pull-right">
                                           <a id="lnklogout" class="btn btn-default btn-flat" href="javascript:__doPostBack(&#39;ctl00$lnklogout&#39;,&#39;&#39;)">Logout</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <!-- <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li> -->
                        </ul>
                    </div>

                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar" style="height: auto;">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="txt">
                            EQFI
                        </div>
                    </div>
                    <!-- search form -->
                    
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu tree" data-widget="tree">
                     
                         <li class="active">
                            <a href="Home.html">
                                <img src="dist/img/icon/ico-1.png" style="margin-right: 5px;" />
                                <span>Dashboard</span>
                            </a>
                        </li>
                        
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-3.png" style="margin-right: 5px;"/><span>Member Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="AddMember.html"><i class="fa fa-circle-o"></i>Add Member</a></li>
                                            
                                                <li><a href="AddMemberKYC.html"><i class="fa fa-circle-o"></i>Add Member KYC</a></li>
                                            
                                                <li><a href="MemberAllDetails.html"><i class="fa fa-circle-o"></i>Member Summary</a></li>
                                            
                                                <li><a href="MemberDetailRpt.html"><i class="fa fa-circle-o"></i>Member Report</a></li>
                                            
                                                <li><a href="SearchMember.html"><i class="fa fa-circle-o"></i>Search Member</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-4.png" style="margin-right: 5px;"/><span>Member Share</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="ShareIssueca9f.html?ismodify=false"><i class="fa fa-circle-o"></i>Share Transfer</a></li>
                                            
                                                <li><a href="UnallotedShareReport.html"><i class="fa fa-circle-o"></i>Un-allotted Shares</a></li>
                                            
                                                <li><a href="ShareCertificate.html"><i class="fa fa-circle-o"></i>Share Certificate</a></li>
                                            
                                                <li><a href="MemberShareReport.html"><i class="fa fa-circle-o"></i>Share Report</a></li>
                                            
                                                <li><a href="DNOGenerate.html"><i class="fa fa-circle-o"></i>DNO Re-Generate</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-5.png" style="margin-right: 5px;"/><span>Collector/Advisor</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="AddAdvisor.html"><i class="fa fa-circle-o"></i>Add Collector/Advisor</a></li>
                                            
                                                <li><a href="AdvisorTree.html"><i class="fa fa-circle-o"></i>Collector/Advisor Tree</a></li>
                                            
                                                <li><a href="AdvisorDownline.html"><i class="fa fa-circle-o"></i>Collector/Advisor Downline</a></li>
                                            
                                                <li><a href="CollectorPromotion.html"><i class="fa fa-circle-o"></i>Collector/Advisor Promotion</a></li>
                                            
                                                <li><a href="IDCardPrinting.html"><i class="fa fa-circle-o"></i>Collector/Advisor I-Card</a></li>
                                            
                                                <li><a href="AdvisorSearch.html"><i class="fa fa-circle-o"></i>Collector/Advisor Search</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-3.png" style="margin-right: 5px;"/><span>Employee Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="DesignationMaster.html"><i class="fa fa-circle-o"></i>Add Designation</a></li>
                                            
                                                <li><a href="DepartmentMaster.html"><i class="fa fa-circle-o"></i>Add Department</a></li>
                                            
                                                <li><a href="AddEmployee.html"><i class="fa fa-circle-o"></i>Add Employee</a></li>
                                            
                                                <li><a href="EmployeeIDCardPrinting.html"><i class="fa fa-circle-o"></i>Employee I-Card</a></li>
                                            
                                                <li><a href="SearchEmployee.html"><i class="fa fa-circle-o"></i>Search Employee</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-6.png" style="margin-right: 5px;" /><span>Investment Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="PlanMaster.html"><i class="fa fa-circle-o"></i>Plan Master</a></li>
                                            
                                                <li><a href="AddInvestment.html"><i class="fa fa-circle-o"></i>New Investment</a></li>
                                            
                                                <li><a href="RDRenewal.html"><i class="fa fa-circle-o"></i>Renewal Payment</a></li>
                                            
                                                <li><a href="DailyRenewalPayment.html"><i class="fa fa-circle-o"></i>Daily Renewal Payment</a></li>
                                            
                                                <li><a href="Flexirenewal9828.html?IsModification=false"><i class="fa fa-circle-o"></i>Flexi Renewal Payment</a></li>
                                            
                                                <li><a href="RenewalPassbook.html"><i class="fa fa-circle-o"></i>Daily/RD Passbook</a></li>
                                            
                                                <li><a href="PolicyRenewalReceiptf0be.html?IsTag=New"><i class="fa fa-circle-o"></i>Investment Receipt</a></li>
                                            
                                                <li><a href="PolicyRenewalReceiptb376.html?IsTag=Renew"><i class="fa fa-circle-o"></i>Recurring  Receipt</a></li>
                                            
                                                <li><a href="CertificateIssue.html"><i class="fa fa-circle-o"></i>Certificate Issue</a></li>
                                            
                                                <li><a href="CertificateIssue46b3.html?RePrint=Reprint"><i class="fa fa-circle-o"></i>Certificate Re-Issue</a></li>
                                            
                                                <li><a href="InvestmentInterestDetails.html"><i class="fa fa-circle-o"></i>Interest Details</a></li>
                                            
                                                <li><a href="InvestmentInterestPayable.html"><i class="fa fa-circle-o"></i>Interest Payable</a></li>
                                            
                                                <li><a href="InvestmentSearch.html"><i class="fa fa-circle-o"></i>Investment Search</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-9.png" style="margin-right: 5px;" /><span>Savings Account</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="SavingsPlanMaster.html"><i class="fa fa-circle-o"></i>Savings Plan Master</a></li>
                                            
                                                <li><a href="AddSaving.html"><i class="fa fa-circle-o"></i>Savings Opening</a></li>
                                            
                                                <li><a href="SavingsTransactionEntry.html"><i class="fa fa-circle-o"></i>Savings Transaction</a></li>
                                            
                                                <li><a href="SavingIntraTransfer.html"><i class="fa fa-circle-o"></i>SB Intra Transfer</a></li>
                                            
                                                <li><a href="SBInterestGenerate.html"><i class="fa fa-circle-o"></i>SB Interest Transfer</a></li>
                                            
                                                <li><a href="SBPassbookPrint.html"><i class="fa fa-circle-o"></i>Savings Passbook</a></li>
                                            
                                                <li><a href="SavingsStatement.html"><i class="fa fa-circle-o"></i>Savings Statement</a></li>
                                            
                                                <li><a href="AccountCloser.html"><i class="fa fa-circle-o"></i>Account Closer</a></li>
                                            
                                                <li><a href="SearchSavingsAccount.html"><i class="fa fa-circle-o"></i>Search Savings AC</a></li>
                                            
                                                <li><a href="SMSChargesDeduction.html"><i class="fa fa-circle-o"></i>SMS Charges Deduction</a></li>
                                            
                                                <li><a href="ServiceChargesDeduction.html"><i class="fa fa-circle-o"></i>Service Charges Deduction</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-7.png" style="margin-right: 5px;"/><span>Loan Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="LoanPlanf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Loan Plan Creation</a></li>
                                            
                                                <li><a href="LoanCalculator.html"><i class="fa fa-circle-o"></i>Loan Calculator</a></li>
                                            
                                                <li><a href="LoanApplication7475.html?Type=Application"><i class="fa fa-circle-o"></i>Loan Application</a></li>
                                            
                                                <li><a href="LoanApplication9c5a.html?Type=Approval"><i class="fa fa-circle-o"></i>Loan Authorized</a></li>
                                            
                                                <li><a href="LoanApplicationf780.html?Type=Payment"><i class="fa fa-circle-o"></i>Loan Payment Section</a></li>
                                            
                                                <li><a href="LoanRepaymentf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Regular Emi Re-payment</a></li>
                                            
                                                <li><a href="IrregularEMIPaymentEntryf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Irregular Emi Re-payment</a></li>
                                            
                                                <li><a href="RegularLoanStatementf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Regular Loan Statement</a></li>
                                            
                                                <li><a href="IrregularLoanStatementf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Irregular Loan Statement</a></li>
                                            
                                                <li><a href="RegularLoanDocumentPrint.html"><i class="fa fa-circle-o"></i>Loan Document Print</a></li>
                                            
                                                <li><a href="LoanPreSettlementf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Pre Settlement</a></li>
                                            
                                                <li><a href="ClosedLoanReportf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Closed loan Details</a></li>
                                            
                                                <li><a href="LoanNocf159.html?Type=Normal"><i class="fa fa-circle-o"></i>NOC Certificate</a></li>
                                            
                                                <li><a href="LoanSearch.html"><i class="fa fa-circle-o"></i>Search Loan</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-8.png" style="margin-right: 5px;"/><span>Gold Loan</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="LoanPlan9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Gold Plan Creation</a></li>
                                            
                                                <li><a href="GoldLoanMaster.html"><i class="fa fa-circle-o"></i>Gold Loan Master</a></li>
                                            
                                                <li><a href="GoldLoanApplication7475.html?Type=Application"><i class="fa fa-circle-o"></i>Gold Loan Application</a></li>
                                            
                                                <li><a href="GoldLoanApplication9c5a.html?Type=Approval"><i class="fa fa-circle-o"></i>Gold Loan Authorized</a></li>
                                            
                                                <li><a href="GoldLoanApplicationf780.html?Type=Payment"><i class="fa fa-circle-o"></i>Loan Payment Section</a></li>
                                            
                                                <li><a href="LoanRepayment9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Regular Emi Re-payment</a></li>
                                            
                                                <li><a href="IrregularEMIPaymentEntry9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Irregular Emi Re-payment</a></li>
                                            
                                                <li><a href="RegularLoanStatement9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Regular Loan Statement</a></li>
                                            
                                                <li><a href="IrregularLoanStatement9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Irregular Loan Statement</a></li>
                                            
                                                <li><a href="GoldLoanDocumentPrint.html"><i class="fa fa-circle-o"></i>Loan Documents Print</a></li>
                                            
                                                <li><a href="LoanPreSettlement9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Pre Settlement</a></li>
                                            
                                                <li><a href="ClosedLoanReport9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>Closed loan Details</a></li>
                                            
                                                <li><a href="LoanNoc9d5e.html?Type=Gold"><i class="fa fa-circle-o"></i>NOC Certificate</a></li>
                                            
                                                <li><a href="GoldLoanSearch.html"><i class="fa fa-circle-o"></i>Search Loan</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-16.png" style="margin-right: 5px;" /><span>Group Loan</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="LoanPlan5c22.html?Type=Group"><i class="fa fa-circle-o"></i>Group Plan Creation</a></li>
                                            
                                                <li><a href="LoanGroupMaster.html"><i class="fa fa-circle-o"></i>Group Master</a></li>
                                            
                                                <li><a href="GroupLoanApplication.html"><i class="fa fa-circle-o"></i>Group Loan Application</a></li>
                                            
                                                <li><a href="GroupLoanApproval9c5a.html?Type=Approval"><i class="fa fa-circle-o"></i>Group Loan Authorized</a></li>
                                            
                                                <li><a href="GroupLoanApprovalf780.html?Type=Payment"><i class="fa fa-circle-o"></i>Loan Payment Section</a></li>
                                            
                                                <li><a href="LoanRepayment5c22.html?Type=Group"><i class="fa fa-circle-o"></i>Emi Re-payment</a></li>
                                            
                                                <li><a href="GlDailyRepaymentSheet.html"><i class="fa fa-circle-o"></i>Daily Repayment Sheet</a></li>
                                            
                                                <li><a href="DemandSheet.html"><i class="fa fa-circle-o"></i>Demand Sheet</a></li>
                                            
                                                <li><a href="RegularLoanStatement5c22.html?Type=Group"><i class="fa fa-circle-o"></i>Loan Statement</a></li>
                                            
                                                <li><a href="LoanPreSettlement5c22.html?Type=Group"><i class="fa fa-circle-o"></i>Pre Settlement</a></li>
                                            
                                                <li><a href="ClosedLoanReportf159.html?Type=Normal"><i class="fa fa-circle-o"></i>Closed loan Details</a></li>
                                            
                                                <li><a href="GroupLoanSearch.html"><i class="fa fa-circle-o"></i>Search Loan</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-12.png"  style="margin-right: 5px;"/><span>Approval Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="AddMemberApproval.html"><i class="fa fa-circle-o"></i>Member  Approval</a></li>
                                            
                                                <li><a href="ShareIssueApproval.html"><i class="fa fa-circle-o"></i>Share Approval</a></li>
                                            
                                                <li><a href="AdvisorApproval.html"><i class="fa fa-circle-o"></i>Advisor/Collector Approval</a></li>
                                            
                                                <li><a href="InvestmentApproval.html"><i class="fa fa-circle-o"></i>Investment Approval</a></li>
                                            
                                                <li><a href="RecurringApproval.html"><i class="fa fa-circle-o"></i>Recurring  Approval</a></li>
                                            
                                                <li><a href="SBTxnApproval.html"><i class="fa fa-circle-o"></i>Saving Transaction Approval</a></li>
                                            
                                                <li><a href="IntraTransferApproval.html"><i class="fa fa-circle-o"></i>SB Transfer Approval</a></li>
                                            
                                                <li><a href="RegularEMIApproval.html"><i class="fa fa-circle-o"></i>Regular EMI Approval</a></li>
                                            
                                                <li><a href="IrrularEMIApproval.html"><i class="fa fa-circle-o"></i>Irregular EMI Approval</a></li>
                                            
                                                <li><a href="PaymentEntryApproval.html"><i class="fa fa-circle-o"></i>Payment Entry Approval</a></li>
                                            
                                                <li><a href="MaturityApplicationApproval.html"><i class="fa fa-circle-o"></i>Maturity Application Approval</a></li>
                                            
                                                <li><a href="MaturityApplicationDelete.html"><i class="fa fa-circle-o"></i>Maturity Application Delete</a></li>
                                            
                                                <li><a href="CSPCashTransferApproval.html"><i class="fa fa-circle-o"></i>Branch Cash Transfer Approval</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-10.png"  style="margin-right: 5px;"/><span>Rectification Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="AddMemberbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Member Rectification</a></li>
                                            
                                                <li><a href="ShareIssuef00f.html?ismodify=true"><i class="fa fa-circle-o"></i>Share Rectification</a></li>
                                            
                                                <li><a href="AddAdvisorbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Advisor/Collector Rectification</a></li>
                                            
                                                <li><a href="AddInvestmentbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Investment Rectification</a></li>
                                            
                                                <li><a href="RDRenewalbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Renewal Rectification</a></li>
                                            
                                                <li><a href="DailyRenewalPaymentbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Daily Renewal Rectification</a></li>
                                            
                                                <li><a href="FlexiRenewalbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Flexi Transaction Delete</a></li>
                                            
                                                <li><a href="AddSavingbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Savings Rectification</a></li>
                                            
                                                <li><a href="SavingsTransactionEntrybbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Savings Transaction Delete</a></li>
                                            
                                                <li><a href="LoanApplicationbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Loan Rectification</a></li>
                                            
                                                <li><a href="GoldLoanApplicationbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Gold Loan Rectification</a></li>
                                            
                                                <li><a href="GroupLoanApprovalbbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Group Loan Rectification</a></li>
                                            
                                                <li><a href="AddEmployeebbb6.html?IsModification=true"><i class="fa fa-circle-o"></i>Employee Modification</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-11.png" style="margin-right: 5px;" /><span>Accounts Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="AccountLegMaster.html"><i class="fa fa-circle-o"></i>Ledger Master</a></li>
                                            
                                                <li><a href="PaymentVoucher.html"><i class="fa fa-circle-o"></i>Payment Entry</a></li>
                                            
                                                <li><a href="ReceiveVoucher.html"><i class="fa fa-circle-o"></i>Receive Entry</a></li>
                                            
                                                <li><a href="ContraVoucherEntry.html"><i class="fa fa-circle-o"></i>Contra Entry</a></li>
                                            
                                                <li><a href="JournalVoucher.html"><i class="fa fa-circle-o"></i>Journal Entry</a></li>
                                            
                                                <li><a href="IncentivePayment.html"><i class="fa fa-circle-o"></i>Incentive Payment</a></li>
                                            
                                                <li><a href="MISPayment.html"><i class="fa fa-circle-o"></i>MIS int. Payment</a></li>
                                            
                                                <li><a href="ChequeClear.html"><i class="fa fa-circle-o"></i>Cheque Clearing</a></li>
                                            
                                                <li><a href="UnencumberedTermDeposit.html"><i class="fa fa-circle-o"></i>Mandate Deposit to Bank</a></li>
                                            
                                                <li><a href="BankStatement.html"><i class="fa fa-circle-o"></i>Bank Statement</a></li>
                                            
                                                <li><a href="CashStatement.html"><i class="fa fa-circle-o"></i>Cash Book</a></li>
                                            
                                                <li><a href="TransferBook.html"><i class="fa fa-circle-o"></i>Transfer Book</a></li>
                                            
                                                <li><a href="RegularStatement.html"><i class="fa fa-circle-o"></i>Day Book</a></li>
                                            
                                                <li><a href="FinancialLedgerReport.html"><i class="fa fa-circle-o"></i>Ledger Report</a></li>
                                            
                                                <li><a href="JournalReport.html"><i class="fa fa-circle-o"></i>Journal Report</a></li>
                                            
                                                <li><a href="FinancialTrialBalance.html"><i class="fa fa-circle-o"></i>Trail Balance</a></li>
                                            
                                                <li><a href="PLStatement.html"><i class="fa fa-circle-o"></i>P&L Statement (FY)</a></li>
                                            
                                                <li><a href="FinancialBalanceSheet.html"><i class="fa fa-circle-o"></i>Balance Sheet (FY)</a></li>
                                            
                                                <li><a href="ProfitLossDateWise.html"><i class="fa fa-circle-o"></i>P&L Statement</a></li>
                                            
                                                <li><a href="BalanceSheetDatewise.html"><i class="fa fa-circle-o"></i>Balance Sheet</a></li>
                                            
                                                <li><a href="CSPCashTransfer.html"><i class="fa fa-circle-o"></i>Branch Cash Transfer</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-13.png" style="margin-right: 5px;"/><span>Incentive Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="IncentiveMaster.html"><i class="fa fa-circle-o"></i>Incentive Master</a></li>
                                            
                                                <li><a href="IncentiveGeneration.html"><i class="fa fa-circle-o"></i>Incentive Generate</a></li>
                                            
                                                <li><a href="IncentiveDetailsPrint.html"><i class="fa fa-circle-o"></i>Incentive Details</a></li>
                                            
                                                <li><a href="IncentiveListPrint.html"><i class="fa fa-circle-o"></i>Incentive List</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-14.png" style="margin-right: 5px;"/><span>Maturity Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="PreMaturity.html"><i class="fa fa-circle-o"></i>Maturity Master</a></li>
                                            
                                                <li><a href="MaturityApplication.html"><i class="fa fa-circle-o"></i>Maturity Application</a></li>
                                            
                                                <li><a href="MaturityPayment.html"><i class="fa fa-circle-o"></i>Maturity Payment</a></li>
                                            
                                                <li><a href="RedemtionPartPayment.html"><i class="fa fa-circle-o"></i>Maturity Payment (Partly)</a></li>
                                            
                                                <li><a href="MaturityTracking02a9.html?Code=RR"><i class="fa fa-circle-o"></i>Mat. Application Status</a></li>
                                            
                                                <li><a href="MaturityTrackinge23f.html?Code=AR"><i class="fa fa-circle-o"></i>Approved Status</a></li>
                                            
                                                <li><a href="MaturityTrackingf0bf.html?Code=PR"><i class="fa fa-circle-o"></i>Mat. Payment Status</a></li>
                                            
                                                <li><a href="MaturityPartPaymentReport.html"><i class="fa fa-circle-o"></i>Mat. Payment Status (Partly)</a></li>
                                            
                                                <li><a href="MaturityReceiptRePrint.html"><i class="fa fa-circle-o"></i>Maturity Receipt Print</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-15.png" style="margin-right: 5px;"/><span>Report Section</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="InvestmentTotalReport.html"><i class="fa fa-circle-o"></i>Investment Report</a></li>
                                            
                                                <li><a href="InvestmentReportSummary.html"><i class="fa fa-circle-o"></i>Investment - Summary</a></li>
                                            
                                                <li><a href="EmployeeCollection.html"><i class="fa fa-circle-o"></i>Advisor Collection</a></li>
                                            
                                                <li><a href="AdvisorTeamCollection.html"><i class="fa fa-circle-o"></i>Advisor Team Collection</a></li>
                                            
                                                <li><a href="ChequeStatusReport.html"><i class="fa fa-circle-o"></i>Cheque Clearance Status</a></li>
                                            
                                                <li><a href="IncentivePaymentReport.html"><i class="fa fa-circle-o"></i>Incentive Payment report</a></li>
                                            
                                                <li><a href="RecurringDueReport.html"><i class="fa fa-circle-o"></i>Recurring Due Report</a></li>
                                            
                                                <li><a href="LoanNotApproveReport.html"><i class="fa fa-circle-o"></i>Loan Not approved Report</a></li>
                                            
                                                <li><a href="LoanApprovalReport.html"><i class="fa fa-circle-o"></i>Approved Loan </a></li>
                                            
                                                <li><a href="LoanPaymentReport.html"><i class="fa fa-circle-o"></i>Loan Payment Report</a></li>
                                            
                                                <li><a href="LoanEMIDueReport.html"><i class="fa fa-circle-o"></i>Due Emi Report</a></li>
                                            
                                                <li><a href="LoanEMIOverDueReport.html"><i class="fa fa-circle-o"></i>Emi Over Due Report</a></li>
                                            
                                                <li><a href="LoanEMIOutstandingReport.html"><i class="fa fa-circle-o"></i>Emi Outstanding Report</a></li>
                                            
                                                <li><a href="EMICollectonReport6d6e.html?Type=R"><i class="fa fa-circle-o"></i>Regular EMI Report</a></li>
                                            
                                                <li><a href="EMICollectonReport7506.html?Type=I"><i class="fa fa-circle-o"></i>Irregular EMI Report</a></li>
                                            
                                                <li><a href="LoanCollectionsheetPrint.html"><i class="fa fa-circle-o"></i>Loan Sheet Print</a></li>
                                            
                                                <li><a href="MaturityStatusReport.html"><i class="fa fa-circle-o"></i>Maturity Status</a></li>
                                            
                                                <li><a href="ProjectionReport.html"><i class="fa fa-circle-o"></i>Projection Report</a></li>
                                            
                                                <li><a href="MaturityLiabilityReport.html"><i class="fa fa-circle-o"></i>Maturity Liability Report</a></li>
                                            
                                                <li><a href="TDSDeductionReport.html"><i class="fa fa-circle-o"></i>TDS Deduction Report</a></li>
                                            
                                                <li><a href="PolicyStatement.html"><i class="fa fa-circle-o"></i>Policy Statement</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-17.png" style="margin-right: 5px;" /><span>Payroll Management</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="DesignationMaster.html"><i class="fa fa-circle-o"></i>Add Designation</a></li>
                                            
                                                <li><a href="DepartmentMaster.html"><i class="fa fa-circle-o"></i>Add Department</a></li>
                                            
                                                <li><a href="EmployeeMaster.html"><i class="fa fa-circle-o"></i>Add Employee</a></li>
                                            
                                                <li><a href="EmployeeLeaveDetails.html"><i class="fa fa-circle-o"></i>Employee Leave</a></li>
                                            
                                                <li><a href="SalarySetupMaster.html"><i class="fa fa-circle-o"></i>Salary Details</a></li>
                                            
                                                <li><a href="HrmAppointmentLetter.html"><i class="fa fa-circle-o"></i>Appointment Letter</a></li>
                                            
                                                <li><a href="HrmOfferLetter.html"><i class="fa fa-circle-o"></i>Offer Letter Issue</a></li>
                                            
                                                <li><a href="OffDaySetting.html"><i class="fa fa-circle-o"></i>Holiday Master</a></li>
                                            
                                                <li><a href="LeaveAdjustment.html"><i class="fa fa-circle-o"></i>Leave Adjustment</a></li>
                                            
                                                <li><a href="HrmAttendance.html"><i class="fa fa-circle-o"></i>Attendance</a></li>
                                            
                                                <li><a href="HrmSalaryGenerate.html"><i class="fa fa-circle-o"></i>Salary Generate</a></li>
                                            
                                                <li><a href="HrmSalaryPayment.html"><i class="fa fa-circle-o"></i>Salary Payment</a></li>
                                            
                                                <li><a href="HrmSalarySlipPrint.html"><i class="fa fa-circle-o"></i>Salary Slip Print</a></li>
                                            
                                                <li><a href="AttendanceReport.html"><i class="fa fa-circle-o"></i>Attendance Report</a></li>
                                            
                                                <li><a href="HrmSalaryPaymentReport.html"><i class="fa fa-circle-o"></i>Salary Payment Report</a></li>
                                            
                                                <li><a href="HRMEmployeeSearch.html"><i class="fa fa-circle-o"></i>Employee Search</a></li>
                                            
                                                <li><a href="HrmEmployeeIDCard.html"><i class="fa fa-circle-o"></i>Employee ID Card</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-18.png" style="margin-right: 5px;" /><span>Mobile App Control</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="MUser.html"><i class="fa fa-circle-o"></i>App User Creation</a></li>
                                            
                                                <li><a href="Mobile_MemberApproval.html"><i class="fa fa-circle-o"></i>Member  Approval</a></li>
                                            
                                                <li><a href="Mobile_CollectorApproval.html"><i class="fa fa-circle-o"></i>Advisor Approval</a></li>
                                            
                                                <li><a href="Mobile_InvestmentApproval.html"><i class="fa fa-circle-o"></i>Investment Approval</a></li>
                                            
                                                <li><a href="Mobile_RenawalApproval.html"><i class="fa fa-circle-o"></i>Recurring  Approval</a></li>
                                            
                                                <li><a href="Mobile_RegularEMIApproval.html"><i class="fa fa-circle-o"></i>Regular EMI Approval</a></li>
                                            
                                                <li><a href="Mobile_IrregularEMIApproval.html"><i class="fa fa-circle-o"></i>Irregular EMI Approval</a></li>
                                            
                                                <li><a href="Mobile_SBTxnApproval.html"><i class="fa fa-circle-o"></i>Saving Transaction Approval</a></li>
                                            
                                    </ul>
                                </li>
                            
                                <li class="treeview">
                                    <a href='#'><img src="dist/img/icon/ico-15.png" style="margin-right: 5px;"/><span>Mobile App Report</span><span class="pull-right-container">  <i class="fa fa-angle-left pull-right"></i></span></a>
                                    <ul class="treeview-menu">
                                        
                                                <li><a href="Mobile_MemberApprovalReport.html"><i class="fa fa-circle-o"></i>Member Approval Report</a></li>
                                            
                                                <li><a href="Mobile_AdvisorApprovalReport.html"><i class="fa fa-circle-o"></i>Advisor Approval Report</a></li>
                                            
                                                <li><a href="Mobile_RegularEMICollectionReport.html"><i class="fa fa-circle-o"></i>Regular EMI Approval Report</a></li>
                                            
                                                <li><a href="Mobile_IrregularEMICollectionReport.html"><i class="fa fa-circle-o"></i>Irregular EMI Approval Report</a></li>
                                            
                                                <li><a href="Mobile_SBTxnApprovalReport.html"><i class="fa fa-circle-o"></i>SB Txn Approval Report</a></li>
                                            
                                                <li><a href="Mobile_InvestmentApprovalReport.html"><i class="fa fa-circle-o"></i>Investment Approval Report</a></li>
                                            
                                                <li><a href="Mobile_RenewalApprovalReport.html"><i class="fa fa-circle-o"></i>Renewal Approval Report</a></li>
                                            
                                    </ul>
                                </li>
                            




                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
            <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 1105.75px;">
                

                 
       <section class="content-header">
        <h1 id="ContentPlaceHolder1_IdHeader">Transfer Statement</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Statement</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Information</h3>
                    </div>
                    
                     <form method="get" action="fetchAllData" id="form1" modelAttribute="ViewPaymentDetails">
                    
                    <div class="box-body">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Branch</label>
                                <select name="selectbraanch" id="selectbraanch" class="form-control" style="width: 100%;">
	<option value="All">All Branch</option>
	<option value="001">Main Office - 001</option>
	<option value="002"> Office - 002</option>
	<option value="003"> Office - 003</option>

</select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>From Date :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                      <input name="fromdate" type="date"  id="fromdate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>To Date :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                   <input name="todate" type="date"  id="todate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label></label>
                                 <input type="submit" name="btnview" value="View" id="btnview" class="btn btn-success margin-20" />
                                <input type="submit" name="btnshowdetails" value="Show Details" id="btnshowdetails" class="btn btn-warning margin-20" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box box-success" style="box-shadow: none; overflow: auto !important;">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Result</h3>
                        <div class="box-tools pull-right">
                          
                             
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>

                        <div>
            
                      <table cellspacing="0" rules="all" class="display nowrap table table-hover table-striped table-bordered" border="1" name="tableview" id="tableview" style="width:100%;border-collapse:collapse;">
                       <tr>
                     <th>Serial No.</th>
		             <th>Recieved</th>
		             <th>Payment</th>
            </tr>
            <c:forEach items="${tbMode}" var="df">
                         <tr>
                         <td>${df.srno }</td>
                         <td>${df.received }</td>
                         <td>${df.payment }</td>
                         
                         </tr>
            
            </c:forEach>
            </table>
            
            
                    <table cellspacing="0" rules="all" class="display nowrap table table-hover table-striped table-bordered" border="1" name="tableview" id="tableview" style="width:100%;border-collapse:collapse;">
                       <tr>
		              <th>Sr no.</th>
		              <th>Branch Name</th>
		              <th>Txn Date</th>
<!-- 		          <th>Ledger Name</th> -->
		              <th>Debit</th>
		              <th>Credit</th>
		              <th>A/C no.</th>
		              <th>Member Code</th>
		              <th>Section</th>
                      </tr>
                       
                       
        <c:forEach items="${tbModeldate}" var="tb">

        <tr>
            <td>${tb.srno}</td>
            <td>${tb.branchname}</td>
            <td>${tb.txndate}</td>
            <td>${tb.debit}</td>
            <td>${tb.credit}</td>
            <td>${tb.acno}</td>
            <td>${tb.membercode}</td>
            <td>${tb.section}</td>
        </tr>
       </c:forEach>                      
       </table> 
                        </div>
                          

                    </div>

                </div>


            </div>
        </div>
     
    </section>




            </div>
            <!-- /.content-wrapper -->

            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 1.0.1
   
                </div>
                <strong>Copyright © 2020-2021 <a>
                    <span id="lblCompanyName1">EQFI NIDHI LIMITED</span></a>.</strong> All rights
    reserved.
 
            </footer>


            <div class="control-sidebar-bg"></div>

        </div>

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
    </form>
</body>

<!-- Dk/Admin/TransferBook.aspx by <!-----EDB------> -->
</html>
