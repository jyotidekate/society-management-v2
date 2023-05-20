
<jsp:include page="../header.jsp" />
<body onload="getListOfLoanId()" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/LoanNoc.aspx?Type=Normal" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjU5NzY1ODAxDxYCHgRUeXBlBQZOb3JtYWwWAmYPZBYEAgEPZBYCAgMPZBYCZg8WAh4EVGV4dAUSRVFGSSBOSURISSBMSU1JVEVEZAIDD2QWHgIBDxYCHgdWaXNpYmxlZ2QCAw8WAh8CZ2QCBQ8WAh8CZ2QCBw8WAh8CZ2QCCQ8WAh8BBRFNYWluIE9mZmljZSAtIDAwMWQCCw8WAh8BBRQwMS8wOC8yMDIyIC0gMTA6MjBBTWQCDQ8WAh8BBRMwMS8wOC8yMDIyIC0gMjo1MFBNZAIRDw8WAh4ISW1hZ2VVcmwFGX4vQWRtaW4vZGlzdC9pbWcvVXNlci5wbmdkZAITDxYCHwEFBWFkbWluZAIVDw8WAh8DBRl+L0FkbWluL2Rpc3QvaW1nL1VzZXIucG5nZGQCFw8WAh8BBQVhZG1pbmQCHQ8WAh8BBQRFUUZJZAIfDxYCHgtfIUl0ZW1Db3VudAISFiRmD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMy5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4OTWVtYmVyIFNlY3Rpb25kAgEPFgIfBAIFFgpmD2QWAmYPFQIOQWRkTWVtYmVyLmFzcHgKQWRkIE1lbWJlcmQCAQ9kFgJmDxUCEUFkZE1lbWJlcktZQy5hc3B4DkFkZCBNZW1iZXIgS1lDZAICD2QWAmYPFQIVTWVtYmVyQWxsRGV0YWlscy5hc3B4Dk1lbWJlciBTdW1tYXJ5ZAIDD2QWAmYPFQIUTWVtYmVyRGV0YWlsUnB0LmFzcHgNTWVtYmVyIFJlcG9ydGQCBA9kFgJmDxUCEVNlYXJjaE1lbWJlci5hc3B4DVNlYXJjaCBNZW1iZXJkAgEPZBYEZg8VAwEjPzxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby00LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPgxNZW1iZXIgU2hhcmVkAgEPFgIfBAIFFgpmD2QWAmYPFQIeU2hhcmVJc3N1ZS5hc3B4P2lzbW9kaWZ5PWZhbHNlDlNoYXJlIFRyYW5zZmVyZAIBD2QWAmYPFQIZVW5hbGxvdGVkU2hhcmVSZXBvcnQuYXNweBJVbi1hbGxvdHRlZCBTaGFyZXNkAgIPZBYCZg8VAhVTaGFyZUNlcnRpZmljYXRlLmFzcHgRU2hhcmUgQ2VydGlmaWNhdGVkAgMPZBYCZg8VAhZNZW1iZXJTaGFyZVJlcG9ydC5hc3B4DFNoYXJlIFJlcG9ydGQCBA9kFgJmDxUCEEROT0dlbmVyYXRlLmFzcHgPRE5PIFJlLUdlbmVyYXRlZAICD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tNS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4RQ29sbGVjdG9yL0Fkdmlzb3JkAgEPFgIfBAIGFgxmD2QWAmYPFQIPQWRkQWR2aXNvci5hc3B4FUFkZCBDb2xsZWN0b3IvQWR2aXNvcmQCAQ9kFgJmDxUCEEFkdmlzb3JUcmVlLmFzcHgWQ29sbGVjdG9yL0Fkdmlzb3IgVHJlZWQCAg9kFgJmDxUCFEFkdmlzb3JEb3dubGluZS5hc3B4GkNvbGxlY3Rvci9BZHZpc29yIERvd25saW5lZAIDD2QWAmYPFQIXQ29sbGVjdG9yUHJvbW90aW9uLmFzcHgbQ29sbGVjdG9yL0Fkdmlzb3IgUHJvbW90aW9uZAIED2QWAmYPFQITSURDYXJkUHJpbnRpbmcuYXNweBhDb2xsZWN0b3IvQWR2aXNvciBJLUNhcmRkAgUPZBYCZg8VAhJBZHZpc29yU2VhcmNoLmFzcHgYQ29sbGVjdG9yL0Fkdmlzb3IgU2VhcmNoZAIDD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMy5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4QRW1wbG95ZWUgU2VjdGlvbmQCAQ8WAh8EAgUWCmYPZBYCZg8VAhZEZXNpZ25hdGlvbk1hc3Rlci5hc3B4D0FkZCBEZXNpZ25hdGlvbmQCAQ9kFgJmDxUCFURlcGFydG1lbnRNYXN0ZXIuYXNweA5BZGQgRGVwYXJ0bWVudGQCAg9kFgJmDxUCEEFkZEVtcGxveWVlLmFzcHgMQWRkIEVtcGxveWVlZAIDD2QWAmYPFQIbRW1wbG95ZWVJRENhcmRQcmludGluZy5hc3B4D0VtcGxveWVlIEktQ2FyZGQCBA9kFgJmDxUCE1NlYXJjaEVtcGxveWVlLmFzcHgPU2VhcmNoIEVtcGxveWVlZAIED2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tNi5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiIC8+EkludmVzdG1lbnQgU2VjdGlvbmQCAQ8WAh8EAg0WGmYPZBYCZg8VAg9QbGFuTWFzdGVyLmFzcHgLUGxhbiBNYXN0ZXJkAgEPZBYCZg8VAhJBZGRJbnZlc3RtZW50LmFzcHgOTmV3IEludmVzdG1lbnRkAgIPZBYCZg8VAg5SRFJlbmV3YWwuYXNweA9SZW5ld2FsIFBheW1lbnRkAgMPZBYCZg8VAhhEYWlseVJlbmV3YWxQYXltZW50LmFzcHgVRGFpbHkgUmVuZXdhbCBQYXltZW50ZAIED2QWAmYPFQImRmxleGlyZW5ld2FsLmFzcHg/SXNNb2RpZmljYXRpb249ZmFsc2UVRmxleGkgUmVuZXdhbCBQYXltZW50ZAIFD2QWAmYPFQIUUmVuZXdhbFBhc3Nib29rLmFzcHgRRGFpbHkvUkQgUGFzc2Jvb2tkAgYPZBYCZg8VAiNQb2xpY3lSZW5ld2FsUmVjZWlwdC5hc3B4P0lzVGFnPU5ldxJJbnZlc3RtZW50IFJlY2VpcHRkAgcPZBYCZg8VAiVQb2xpY3lSZW5ld2FsUmVjZWlwdC5hc3B4P0lzVGFnPVJlbmV3ElJlY3VycmluZyAgUmVjZWlwdGQCCA9kFgJmDxUCFUNlcnRpZmljYXRlSXNzdWUuYXNweBFDZXJ0aWZpY2F0ZSBJc3N1ZWQCCQ9kFgJmDxUCJUNlcnRpZmljYXRlSXNzdWUuYXNweD9SZVByaW50PVJlcHJpbnQUQ2VydGlmaWNhdGUgUmUtSXNzdWVkAgoPZBYCZg8VAh5JbnZlc3RtZW50SW50ZXJlc3REZXRhaWxzLmFzcHgQSW50ZXJlc3QgRGV0YWlsc2QCCw9kFgJmDxUCHkludmVzdG1lbnRJbnRlcmVzdFBheWFibGUuYXNweBBJbnRlcmVzdCBQYXlhYmxlZAIMD2QWAmYPFQIVSW52ZXN0bWVudFNlYXJjaC5hc3B4EUludmVzdG1lbnQgU2VhcmNoZAIFD2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tOS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiIC8+D1NhdmluZ3MgQWNjb3VudGQCAQ8WAh8EAgsWFmYPZBYCZg8VAhZTYXZpbmdzUGxhbk1hc3Rlci5hc3B4E1NhdmluZ3MgUGxhbiBNYXN0ZXJkAgEPZBYCZg8VAg5BZGRTYXZpbmcuYXNweA9TYXZpbmdzIE9wZW5pbmdkAgIPZBYCZg8VAhxTYXZpbmdzVHJhbnNhY3Rpb25FbnRyeS5hc3B4E1NhdmluZ3MgVHJhbnNhY3Rpb25kAgMPZBYCZg8VAhhTYXZpbmdJbnRyYVRyYW5zZmVyLmFzcHgRU0IgSW50cmEgVHJhbnNmZXJkAgQPZBYCZg8VAhdTQkludGVyZXN0R2VuZXJhdGUuYXNweBRTQiBJbnRlcmVzdCBUcmFuc2ZlcmQCBQ9kFgJmDxUCFFNCUGFzc2Jvb2tQcmludC5hc3B4EFNhdmluZ3MgUGFzc2Jvb2tkAgYPZBYCZg8VAhVTYXZpbmdzU3RhdGVtZW50LmFzcHgRU2F2aW5ncyBTdGF0ZW1lbnRkAgcPZBYCZg8VAhJBY2NvdW50Q2xvc2VyLmFzcHgOQWNjb3VudCBDbG9zZXJkAggPZBYCZg8VAhlTZWFyY2hTYXZpbmdzQWNjb3VudC5hc3B4EVNlYXJjaCBTYXZpbmdzIEFDZAIJD2QWAmYPFQIYU01TQ2hhcmdlc0RlZHVjdGlvbi5hc3B4FVNNUyBDaGFyZ2VzIERlZHVjdGlvbmQCCg9kFgJmDxUCHFNlcnZpY2VDaGFyZ2VzRGVkdWN0aW9uLmFzcHgZU2VydmljZSBDaGFyZ2VzIERlZHVjdGlvbmQCBg9kFgRmDxUDASM/PGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTcucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+DExvYW4gU2VjdGlvbmQCAQ8WAh8EAg4WHGYPZBYCZg8VAhlMb2FuUGxhbi5hc3B4P1R5cGU9Tm9ybWFsEkxvYW4gUGxhbiBDcmVhdGlvbmQCAQ9kFgJmDxUCE0xvYW5DYWxjdWxhdG9yLmFzcHgPTG9hbiBDYWxjdWxhdG9yZAICD2QWAmYPFQIlTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHBsaWNhdGlvbhBMb2FuIEFwcGxpY2F0aW9uZAIDD2QWAmYPFQIiTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHByb3ZhbA9Mb2FuIEF1dGhvcml6ZWRkAgQPZBYCZg8VAiFMb2FuQXBwbGljYXRpb24uYXNweD9UeXBlPVBheW1lbnQUTG9hbiBQYXltZW50IFNlY3Rpb25kAgUPZBYCZg8VAh5Mb2FuUmVwYXltZW50LmFzcHg/VHlwZT1Ob3JtYWwWUmVndWxhciBFbWkgUmUtcGF5bWVudGQCBg9kFgJmDxUCKUlycmVndWxhckVNSVBheW1lbnRFbnRyeS5hc3B4P1R5cGU9Tm9ybWFsGElycmVndWxhciBFbWkgUmUtcGF5bWVudGQCBw9kFgJmDxUCJVJlZ3VsYXJMb2FuU3RhdGVtZW50LmFzcHg/VHlwZT1Ob3JtYWwWUmVndWxhciBMb2FuIFN0YXRlbWVudGQCCA9kFgJmDxUCJ0lycmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPU5vcm1hbBhJcnJlZ3VsYXIgTG9hbiBTdGF0ZW1lbnRkAgkPZBYCZg8VAh1SZWd1bGFyTG9hbkRvY3VtZW50UHJpbnQuYXNweBNMb2FuIERvY3VtZW50IFByaW50ZAIKD2QWAmYPFQIiTG9hblByZVNldHRsZW1lbnQuYXNweD9UeXBlPU5vcm1hbA5QcmUgU2V0dGxlbWVudGQCCw9kFgJmDxUCIUNsb3NlZExvYW5SZXBvcnQuYXNweD9UeXBlPU5vcm1hbBNDbG9zZWQgbG9hbiBEZXRhaWxzZAIMD2QWAmYPFQIYTG9hbk5vYy5hc3B4P1R5cGU9Tm9ybWFsD05PQyBDZXJ0aWZpY2F0ZWQCDQ9kFgJmDxUCD0xvYW5TZWFyY2guYXNweAtTZWFyY2ggTG9hbmQCBw9kFgRmDxUDASM/PGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTgucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+CUdvbGQgTG9hbmQCAQ8WAh8EAg4WHGYPZBYCZg8VAhdMb2FuUGxhbi5hc3B4P1R5cGU9R29sZBJHb2xkIFBsYW4gQ3JlYXRpb25kAgEPZBYCZg8VAhNHb2xkTG9hbk1hc3Rlci5hc3B4EEdvbGQgTG9hbiBNYXN0ZXJkAgIPZBYCZg8VAilHb2xkTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHBsaWNhdGlvbhVHb2xkIExvYW4gQXBwbGljYXRpb25kAgMPZBYCZg8VAiZHb2xkTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHByb3ZhbBRHb2xkIExvYW4gQXV0aG9yaXplZGQCBA9kFgJmDxUCJUdvbGRMb2FuQXBwbGljYXRpb24uYXNweD9UeXBlPVBheW1lbnQUTG9hbiBQYXltZW50IFNlY3Rpb25kAgUPZBYCZg8VAhxMb2FuUmVwYXltZW50LmFzcHg/VHlwZT1Hb2xkFlJlZ3VsYXIgRW1pIFJlLXBheW1lbnRkAgYPZBYCZg8VAidJcnJlZ3VsYXJFTUlQYXltZW50RW50cnkuYXNweD9UeXBlPUdvbGQYSXJyZWd1bGFyIEVtaSBSZS1wYXltZW50ZAIHD2QWAmYPFQIjUmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPUdvbGQWUmVndWxhciBMb2FuIFN0YXRlbWVudGQCCA9kFgJmDxUCJUlycmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPUdvbGQYSXJyZWd1bGFyIExvYW4gU3RhdGVtZW50ZAIJD2QWAmYPFQIaR29sZExvYW5Eb2N1bWVudFByaW50LmFzcHgUTG9hbiBEb2N1bWVudHMgUHJpbnRkAgoPZBYCZg8VAiBMb2FuUHJlU2V0dGxlbWVudC5hc3B4P1R5cGU9R29sZA5QcmUgU2V0dGxlbWVudGQCCw9kFgJmDxUCH0Nsb3NlZExvYW5SZXBvcnQuYXNweD9UeXBlPUdvbGQTQ2xvc2VkIGxvYW4gRGV0YWlsc2QCDA9kFgJmDxUCFkxvYW5Ob2MuYXNweD9UeXBlPUdvbGQPTk9DIENlcnRpZmljYXRlZAIND2QWAmYPFQITR29sZExvYW5TZWFyY2guYXNweAtTZWFyY2ggTG9hbmQCCA9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE2LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4KR3JvdXAgTG9hbmQCAQ8WAh8EAgwWGGYPZBYCZg8VAhhMb2FuUGxhbi5hc3B4P1R5cGU9R3JvdXATR3JvdXAgUGxhbiBDcmVhdGlvbmQCAQ9kFgJmDxUCFExvYW5Hcm91cE1hc3Rlci5hc3B4DEdyb3VwIE1hc3RlcmQCAg9kFgJmDxUCGUdyb3VwTG9hbkFwcGxpY2F0aW9uLmFzcHgWR3JvdXAgTG9hbiBBcHBsaWNhdGlvbmQCAw9kFgJmDxUCJEdyb3VwTG9hbkFwcHJvdmFsLmFzcHg/VHlwZT1BcHByb3ZhbBVHcm91cCBMb2FuIEF1dGhvcml6ZWRkAgQPZBYCZg8VAiNHcm91cExvYW5BcHByb3ZhbC5hc3B4P1R5cGU9UGF5bWVudBRMb2FuIFBheW1lbnQgU2VjdGlvbmQCBQ9kFgJmDxUCHUxvYW5SZXBheW1lbnQuYXNweD9UeXBlPUdyb3VwDkVtaSBSZS1wYXltZW50ZAIGD2QWAmYPFQIaR2xEYWlseVJlcGF5bWVudFNoZWV0LmFzcHgVRGFpbHkgUmVwYXltZW50IFNoZWV0ZAIHD2QWAmYPFQIQRGVtYW5kU2hlZXQuYXNweAxEZW1hbmQgU2hlZXRkAggPZBYCZg8VAiRSZWd1bGFyTG9hblN0YXRlbWVudC5hc3B4P1R5cGU9R3JvdXAOTG9hbiBTdGF0ZW1lbnRkAgkPZBYCZg8VAiFMb2FuUHJlU2V0dGxlbWVudC5hc3B4P1R5cGU9R3JvdXAOUHJlIFNldHRsZW1lbnRkAgoPZBYCZg8VAiFDbG9zZWRMb2FuUmVwb3J0LmFzcHg/VHlwZT1Ob3JtYWwTQ2xvc2VkIGxvYW4gRGV0YWlsc2QCCw9kFgJmDxUCFEdyb3VwTG9hblNlYXJjaC5hc3B4C1NlYXJjaCBMb2FuZAIJD2QWBGYPFQMBI0E8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTIucG5nIiAgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhBBcHByb3ZhbCBTZWN0aW9uZAIBDxYCHwQCDRYaZg9kFgJmDxUCFkFkZE1lbWJlckFwcHJvdmFsLmFzcHgQTWVtYmVyICBBcHByb3ZhbGQCAQ9kFgJmDxUCF1NoYXJlSXNzdWVBcHByb3ZhbC5hc3B4DlNoYXJlIEFwcHJvdmFsZAICD2QWAmYPFQIUQWR2aXNvckFwcHJvdmFsLmFzcHgaQWR2aXNvci9Db2xsZWN0b3IgQXBwcm92YWxkAgMPZBYCZg8VAhdJbnZlc3RtZW50QXBwcm92YWwuYXNweBNJbnZlc3RtZW50IEFwcHJvdmFsZAIED2QWAmYPFQIWUmVjdXJyaW5nQXBwcm92YWwuYXNweBNSZWN1cnJpbmcgIEFwcHJvdmFsZAIFD2QWAmYPFQISU0JUeG5BcHByb3ZhbC5hc3B4G1NhdmluZyBUcmFuc2FjdGlvbiBBcHByb3ZhbGQCBg9kFgJmDxUCGkludHJhVHJhbnNmZXJBcHByb3ZhbC5hc3B4FFNCIFRyYW5zZmVyIEFwcHJvdmFsZAIHD2QWAmYPFQIXUmVndWxhckVNSUFwcHJvdmFsLmFzcHgUUmVndWxhciBFTUkgQXBwcm92YWxkAggPZBYCZg8VAhdJcnJ1bGFyRU1JQXBwcm92YWwuYXNweBZJcnJlZ3VsYXIgRU1JIEFwcHJvdmFsZAIJD2QWAmYPFQIZUGF5bWVudEVudHJ5QXBwcm92YWwuYXNweBZQYXltZW50IEVudHJ5IEFwcHJvdmFsZAIKD2QWAmYPFQIgTWF0dXJpdHlBcHBsaWNhdGlvbkFwcHJvdmFsLmFzcHgdTWF0dXJpdHkgQXBwbGljYXRpb24gQXBwcm92YWxkAgsPZBYCZg8VAh5NYXR1cml0eUFwcGxpY2F0aW9uRGVsZXRlLmFzcHgbTWF0dXJpdHkgQXBwbGljYXRpb24gRGVsZXRlZAIMD2QWAmYPFQIcQ1NQQ2FzaFRyYW5zZmVyQXBwcm92YWwuYXNweB1CcmFuY2ggQ2FzaCBUcmFuc2ZlciBBcHByb3ZhbGQCCg9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTEwLnBuZyIgIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4VUmVjdGlmaWNhdGlvbiBTZWN0aW9uZAIBDxYCHwQCDRYaZg9kFgJmDxUCIkFkZE1lbWJlci5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUUTWVtYmVyIFJlY3RpZmljYXRpb25kAgEPZBYCZg8VAh1TaGFyZUlzc3VlLmFzcHg/aXNtb2RpZnk9dHJ1ZRNTaGFyZSBSZWN0aWZpY2F0aW9uZAICD2QWAmYPFQIjQWRkQWR2aXNvci5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUfQWR2aXNvci9Db2xsZWN0b3IgUmVjdGlmaWNhdGlvbmQCAw9kFgJmDxUCJkFkZEludmVzdG1lbnQuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlGEludmVzdG1lbnQgUmVjdGlmaWNhdGlvbmQCBA9kFgJmDxUCIlJEUmVuZXdhbC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUVUmVuZXdhbCBSZWN0aWZpY2F0aW9uZAIFD2QWAmYPFQIsRGFpbHlSZW5ld2FsUGF5bWVudC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUbRGFpbHkgUmVuZXdhbCBSZWN0aWZpY2F0aW9uZAIGD2QWAmYPFQIlRmxleGlSZW5ld2FsLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRhGbGV4aSBUcmFuc2FjdGlvbiBEZWxldGVkAgcPZBYCZg8VAiJBZGRTYXZpbmcuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlFVNhdmluZ3MgUmVjdGlmaWNhdGlvbmQCCA9kFgJmDxUCMFNhdmluZ3NUcmFuc2FjdGlvbkVudHJ5LmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRpTYXZpbmdzIFRyYW5zYWN0aW9uIERlbGV0ZWQCCQ9kFgJmDxUCKExvYW5BcHBsaWNhdGlvbi5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUSTG9hbiBSZWN0aWZpY2F0aW9uZAIKD2QWAmYPFQIsR29sZExvYW5BcHBsaWNhdGlvbi5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUXR29sZCBMb2FuIFJlY3RpZmljYXRpb25kAgsPZBYCZg8VAipHcm91cExvYW5BcHByb3ZhbC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUYR3JvdXAgTG9hbiBSZWN0aWZpY2F0aW9uZAIMD2QWAmYPFQIkQWRkRW1wbG95ZWUuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlFUVtcGxveWVlIE1vZGlmaWNhdGlvbmQCCw9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTExLnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4QQWNjb3VudHMgU2VjdGlvbmQCAQ8WAh8EAhUWKmYPZBYCZg8VAhVBY2NvdW50TGVnTWFzdGVyLmFzcHgNTGVkZ2VyIE1hc3RlcmQCAQ9kFgJmDxUCE1BheW1lbnRWb3VjaGVyLmFzcHgNUGF5bWVudCBFbnRyeWQCAg9kFgJmDxUCE1JlY2VpdmVWb3VjaGVyLmFzcHgNUmVjZWl2ZSBFbnRyeWQCAw9kFgJmDxUCF0NvbnRyYVZvdWNoZXJFbnRyeS5hc3B4DENvbnRyYSBFbnRyeWQCBA9kFgJmDxUCE0pvdXJuYWxWb3VjaGVyLmFzcHgNSm91cm5hbCBFbnRyeWQCBQ9kFgJmDxUCFUluY2VudGl2ZVBheW1lbnQuYXNweBFJbmNlbnRpdmUgUGF5bWVudGQCBg9kFgJmDxUCD01JU1BheW1lbnQuYXNweBBNSVMgaW50LiBQYXltZW50ZAIHD2QWAmYPFQIQQ2hlcXVlQ2xlYXIuYXNweA9DaGVxdWUgQ2xlYXJpbmdkAggPZBYCZg8VAhxVbmVuY3VtYmVyZWRUZXJtRGVwb3NpdC5hc3B4F01hbmRhdGUgRGVwb3NpdCB0byBCYW5rZAIJD2QWAmYPFQISQmFua1N0YXRlbWVudC5hc3B4DkJhbmsgU3RhdGVtZW50ZAIKD2QWAmYPFQISQ2FzaFN0YXRlbWVudC5hc3B4CUNhc2ggQm9va2QCCw9kFgJmDxUCEVRyYW5zZmVyQm9vay5hc3B4DVRyYW5zZmVyIEJvb2tkAgwPZBYCZg8VAhVSZWd1bGFyU3RhdGVtZW50LmFzcHgIRGF5IEJvb2tkAg0PZBYCZg8VAhpGaW5hbmNpYWxMZWRnZXJSZXBvcnQuYXNweA1MZWRnZXIgUmVwb3J0ZAIOD2QWAmYPFQISSm91cm5hbFJlcG9ydC5hc3B4DkpvdXJuYWwgUmVwb3J0ZAIPD2QWAmYPFQIaRmluYW5jaWFsVHJpYWxCYWxhbmNlLmFzcHgNVHJhaWwgQmFsYW5jZWQCEA9kFgJmDxUCEFBMU3RhdGVtZW50LmFzcHgSUCZMIFN0YXRlbWVudCAoRlkpZAIRD2QWAmYPFQIaRmluYW5jaWFsQmFsYW5jZVNoZWV0LmFzcHgSQmFsYW5jZSBTaGVldCAoRlkpZAISD2QWAmYPFQIXUHJvZml0TG9zc0RhdGVXaXNlLmFzcHgNUCZMIFN0YXRlbWVudGQCEw9kFgJmDxUCGUJhbGFuY2VTaGVldERhdGV3aXNlLmFzcHgNQmFsYW5jZSBTaGVldGQCFA9kFgJmDxUCFENTUENhc2hUcmFuc2Zlci5hc3B4FEJyYW5jaCBDYXNoIFRyYW5zZmVyZAIMD2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTMucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+EUluY2VudGl2ZSBTZWN0aW9uZAIBDxYCHwQCBBYIZg9kFgJmDxUCFEluY2VudGl2ZU1hc3Rlci5hc3B4EEluY2VudGl2ZSBNYXN0ZXJkAgEPZBYCZg8VAhhJbmNlbnRpdmVHZW5lcmF0aW9uLmFzcHgSSW5jZW50aXZlIEdlbmVyYXRlZAICD2QWAmYPFQIaSW5jZW50aXZlRGV0YWlsc1ByaW50LmFzcHgRSW5jZW50aXZlIERldGFpbHNkAgMPZBYCZg8VAhdJbmNlbnRpdmVMaXN0UHJpbnQuYXNweA5JbmNlbnRpdmUgTGlzdGQCDQ9kFgRmDxUDASNAPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE0LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhBNYXR1cml0eSBTZWN0aW9uZAIBDxYCHwQCCRYSZg9kFgJmDxUCEFByZU1hdHVyaXR5LmFzcHgPTWF0dXJpdHkgTWFzdGVyZAIBD2QWAmYPFQIYTWF0dXJpdHlBcHBsaWNhdGlvbi5hc3B4FE1hdHVyaXR5IEFwcGxpY2F0aW9uZAICD2QWAmYPFQIUTWF0dXJpdHlQYXltZW50LmFzcHgQTWF0dXJpdHkgUGF5bWVudGQCAw9kFgJmDxUCGVJlZGVtdGlvblBhcnRQYXltZW50LmFzcHgZTWF0dXJpdHkgUGF5bWVudCAoUGFydGx5KWQCBA9kFgJmDxUCHU1hdHVyaXR5VHJhY2tpbmcuYXNweD9Db2RlPVJSF01hdC4gQXBwbGljYXRpb24gU3RhdHVzZAIFD2QWAmYPFQIdTWF0dXJpdHlUcmFja2luZy5hc3B4P0NvZGU9QVIPQXBwcm92ZWQgU3RhdHVzZAIGD2QWAmYPFQIdTWF0dXJpdHlUcmFja2luZy5hc3B4P0NvZGU9UFITTWF0LiBQYXltZW50IFN0YXR1c2QCBw9kFgJmDxUCHk1hdHVyaXR5UGFydFBheW1lbnRSZXBvcnQuYXNweBxNYXQuIFBheW1lbnQgU3RhdHVzIChQYXJ0bHkpZAIID2QWAmYPFQIbTWF0dXJpdHlSZWNlaXB0UmVQcmludC5hc3B4Fk1hdHVyaXR5IFJlY2VpcHQgUHJpbnRkAg4PZBYEZg8VAwEjQDxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xNS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4OUmVwb3J0IFNlY3Rpb25kAgEPFgIfBAIVFipmD2QWAmYPFQIaSW52ZXN0bWVudFRvdGFsUmVwb3J0LmFzcHgRSW52ZXN0bWVudCBSZXBvcnRkAgEPZBYCZg8VAhxJbnZlc3RtZW50UmVwb3J0U3VtbWFyeS5hc3B4FEludmVzdG1lbnQgLSBTdW1tYXJ5ZAICD2QWAmYPFQIXRW1wbG95ZWVDb2xsZWN0aW9uLmFzcHgSQWR2aXNvciBDb2xsZWN0aW9uZAIDD2QWAmYPFQIaQWR2aXNvclRlYW1Db2xsZWN0aW9uLmFzcHgXQWR2aXNvciBUZWFtIENvbGxlY3Rpb25kAgQPZBYCZg8VAhdDaGVxdWVTdGF0dXNSZXBvcnQuYXNweBdDaGVxdWUgQ2xlYXJhbmNlIFN0YXR1c2QCBQ9kFgJmDxUCG0luY2VudGl2ZVBheW1lbnRSZXBvcnQuYXNweBhJbmNlbnRpdmUgUGF5bWVudCByZXBvcnRkAgYPZBYCZg8VAhdSZWN1cnJpbmdEdWVSZXBvcnQuYXNweBRSZWN1cnJpbmcgRHVlIFJlcG9ydGQCBw9kFgJmDxUCGUxvYW5Ob3RBcHByb3ZlUmVwb3J0LmFzcHgYTG9hbiBOb3QgYXBwcm92ZWQgUmVwb3J0ZAIID2QWAmYPFQIXTG9hbkFwcHJvdmFsUmVwb3J0LmFzcHgOQXBwcm92ZWQgTG9hbiBkAgkPZBYCZg8VAhZMb2FuUGF5bWVudFJlcG9ydC5hc3B4E0xvYW4gUGF5bWVudCBSZXBvcnRkAgoPZBYCZg8VAhVMb2FuRU1JRHVlUmVwb3J0LmFzcHgORHVlIEVtaSBSZXBvcnRkAgsPZBYCZg8VAhlMb2FuRU1JT3ZlckR1ZVJlcG9ydC5hc3B4E0VtaSBPdmVyIER1ZSBSZXBvcnRkAgwPZBYCZg8VAh1Mb2FuRU1JT3V0c3RhbmRpbmdSZXBvcnQuYXNweBZFbWkgT3V0c3RhbmRpbmcgUmVwb3J0ZAIND2QWAmYPFQIeRU1JQ29sbGVjdG9uUmVwb3J0LmFzcHg/VHlwZT1SElJlZ3VsYXIgRU1JIFJlcG9ydGQCDg9kFgJmDxUCHkVNSUNvbGxlY3RvblJlcG9ydC5hc3B4P1R5cGU9SRRJcnJlZ3VsYXIgRU1JIFJlcG9ydGQCDw9kFgJmDxUCHUxvYW5Db2xsZWN0aW9uc2hlZXRQcmludC5hc3B4EExvYW4gU2hlZXQgUHJpbnRkAhAPZBYCZg8VAhlNYXR1cml0eVN0YXR1c1JlcG9ydC5hc3B4D01hdHVyaXR5IFN0YXR1c2QCEQ9kFgJmDxUCFVByb2plY3Rpb25SZXBvcnQuYXNweBFQcm9qZWN0aW9uIFJlcG9ydGQCEg9kFgJmDxUCHE1hdHVyaXR5TGlhYmlsaXR5UmVwb3J0LmFzcHgZTWF0dXJpdHkgTGlhYmlsaXR5IFJlcG9ydGQCEw9kFgJmDxUCF1REU0RlZHVjdGlvblJlcG9ydC5hc3B4FFREUyBEZWR1Y3Rpb24gUmVwb3J0ZAIUD2QWAmYPFQIUUG9saWN5U3RhdGVtZW50LmFzcHgQUG9saWN5IFN0YXRlbWVudGQCDw9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE3LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4SUGF5cm9sbCBNYW5hZ2VtZW50ZAIBDxYCHwQCERYiZg9kFgJmDxUCFkRlc2lnbmF0aW9uTWFzdGVyLmFzcHgPQWRkIERlc2lnbmF0aW9uZAIBD2QWAmYPFQIVRGVwYXJ0bWVudE1hc3Rlci5hc3B4DkFkZCBEZXBhcnRtZW50ZAICD2QWAmYPFQITRW1wbG95ZWVNYXN0ZXIuYXNweAxBZGQgRW1wbG95ZWVkAgMPZBYCZg8VAhlFbXBsb3llZUxlYXZlRGV0YWlscy5hc3B4DkVtcGxveWVlIExlYXZlZAIED2QWAmYPFQIWU2FsYXJ5U2V0dXBNYXN0ZXIuYXNweA5TYWxhcnkgRGV0YWlsc2QCBQ9kFgJmDxUCGUhybUFwcG9pbnRtZW50TGV0dGVyLmFzcHgSQXBwb2ludG1lbnQgTGV0dGVyZAIGD2QWAmYPFQITSHJtT2ZmZXJMZXR0ZXIuYXNweBJPZmZlciBMZXR0ZXIgSXNzdWVkAgcPZBYCZg8VAhJPZmZEYXlTZXR0aW5nLmFzcHgOSG9saWRheSBNYXN0ZXJkAggPZBYCZg8VAhRMZWF2ZUFkanVzdG1lbnQuYXNweBBMZWF2ZSBBZGp1c3RtZW50ZAIJD2QWAmYPFQISSHJtQXR0ZW5kYW5jZS5hc3B4CkF0dGVuZGFuY2VkAgoPZBYCZg8VAhZIcm1TYWxhcnlHZW5lcmF0ZS5hc3B4D1NhbGFyeSBHZW5lcmF0ZWQCCw9kFgJmDxUCFUhybVNhbGFyeVBheW1lbnQuYXNweA5TYWxhcnkgUGF5bWVudGQCDA9kFgJmDxUCF0hybVNhbGFyeVNsaXBQcmludC5hc3B4EVNhbGFyeSBTbGlwIFByaW50ZAIND2QWAmYPFQIVQXR0ZW5kYW5jZVJlcG9ydC5hc3B4EUF0dGVuZGFuY2UgUmVwb3J0ZAIOD2QWAmYPFQIbSHJtU2FsYXJ5UGF5bWVudFJlcG9ydC5hc3B4FVNhbGFyeSBQYXltZW50IFJlcG9ydGQCDw9kFgJmDxUCFkhSTUVtcGxveWVlU2VhcmNoLmFzcHgPRW1wbG95ZWUgU2VhcmNoZAIQD2QWAmYPFQIWSHJtRW1wbG95ZWVJRENhcmQuYXNweBBFbXBsb3llZSBJRCBDYXJkZAIQD2QWBGYPFQMBI0E8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTgucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7IiAvPhJNb2JpbGUgQXBwIENvbnRyb2xkAgEPFgIfBAIIFhBmD2QWAmYPFQIKTVVzZXIuYXNweBFBcHAgVXNlciBDcmVhdGlvbmQCAQ9kFgJmDxUCGk1vYmlsZV9NZW1iZXJBcHByb3ZhbC5hc3B4EE1lbWJlciAgQXBwcm92YWxkAgIPZBYCZg8VAh1Nb2JpbGVfQ29sbGVjdG9yQXBwcm92YWwuYXNweBBBZHZpc29yIEFwcHJvdmFsZAIDD2QWAmYPFQIeTW9iaWxlX0ludmVzdG1lbnRBcHByb3ZhbC5hc3B4E0ludmVzdG1lbnQgQXBwcm92YWxkAgQPZBYCZg8VAhtNb2JpbGVfUmVuYXdhbEFwcHJvdmFsLmFzcHgTUmVjdXJyaW5nICBBcHByb3ZhbGQCBQ9kFgJmDxUCHk1vYmlsZV9SZWd1bGFyRU1JQXBwcm92YWwuYXNweBRSZWd1bGFyIEVNSSBBcHByb3ZhbGQCBg9kFgJmDxUCIE1vYmlsZV9JcnJlZ3VsYXJFTUlBcHByb3ZhbC5hc3B4FklycmVndWxhciBFTUkgQXBwcm92YWxkAgcPZBYCZg8VAhlNb2JpbGVfU0JUeG5BcHByb3ZhbC5hc3B4G1NhdmluZyBUcmFuc2FjdGlvbiBBcHByb3ZhbGQCEQ9kFgRmDxUDASNAPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE1LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhFNb2JpbGUgQXBwIFJlcG9ydGQCAQ8WAh8EAgcWDmYPZBYCZg8VAiBNb2JpbGVfTWVtYmVyQXBwcm92YWxSZXBvcnQuYXNweBZNZW1iZXIgQXBwcm92YWwgUmVwb3J0ZAIBD2QWAmYPFQIhTW9iaWxlX0Fkdmlzb3JBcHByb3ZhbFJlcG9ydC5hc3B4F0Fkdmlzb3IgQXBwcm92YWwgUmVwb3J0ZAICD2QWAmYPFQImTW9iaWxlX1JlZ3VsYXJFTUlDb2xsZWN0aW9uUmVwb3J0LmFzcHgbUmVndWxhciBFTUkgQXBwcm92YWwgUmVwb3J0ZAIDD2QWAmYPFQIoTW9iaWxlX0lycmVndWxhckVNSUNvbGxlY3Rpb25SZXBvcnQuYXNweB1JcnJlZ3VsYXIgRU1JIEFwcHJvdmFsIFJlcG9ydGQCBA9kFgJmDxUCH01vYmlsZV9TQlR4bkFwcHJvdmFsUmVwb3J0LmFzcHgWU0IgVHhuIEFwcHJvdmFsIFJlcG9ydGQCBQ9kFgJmDxUCJE1vYmlsZV9JbnZlc3RtZW50QXBwcm92YWxSZXBvcnQuYXNweBpJbnZlc3RtZW50IEFwcHJvdmFsIFJlcG9ydGQCBg9kFgJmDxUCIU1vYmlsZV9SZW5ld2FsQXBwcm92YWxSZXBvcnQuYXNweBdSZW5ld2FsIEFwcHJvdmFsIFJlcG9ydGQCIw9kFgQCAw8QDxYGHg5EYXRhVmFsdWVGaWVsZAUGTG9hbklEHg1EYXRhVGV4dEZpZWxkBQ1BcHBsaWNhbnROYW1lHgtfIURhdGFCb3VuZGdkEBUBABUBABQrAwFnZGQCCQ8UKwAFZCgpWFN5c3RlbS5HdWlkLCBtc2NvcmxpYiwgVmVyc2lvbj00LjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWI3N2E1YzU2MTkzNGUwODkkMzJjMWE2MzQtMjhiMi00Y2ExLWE4NjctODlhNmE2YzI1ZTVhAgEUKwABPCsABAEAZmRkAiUPDxYCHwEFEkVRRkkgTklESEkgTElNSVRFRGRkZNztoH1Ce41bXUjwDQKJELDQlfFBPdr1oJM40QUftNNd" />
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="E160D531" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAU/Ny15zxanaKN1Z1yNpKw7XXhtDrRv6st/qI+x+N0hz4VNppXIEHMAIHNnY0nj1N0nVjv+HiUZNU177Q0ZX6y4y6jVEW7zHCyzg6I8c2Nu2fv4y3VlKDwrNeq4oC8h5xTmvIO2GK2PMnufFgV2l0gS" />
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
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 1105.75px;">
                

                 
    <section class="content-header">
        <h1 id="ContentPlaceHolder1_IdHeader">Loan NOC</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">NOC Print</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-warning">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Details for Print</h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select by Loan ID <strong style="color: Red">*</strong></label>
                                <select name="searchLoanId" id="searchLoanId" 
                                onchange="javascript:getByLoanId()" class="form-control select2" style="width: 100%;">
	<option value=""></option>

</select>
                            </div>
                        </div>
                      
                        <div class="col-md-3">
                            <div class="form-group">
                                <label></label>
                                <input type="submit" onclick="this.disabled = true" name="btnSave" value="Search" id="btnSave" class="btn btn-success margin-20" />
                            </div>
                        </div>
                    </div>

                </div>



            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                
                <div class="box box-success" style="box-shadow: none; overflow: auto !important;">

                    <div class="box-header with-border">
                        <h3 class="box-title">Search Result</h3>
                        <div class="box-tools pull-right">
                            
                        </div>
                    </div>
                    <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>

                        


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

<!-- Dk/Admin/LoanNoc.aspx?Type=Normal EDB D 09:27:10 GMT -->
</html>
