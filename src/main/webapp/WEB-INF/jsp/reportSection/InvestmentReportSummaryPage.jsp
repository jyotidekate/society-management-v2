


<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>



<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/InvestmentReportSummary.aspx" id="form1"> -->
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNzQyMTEwMDM1D2QWAmYPZBYEAgEPZBYCAgMPZBYCZg8WAh4EVGV4dAUSRVFGSSBOSURISSBMSU1JVEVEZAIDD2QWHgIBDxYCHgdWaXNpYmxlZ2QCAw8WAh8BZ2QCBQ8WAh8BZ2QCBw8WAh8BZ2QCCQ8WAh8ABRFNYWluIE9mZmljZSAtIDAwMWQCCw8WAh8ABRQwMS8wOC8yMDIyIC0gMTA6MjBBTWQCDQ8WAh8ABRMwMS8wOC8yMDIyIC0gMjo1M1BNZAIRDw8WAh4ISW1hZ2VVcmwFGX4vQWRtaW4vZGlzdC9pbWcvVXNlci5wbmdkZAITDxYCHwAFBWFkbWluZAIVDw8WAh8CBRl+L0FkbWluL2Rpc3QvaW1nL1VzZXIucG5nZGQCFw8WAh8ABQVhZG1pbmQCHQ8WAh8ABQRFUUZJZAIfDxYCHgtfIUl0ZW1Db3VudAISFiRmD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMy5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4OTWVtYmVyIFNlY3Rpb25kAgEPFgIfAwIFFgpmD2QWAmYPFQIOQWRkTWVtYmVyLmFzcHgKQWRkIE1lbWJlcmQCAQ9kFgJmDxUCEUFkZE1lbWJlcktZQy5hc3B4DkFkZCBNZW1iZXIgS1lDZAICD2QWAmYPFQIVTWVtYmVyQWxsRGV0YWlscy5hc3B4Dk1lbWJlciBTdW1tYXJ5ZAIDD2QWAmYPFQIUTWVtYmVyRGV0YWlsUnB0LmFzcHgNTWVtYmVyIFJlcG9ydGQCBA9kFgJmDxUCEVNlYXJjaE1lbWJlci5hc3B4DVNlYXJjaCBNZW1iZXJkAgEPZBYEZg8VAwEjPzxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby00LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPgxNZW1iZXIgU2hhcmVkAgEPFgIfAwIFFgpmD2QWAmYPFQIeU2hhcmVJc3N1ZS5hc3B4P2lzbW9kaWZ5PWZhbHNlDlNoYXJlIFRyYW5zZmVyZAIBD2QWAmYPFQIZVW5hbGxvdGVkU2hhcmVSZXBvcnQuYXNweBJVbi1hbGxvdHRlZCBTaGFyZXNkAgIPZBYCZg8VAhVTaGFyZUNlcnRpZmljYXRlLmFzcHgRU2hhcmUgQ2VydGlmaWNhdGVkAgMPZBYCZg8VAhZNZW1iZXJTaGFyZVJlcG9ydC5hc3B4DFNoYXJlIFJlcG9ydGQCBA9kFgJmDxUCEEROT0dlbmVyYXRlLmFzcHgPRE5PIFJlLUdlbmVyYXRlZAICD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tNS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4RQ29sbGVjdG9yL0Fkdmlzb3JkAgEPFgIfAwIGFgxmD2QWAmYPFQIPQWRkQWR2aXNvci5hc3B4FUFkZCBDb2xsZWN0b3IvQWR2aXNvcmQCAQ9kFgJmDxUCEEFkdmlzb3JUcmVlLmFzcHgWQ29sbGVjdG9yL0Fkdmlzb3IgVHJlZWQCAg9kFgJmDxUCFEFkdmlzb3JEb3dubGluZS5hc3B4GkNvbGxlY3Rvci9BZHZpc29yIERvd25saW5lZAIDD2QWAmYPFQIXQ29sbGVjdG9yUHJvbW90aW9uLmFzcHgbQ29sbGVjdG9yL0Fkdmlzb3IgUHJvbW90aW9uZAIED2QWAmYPFQITSURDYXJkUHJpbnRpbmcuYXNweBhDb2xsZWN0b3IvQWR2aXNvciBJLUNhcmRkAgUPZBYCZg8VAhJBZHZpc29yU2VhcmNoLmFzcHgYQ29sbGVjdG9yL0Fkdmlzb3IgU2VhcmNoZAIDD2QWBGYPFQMBIz88aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMy5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4QRW1wbG95ZWUgU2VjdGlvbmQCAQ8WAh8DAgUWCmYPZBYCZg8VAhZEZXNpZ25hdGlvbk1hc3Rlci5hc3B4D0FkZCBEZXNpZ25hdGlvbmQCAQ9kFgJmDxUCFURlcGFydG1lbnRNYXN0ZXIuYXNweA5BZGQgRGVwYXJ0bWVudGQCAg9kFgJmDxUCEEFkZEVtcGxveWVlLmFzcHgMQWRkIEVtcGxveWVlZAIDD2QWAmYPFQIbRW1wbG95ZWVJRENhcmRQcmludGluZy5hc3B4D0VtcGxveWVlIEktQ2FyZGQCBA9kFgJmDxUCE1NlYXJjaEVtcGxveWVlLmFzcHgPU2VhcmNoIEVtcGxveWVlZAIED2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tNi5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiIC8+EkludmVzdG1lbnQgU2VjdGlvbmQCAQ8WAh8DAg0WGmYPZBYCZg8VAg9QbGFuTWFzdGVyLmFzcHgLUGxhbiBNYXN0ZXJkAgEPZBYCZg8VAhJBZGRJbnZlc3RtZW50LmFzcHgOTmV3IEludmVzdG1lbnRkAgIPZBYCZg8VAg5SRFJlbmV3YWwuYXNweA9SZW5ld2FsIFBheW1lbnRkAgMPZBYCZg8VAhhEYWlseVJlbmV3YWxQYXltZW50LmFzcHgVRGFpbHkgUmVuZXdhbCBQYXltZW50ZAIED2QWAmYPFQImRmxleGlyZW5ld2FsLmFzcHg/SXNNb2RpZmljYXRpb249ZmFsc2UVRmxleGkgUmVuZXdhbCBQYXltZW50ZAIFD2QWAmYPFQIUUmVuZXdhbFBhc3Nib29rLmFzcHgRRGFpbHkvUkQgUGFzc2Jvb2tkAgYPZBYCZg8VAiNQb2xpY3lSZW5ld2FsUmVjZWlwdC5hc3B4P0lzVGFnPU5ldxJJbnZlc3RtZW50IFJlY2VpcHRkAgcPZBYCZg8VAiVQb2xpY3lSZW5ld2FsUmVjZWlwdC5hc3B4P0lzVGFnPVJlbmV3ElJlY3VycmluZyAgUmVjZWlwdGQCCA9kFgJmDxUCFUNlcnRpZmljYXRlSXNzdWUuYXNweBFDZXJ0aWZpY2F0ZSBJc3N1ZWQCCQ9kFgJmDxUCJUNlcnRpZmljYXRlSXNzdWUuYXNweD9SZVByaW50PVJlcHJpbnQUQ2VydGlmaWNhdGUgUmUtSXNzdWVkAgoPZBYCZg8VAh5JbnZlc3RtZW50SW50ZXJlc3REZXRhaWxzLmFzcHgQSW50ZXJlc3QgRGV0YWlsc2QCCw9kFgJmDxUCHkludmVzdG1lbnRJbnRlcmVzdFBheWFibGUuYXNweBBJbnRlcmVzdCBQYXlhYmxlZAIMD2QWAmYPFQIVSW52ZXN0bWVudFNlYXJjaC5hc3B4EUludmVzdG1lbnQgU2VhcmNoZAIFD2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tOS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiIC8+D1NhdmluZ3MgQWNjb3VudGQCAQ8WAh8DAgsWFmYPZBYCZg8VAhZTYXZpbmdzUGxhbk1hc3Rlci5hc3B4E1NhdmluZ3MgUGxhbiBNYXN0ZXJkAgEPZBYCZg8VAg5BZGRTYXZpbmcuYXNweA9TYXZpbmdzIE9wZW5pbmdkAgIPZBYCZg8VAhxTYXZpbmdzVHJhbnNhY3Rpb25FbnRyeS5hc3B4E1NhdmluZ3MgVHJhbnNhY3Rpb25kAgMPZBYCZg8VAhhTYXZpbmdJbnRyYVRyYW5zZmVyLmFzcHgRU0IgSW50cmEgVHJhbnNmZXJkAgQPZBYCZg8VAhdTQkludGVyZXN0R2VuZXJhdGUuYXNweBRTQiBJbnRlcmVzdCBUcmFuc2ZlcmQCBQ9kFgJmDxUCFFNCUGFzc2Jvb2tQcmludC5hc3B4EFNhdmluZ3MgUGFzc2Jvb2tkAgYPZBYCZg8VAhVTYXZpbmdzU3RhdGVtZW50LmFzcHgRU2F2aW5ncyBTdGF0ZW1lbnRkAgcPZBYCZg8VAhJBY2NvdW50Q2xvc2VyLmFzcHgOQWNjb3VudCBDbG9zZXJkAggPZBYCZg8VAhlTZWFyY2hTYXZpbmdzQWNjb3VudC5hc3B4EVNlYXJjaCBTYXZpbmdzIEFDZAIJD2QWAmYPFQIYU01TQ2hhcmdlc0RlZHVjdGlvbi5hc3B4FVNNUyBDaGFyZ2VzIERlZHVjdGlvbmQCCg9kFgJmDxUCHFNlcnZpY2VDaGFyZ2VzRGVkdWN0aW9uLmFzcHgZU2VydmljZSBDaGFyZ2VzIERlZHVjdGlvbmQCBg9kFgRmDxUDASM/PGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTcucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+DExvYW4gU2VjdGlvbmQCAQ8WAh8DAg4WHGYPZBYCZg8VAhlMb2FuUGxhbi5hc3B4P1R5cGU9Tm9ybWFsEkxvYW4gUGxhbiBDcmVhdGlvbmQCAQ9kFgJmDxUCE0xvYW5DYWxjdWxhdG9yLmFzcHgPTG9hbiBDYWxjdWxhdG9yZAICD2QWAmYPFQIlTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHBsaWNhdGlvbhBMb2FuIEFwcGxpY2F0aW9uZAIDD2QWAmYPFQIiTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHByb3ZhbA9Mb2FuIEF1dGhvcml6ZWRkAgQPZBYCZg8VAiFMb2FuQXBwbGljYXRpb24uYXNweD9UeXBlPVBheW1lbnQUTG9hbiBQYXltZW50IFNlY3Rpb25kAgUPZBYCZg8VAh5Mb2FuUmVwYXltZW50LmFzcHg/VHlwZT1Ob3JtYWwWUmVndWxhciBFbWkgUmUtcGF5bWVudGQCBg9kFgJmDxUCKUlycmVndWxhckVNSVBheW1lbnRFbnRyeS5hc3B4P1R5cGU9Tm9ybWFsGElycmVndWxhciBFbWkgUmUtcGF5bWVudGQCBw9kFgJmDxUCJVJlZ3VsYXJMb2FuU3RhdGVtZW50LmFzcHg/VHlwZT1Ob3JtYWwWUmVndWxhciBMb2FuIFN0YXRlbWVudGQCCA9kFgJmDxUCJ0lycmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPU5vcm1hbBhJcnJlZ3VsYXIgTG9hbiBTdGF0ZW1lbnRkAgkPZBYCZg8VAh1SZWd1bGFyTG9hbkRvY3VtZW50UHJpbnQuYXNweBNMb2FuIERvY3VtZW50IFByaW50ZAIKD2QWAmYPFQIiTG9hblByZVNldHRsZW1lbnQuYXNweD9UeXBlPU5vcm1hbA5QcmUgU2V0dGxlbWVudGQCCw9kFgJmDxUCIUNsb3NlZExvYW5SZXBvcnQuYXNweD9UeXBlPU5vcm1hbBNDbG9zZWQgbG9hbiBEZXRhaWxzZAIMD2QWAmYPFQIYTG9hbk5vYy5hc3B4P1R5cGU9Tm9ybWFsD05PQyBDZXJ0aWZpY2F0ZWQCDQ9kFgJmDxUCD0xvYW5TZWFyY2guYXNweAtTZWFyY2ggTG9hbmQCBw9kFgRmDxUDASM/PGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTgucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+CUdvbGQgTG9hbmQCAQ8WAh8DAg4WHGYPZBYCZg8VAhdMb2FuUGxhbi5hc3B4P1R5cGU9R29sZBJHb2xkIFBsYW4gQ3JlYXRpb25kAgEPZBYCZg8VAhNHb2xkTG9hbk1hc3Rlci5hc3B4EEdvbGQgTG9hbiBNYXN0ZXJkAgIPZBYCZg8VAilHb2xkTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHBsaWNhdGlvbhVHb2xkIExvYW4gQXBwbGljYXRpb25kAgMPZBYCZg8VAiZHb2xkTG9hbkFwcGxpY2F0aW9uLmFzcHg/VHlwZT1BcHByb3ZhbBRHb2xkIExvYW4gQXV0aG9yaXplZGQCBA9kFgJmDxUCJUdvbGRMb2FuQXBwbGljYXRpb24uYXNweD9UeXBlPVBheW1lbnQUTG9hbiBQYXltZW50IFNlY3Rpb25kAgUPZBYCZg8VAhxMb2FuUmVwYXltZW50LmFzcHg/VHlwZT1Hb2xkFlJlZ3VsYXIgRW1pIFJlLXBheW1lbnRkAgYPZBYCZg8VAidJcnJlZ3VsYXJFTUlQYXltZW50RW50cnkuYXNweD9UeXBlPUdvbGQYSXJyZWd1bGFyIEVtaSBSZS1wYXltZW50ZAIHD2QWAmYPFQIjUmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPUdvbGQWUmVndWxhciBMb2FuIFN0YXRlbWVudGQCCA9kFgJmDxUCJUlycmVndWxhckxvYW5TdGF0ZW1lbnQuYXNweD9UeXBlPUdvbGQYSXJyZWd1bGFyIExvYW4gU3RhdGVtZW50ZAIJD2QWAmYPFQIaR29sZExvYW5Eb2N1bWVudFByaW50LmFzcHgUTG9hbiBEb2N1bWVudHMgUHJpbnRkAgoPZBYCZg8VAiBMb2FuUHJlU2V0dGxlbWVudC5hc3B4P1R5cGU9R29sZA5QcmUgU2V0dGxlbWVudGQCCw9kFgJmDxUCH0Nsb3NlZExvYW5SZXBvcnQuYXNweD9UeXBlPUdvbGQTQ2xvc2VkIGxvYW4gRGV0YWlsc2QCDA9kFgJmDxUCFkxvYW5Ob2MuYXNweD9UeXBlPUdvbGQPTk9DIENlcnRpZmljYXRlZAIND2QWAmYPFQITR29sZExvYW5TZWFyY2guYXNweAtTZWFyY2ggTG9hbmQCCA9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE2LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4KR3JvdXAgTG9hbmQCAQ8WAh8DAgwWGGYPZBYCZg8VAhhMb2FuUGxhbi5hc3B4P1R5cGU9R3JvdXATR3JvdXAgUGxhbiBDcmVhdGlvbmQCAQ9kFgJmDxUCFExvYW5Hcm91cE1hc3Rlci5hc3B4DEdyb3VwIE1hc3RlcmQCAg9kFgJmDxUCGUdyb3VwTG9hbkFwcGxpY2F0aW9uLmFzcHgWR3JvdXAgTG9hbiBBcHBsaWNhdGlvbmQCAw9kFgJmDxUCJEdyb3VwTG9hbkFwcHJvdmFsLmFzcHg/VHlwZT1BcHByb3ZhbBVHcm91cCBMb2FuIEF1dGhvcml6ZWRkAgQPZBYCZg8VAiNHcm91cExvYW5BcHByb3ZhbC5hc3B4P1R5cGU9UGF5bWVudBRMb2FuIFBheW1lbnQgU2VjdGlvbmQCBQ9kFgJmDxUCHUxvYW5SZXBheW1lbnQuYXNweD9UeXBlPUdyb3VwDkVtaSBSZS1wYXltZW50ZAIGD2QWAmYPFQIaR2xEYWlseVJlcGF5bWVudFNoZWV0LmFzcHgVRGFpbHkgUmVwYXltZW50IFNoZWV0ZAIHD2QWAmYPFQIQRGVtYW5kU2hlZXQuYXNweAxEZW1hbmQgU2hlZXRkAggPZBYCZg8VAiRSZWd1bGFyTG9hblN0YXRlbWVudC5hc3B4P1R5cGU9R3JvdXAOTG9hbiBTdGF0ZW1lbnRkAgkPZBYCZg8VAiFMb2FuUHJlU2V0dGxlbWVudC5hc3B4P1R5cGU9R3JvdXAOUHJlIFNldHRsZW1lbnRkAgoPZBYCZg8VAiFDbG9zZWRMb2FuUmVwb3J0LmFzcHg/VHlwZT1Ob3JtYWwTQ2xvc2VkIGxvYW4gRGV0YWlsc2QCCw9kFgJmDxUCFEdyb3VwTG9hblNlYXJjaC5hc3B4C1NlYXJjaCBMb2FuZAIJD2QWBGYPFQMBI0E8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTIucG5nIiAgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhBBcHByb3ZhbCBTZWN0aW9uZAIBDxYCHwMCDRYaZg9kFgJmDxUCFkFkZE1lbWJlckFwcHJvdmFsLmFzcHgQTWVtYmVyICBBcHByb3ZhbGQCAQ9kFgJmDxUCF1NoYXJlSXNzdWVBcHByb3ZhbC5hc3B4DlNoYXJlIEFwcHJvdmFsZAICD2QWAmYPFQIUQWR2aXNvckFwcHJvdmFsLmFzcHgaQWR2aXNvci9Db2xsZWN0b3IgQXBwcm92YWxkAgMPZBYCZg8VAhdJbnZlc3RtZW50QXBwcm92YWwuYXNweBNJbnZlc3RtZW50IEFwcHJvdmFsZAIED2QWAmYPFQIWUmVjdXJyaW5nQXBwcm92YWwuYXNweBNSZWN1cnJpbmcgIEFwcHJvdmFsZAIFD2QWAmYPFQISU0JUeG5BcHByb3ZhbC5hc3B4G1NhdmluZyBUcmFuc2FjdGlvbiBBcHByb3ZhbGQCBg9kFgJmDxUCGkludHJhVHJhbnNmZXJBcHByb3ZhbC5hc3B4FFNCIFRyYW5zZmVyIEFwcHJvdmFsZAIHD2QWAmYPFQIXUmVndWxhckVNSUFwcHJvdmFsLmFzcHgUUmVndWxhciBFTUkgQXBwcm92YWxkAggPZBYCZg8VAhdJcnJ1bGFyRU1JQXBwcm92YWwuYXNweBZJcnJlZ3VsYXIgRU1JIEFwcHJvdmFsZAIJD2QWAmYPFQIZUGF5bWVudEVudHJ5QXBwcm92YWwuYXNweBZQYXltZW50IEVudHJ5IEFwcHJvdmFsZAIKD2QWAmYPFQIgTWF0dXJpdHlBcHBsaWNhdGlvbkFwcHJvdmFsLmFzcHgdTWF0dXJpdHkgQXBwbGljYXRpb24gQXBwcm92YWxkAgsPZBYCZg8VAh5NYXR1cml0eUFwcGxpY2F0aW9uRGVsZXRlLmFzcHgbTWF0dXJpdHkgQXBwbGljYXRpb24gRGVsZXRlZAIMD2QWAmYPFQIcQ1NQQ2FzaFRyYW5zZmVyQXBwcm92YWwuYXNweB1CcmFuY2ggQ2FzaCBUcmFuc2ZlciBBcHByb3ZhbGQCCg9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTEwLnBuZyIgIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4VUmVjdGlmaWNhdGlvbiBTZWN0aW9uZAIBDxYCHwMCDRYaZg9kFgJmDxUCIkFkZE1lbWJlci5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUUTWVtYmVyIFJlY3RpZmljYXRpb25kAgEPZBYCZg8VAh1TaGFyZUlzc3VlLmFzcHg/aXNtb2RpZnk9dHJ1ZRNTaGFyZSBSZWN0aWZpY2F0aW9uZAICD2QWAmYPFQIjQWRkQWR2aXNvci5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUfQWR2aXNvci9Db2xsZWN0b3IgUmVjdGlmaWNhdGlvbmQCAw9kFgJmDxUCJkFkZEludmVzdG1lbnQuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlGEludmVzdG1lbnQgUmVjdGlmaWNhdGlvbmQCBA9kFgJmDxUCIlJEUmVuZXdhbC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUVUmVuZXdhbCBSZWN0aWZpY2F0aW9uZAIFD2QWAmYPFQIsRGFpbHlSZW5ld2FsUGF5bWVudC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUbRGFpbHkgUmVuZXdhbCBSZWN0aWZpY2F0aW9uZAIGD2QWAmYPFQIlRmxleGlSZW5ld2FsLmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRhGbGV4aSBUcmFuc2FjdGlvbiBEZWxldGVkAgcPZBYCZg8VAiJBZGRTYXZpbmcuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlFVNhdmluZ3MgUmVjdGlmaWNhdGlvbmQCCA9kFgJmDxUCMFNhdmluZ3NUcmFuc2FjdGlvbkVudHJ5LmFzcHg/SXNNb2RpZmljYXRpb249dHJ1ZRpTYXZpbmdzIFRyYW5zYWN0aW9uIERlbGV0ZWQCCQ9kFgJmDxUCKExvYW5BcHBsaWNhdGlvbi5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUSTG9hbiBSZWN0aWZpY2F0aW9uZAIKD2QWAmYPFQIsR29sZExvYW5BcHBsaWNhdGlvbi5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUXR29sZCBMb2FuIFJlY3RpZmljYXRpb25kAgsPZBYCZg8VAipHcm91cExvYW5BcHByb3ZhbC5hc3B4P0lzTW9kaWZpY2F0aW9uPXRydWUYR3JvdXAgTG9hbiBSZWN0aWZpY2F0aW9uZAIMD2QWAmYPFQIkQWRkRW1wbG95ZWUuYXNweD9Jc01vZGlmaWNhdGlvbj10cnVlFUVtcGxveWVlIE1vZGlmaWNhdGlvbmQCCw9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTExLnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4QQWNjb3VudHMgU2VjdGlvbmQCAQ8WAh8DAhUWKmYPZBYCZg8VAhVBY2NvdW50TGVnTWFzdGVyLmFzcHgNTGVkZ2VyIE1hc3RlcmQCAQ9kFgJmDxUCE1BheW1lbnRWb3VjaGVyLmFzcHgNUGF5bWVudCBFbnRyeWQCAg9kFgJmDxUCE1JlY2VpdmVWb3VjaGVyLmFzcHgNUmVjZWl2ZSBFbnRyeWQCAw9kFgJmDxUCF0NvbnRyYVZvdWNoZXJFbnRyeS5hc3B4DENvbnRyYSBFbnRyeWQCBA9kFgJmDxUCE0pvdXJuYWxWb3VjaGVyLmFzcHgNSm91cm5hbCBFbnRyeWQCBQ9kFgJmDxUCFUluY2VudGl2ZVBheW1lbnQuYXNweBFJbmNlbnRpdmUgUGF5bWVudGQCBg9kFgJmDxUCD01JU1BheW1lbnQuYXNweBBNSVMgaW50LiBQYXltZW50ZAIHD2QWAmYPFQIQQ2hlcXVlQ2xlYXIuYXNweA9DaGVxdWUgQ2xlYXJpbmdkAggPZBYCZg8VAhxVbmVuY3VtYmVyZWRUZXJtRGVwb3NpdC5hc3B4F01hbmRhdGUgRGVwb3NpdCB0byBCYW5rZAIJD2QWAmYPFQISQmFua1N0YXRlbWVudC5hc3B4DkJhbmsgU3RhdGVtZW50ZAIKD2QWAmYPFQISQ2FzaFN0YXRlbWVudC5hc3B4CUNhc2ggQm9va2QCCw9kFgJmDxUCEVRyYW5zZmVyQm9vay5hc3B4DVRyYW5zZmVyIEJvb2tkAgwPZBYCZg8VAhVSZWd1bGFyU3RhdGVtZW50LmFzcHgIRGF5IEJvb2tkAg0PZBYCZg8VAhpGaW5hbmNpYWxMZWRnZXJSZXBvcnQuYXNweA1MZWRnZXIgUmVwb3J0ZAIOD2QWAmYPFQISSm91cm5hbFJlcG9ydC5hc3B4DkpvdXJuYWwgUmVwb3J0ZAIPD2QWAmYPFQIaRmluYW5jaWFsVHJpYWxCYWxhbmNlLmFzcHgNVHJhaWwgQmFsYW5jZWQCEA9kFgJmDxUCEFBMU3RhdGVtZW50LmFzcHgSUCZMIFN0YXRlbWVudCAoRlkpZAIRD2QWAmYPFQIaRmluYW5jaWFsQmFsYW5jZVNoZWV0LmFzcHgSQmFsYW5jZSBTaGVldCAoRlkpZAISD2QWAmYPFQIXUHJvZml0TG9zc0RhdGVXaXNlLmFzcHgNUCZMIFN0YXRlbWVudGQCEw9kFgJmDxUCGUJhbGFuY2VTaGVldERhdGV3aXNlLmFzcHgNQmFsYW5jZSBTaGVldGQCFA9kFgJmDxUCFENTUENhc2hUcmFuc2Zlci5hc3B4FEJyYW5jaCBDYXNoIFRyYW5zZmVyZAIMD2QWBGYPFQMBI0A8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTMucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7Ii8+EUluY2VudGl2ZSBTZWN0aW9uZAIBDxYCHwMCBBYIZg9kFgJmDxUCFEluY2VudGl2ZU1hc3Rlci5hc3B4EEluY2VudGl2ZSBNYXN0ZXJkAgEPZBYCZg8VAhhJbmNlbnRpdmVHZW5lcmF0aW9uLmFzcHgSSW5jZW50aXZlIEdlbmVyYXRlZAICD2QWAmYPFQIaSW5jZW50aXZlRGV0YWlsc1ByaW50LmFzcHgRSW5jZW50aXZlIERldGFpbHNkAgMPZBYCZg8VAhdJbmNlbnRpdmVMaXN0UHJpbnQuYXNweA5JbmNlbnRpdmUgTGlzdGQCDQ9kFgRmDxUDASNAPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE0LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhBNYXR1cml0eSBTZWN0aW9uZAIBDxYCHwMCCRYSZg9kFgJmDxUCEFByZU1hdHVyaXR5LmFzcHgPTWF0dXJpdHkgTWFzdGVyZAIBD2QWAmYPFQIYTWF0dXJpdHlBcHBsaWNhdGlvbi5hc3B4FE1hdHVyaXR5IEFwcGxpY2F0aW9uZAICD2QWAmYPFQIUTWF0dXJpdHlQYXltZW50LmFzcHgQTWF0dXJpdHkgUGF5bWVudGQCAw9kFgJmDxUCGVJlZGVtdGlvblBhcnRQYXltZW50LmFzcHgZTWF0dXJpdHkgUGF5bWVudCAoUGFydGx5KWQCBA9kFgJmDxUCHU1hdHVyaXR5VHJhY2tpbmcuYXNweD9Db2RlPVJSF01hdC4gQXBwbGljYXRpb24gU3RhdHVzZAIFD2QWAmYPFQIdTWF0dXJpdHlUcmFja2luZy5hc3B4P0NvZGU9QVIPQXBwcm92ZWQgU3RhdHVzZAIGD2QWAmYPFQIdTWF0dXJpdHlUcmFja2luZy5hc3B4P0NvZGU9UFITTWF0LiBQYXltZW50IFN0YXR1c2QCBw9kFgJmDxUCHk1hdHVyaXR5UGFydFBheW1lbnRSZXBvcnQuYXNweBxNYXQuIFBheW1lbnQgU3RhdHVzIChQYXJ0bHkpZAIID2QWAmYPFQIbTWF0dXJpdHlSZWNlaXB0UmVQcmludC5hc3B4Fk1hdHVyaXR5IFJlY2VpcHQgUHJpbnRkAg4PZBYEZg8VAwEjQDxpbWcgc3JjPSJkaXN0L2ltZy9pY29uL2ljby0xNS5wbmciIHN0eWxlPSJtYXJnaW4tcmlnaHQ6IDVweDsiLz4OUmVwb3J0IFNlY3Rpb25kAgEPFgIfAwIVFipmD2QWAmYPFQIaSW52ZXN0bWVudFRvdGFsUmVwb3J0LmFzcHgRSW52ZXN0bWVudCBSZXBvcnRkAgEPZBYCZg8VAhxJbnZlc3RtZW50UmVwb3J0U3VtbWFyeS5hc3B4FEludmVzdG1lbnQgLSBTdW1tYXJ5ZAICD2QWAmYPFQIXRW1wbG95ZWVDb2xsZWN0aW9uLmFzcHgSQWR2aXNvciBDb2xsZWN0aW9uZAIDD2QWAmYPFQIaQWR2aXNvclRlYW1Db2xsZWN0aW9uLmFzcHgXQWR2aXNvciBUZWFtIENvbGxlY3Rpb25kAgQPZBYCZg8VAhdDaGVxdWVTdGF0dXNSZXBvcnQuYXNweBdDaGVxdWUgQ2xlYXJhbmNlIFN0YXR1c2QCBQ9kFgJmDxUCG0luY2VudGl2ZVBheW1lbnRSZXBvcnQuYXNweBhJbmNlbnRpdmUgUGF5bWVudCByZXBvcnRkAgYPZBYCZg8VAhdSZWN1cnJpbmdEdWVSZXBvcnQuYXNweBRSZWN1cnJpbmcgRHVlIFJlcG9ydGQCBw9kFgJmDxUCGUxvYW5Ob3RBcHByb3ZlUmVwb3J0LmFzcHgYTG9hbiBOb3QgYXBwcm92ZWQgUmVwb3J0ZAIID2QWAmYPFQIXTG9hbkFwcHJvdmFsUmVwb3J0LmFzcHgOQXBwcm92ZWQgTG9hbiBkAgkPZBYCZg8VAhZMb2FuUGF5bWVudFJlcG9ydC5hc3B4E0xvYW4gUGF5bWVudCBSZXBvcnRkAgoPZBYCZg8VAhVMb2FuRU1JRHVlUmVwb3J0LmFzcHgORHVlIEVtaSBSZXBvcnRkAgsPZBYCZg8VAhlMb2FuRU1JT3ZlckR1ZVJlcG9ydC5hc3B4E0VtaSBPdmVyIER1ZSBSZXBvcnRkAgwPZBYCZg8VAh1Mb2FuRU1JT3V0c3RhbmRpbmdSZXBvcnQuYXNweBZFbWkgT3V0c3RhbmRpbmcgUmVwb3J0ZAIND2QWAmYPFQIeRU1JQ29sbGVjdG9uUmVwb3J0LmFzcHg/VHlwZT1SElJlZ3VsYXIgRU1JIFJlcG9ydGQCDg9kFgJmDxUCHkVNSUNvbGxlY3RvblJlcG9ydC5hc3B4P1R5cGU9SRRJcnJlZ3VsYXIgRU1JIFJlcG9ydGQCDw9kFgJmDxUCHUxvYW5Db2xsZWN0aW9uc2hlZXRQcmludC5hc3B4EExvYW4gU2hlZXQgUHJpbnRkAhAPZBYCZg8VAhlNYXR1cml0eVN0YXR1c1JlcG9ydC5hc3B4D01hdHVyaXR5IFN0YXR1c2QCEQ9kFgJmDxUCFVByb2plY3Rpb25SZXBvcnQuYXNweBFQcm9qZWN0aW9uIFJlcG9ydGQCEg9kFgJmDxUCHE1hdHVyaXR5TGlhYmlsaXR5UmVwb3J0LmFzcHgZTWF0dXJpdHkgTGlhYmlsaXR5IFJlcG9ydGQCEw9kFgJmDxUCF1REU0RlZHVjdGlvblJlcG9ydC5hc3B4FFREUyBEZWR1Y3Rpb24gUmVwb3J0ZAIUD2QWAmYPFQIUUG9saWN5U3RhdGVtZW50LmFzcHgQUG9saWN5IFN0YXRlbWVudGQCDw9kFgRmDxUDASNBPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE3LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIgLz4SUGF5cm9sbCBNYW5hZ2VtZW50ZAIBDxYCHwMCERYiZg9kFgJmDxUCFkRlc2lnbmF0aW9uTWFzdGVyLmFzcHgPQWRkIERlc2lnbmF0aW9uZAIBD2QWAmYPFQIVRGVwYXJ0bWVudE1hc3Rlci5hc3B4DkFkZCBEZXBhcnRtZW50ZAICD2QWAmYPFQITRW1wbG95ZWVNYXN0ZXIuYXNweAxBZGQgRW1wbG95ZWVkAgMPZBYCZg8VAhlFbXBsb3llZUxlYXZlRGV0YWlscy5hc3B4DkVtcGxveWVlIExlYXZlZAIED2QWAmYPFQIWU2FsYXJ5U2V0dXBNYXN0ZXIuYXNweA5TYWxhcnkgRGV0YWlsc2QCBQ9kFgJmDxUCGUhybUFwcG9pbnRtZW50TGV0dGVyLmFzcHgSQXBwb2ludG1lbnQgTGV0dGVyZAIGD2QWAmYPFQITSHJtT2ZmZXJMZXR0ZXIuYXNweBJPZmZlciBMZXR0ZXIgSXNzdWVkAgcPZBYCZg8VAhJPZmZEYXlTZXR0aW5nLmFzcHgOSG9saWRheSBNYXN0ZXJkAggPZBYCZg8VAhRMZWF2ZUFkanVzdG1lbnQuYXNweBBMZWF2ZSBBZGp1c3RtZW50ZAIJD2QWAmYPFQISSHJtQXR0ZW5kYW5jZS5hc3B4CkF0dGVuZGFuY2VkAgoPZBYCZg8VAhZIcm1TYWxhcnlHZW5lcmF0ZS5hc3B4D1NhbGFyeSBHZW5lcmF0ZWQCCw9kFgJmDxUCFUhybVNhbGFyeVBheW1lbnQuYXNweA5TYWxhcnkgUGF5bWVudGQCDA9kFgJmDxUCF0hybVNhbGFyeVNsaXBQcmludC5hc3B4EVNhbGFyeSBTbGlwIFByaW50ZAIND2QWAmYPFQIVQXR0ZW5kYW5jZVJlcG9ydC5hc3B4EUF0dGVuZGFuY2UgUmVwb3J0ZAIOD2QWAmYPFQIbSHJtU2FsYXJ5UGF5bWVudFJlcG9ydC5hc3B4FVNhbGFyeSBQYXltZW50IFJlcG9ydGQCDw9kFgJmDxUCFkhSTUVtcGxveWVlU2VhcmNoLmFzcHgPRW1wbG95ZWUgU2VhcmNoZAIQD2QWAmYPFQIWSHJtRW1wbG95ZWVJRENhcmQuYXNweBBFbXBsb3llZSBJRCBDYXJkZAIQD2QWBGYPFQMBI0E8aW1nIHNyYz0iZGlzdC9pbWcvaWNvbi9pY28tMTgucG5nIiBzdHlsZT0ibWFyZ2luLXJpZ2h0OiA1cHg7IiAvPhJNb2JpbGUgQXBwIENvbnRyb2xkAgEPFgIfAwIIFhBmD2QWAmYPFQIKTVVzZXIuYXNweBFBcHAgVXNlciBDcmVhdGlvbmQCAQ9kFgJmDxUCGk1vYmlsZV9NZW1iZXJBcHByb3ZhbC5hc3B4EE1lbWJlciAgQXBwcm92YWxkAgIPZBYCZg8VAh1Nb2JpbGVfQ29sbGVjdG9yQXBwcm92YWwuYXNweBBBZHZpc29yIEFwcHJvdmFsZAIDD2QWAmYPFQIeTW9iaWxlX0ludmVzdG1lbnRBcHByb3ZhbC5hc3B4E0ludmVzdG1lbnQgQXBwcm92YWxkAgQPZBYCZg8VAhtNb2JpbGVfUmVuYXdhbEFwcHJvdmFsLmFzcHgTUmVjdXJyaW5nICBBcHByb3ZhbGQCBQ9kFgJmDxUCHk1vYmlsZV9SZWd1bGFyRU1JQXBwcm92YWwuYXNweBRSZWd1bGFyIEVNSSBBcHByb3ZhbGQCBg9kFgJmDxUCIE1vYmlsZV9JcnJlZ3VsYXJFTUlBcHByb3ZhbC5hc3B4FklycmVndWxhciBFTUkgQXBwcm92YWxkAgcPZBYCZg8VAhlNb2JpbGVfU0JUeG5BcHByb3ZhbC5hc3B4G1NhdmluZyBUcmFuc2FjdGlvbiBBcHByb3ZhbGQCEQ9kFgRmDxUDASNAPGltZyBzcmM9ImRpc3QvaW1nL2ljb24vaWNvLTE1LnBuZyIgc3R5bGU9Im1hcmdpbi1yaWdodDogNXB4OyIvPhFNb2JpbGUgQXBwIFJlcG9ydGQCAQ8WAh8DAgcWDmYPZBYCZg8VAiBNb2JpbGVfTWVtYmVyQXBwcm92YWxSZXBvcnQuYXNweBZNZW1iZXIgQXBwcm92YWwgUmVwb3J0ZAIBD2QWAmYPFQIhTW9iaWxlX0Fkdmlzb3JBcHByb3ZhbFJlcG9ydC5hc3B4F0Fkdmlzb3IgQXBwcm92YWwgUmVwb3J0ZAICD2QWAmYPFQImTW9iaWxlX1JlZ3VsYXJFTUlDb2xsZWN0aW9uUmVwb3J0LmFzcHgbUmVndWxhciBFTUkgQXBwcm92YWwgUmVwb3J0ZAIDD2QWAmYPFQIoTW9iaWxlX0lycmVndWxhckVNSUNvbGxlY3Rpb25SZXBvcnQuYXNweB1JcnJlZ3VsYXIgRU1JIEFwcHJvdmFsIFJlcG9ydGQCBA9kFgJmDxUCH01vYmlsZV9TQlR4bkFwcHJvdmFsUmVwb3J0LmFzcHgWU0IgVHhuIEFwcHJvdmFsIFJlcG9ydGQCBQ9kFgJmDxUCJE1vYmlsZV9JbnZlc3RtZW50QXBwcm92YWxSZXBvcnQuYXNweBpJbnZlc3RtZW50IEFwcHJvdmFsIFJlcG9ydGQCBg9kFgJmDxUCIU1vYmlsZV9SZW5ld2FsQXBwcm92YWxSZXBvcnQuYXNweBdSZW5ld2FsIEFwcHJvdmFsIFJlcG9ydGQCIw9kFgQCAw8QDxYGHg5EYXRhVmFsdWVGaWVsZAUFQ0NvZGUeDURhdGFUZXh0RmllbGQFB0NTUE5hbWUeC18hRGF0YUJvdW5kZ2QQFQIKQWxsIEJyYW5jaBFNYWluIE9mZmljZSAtIDAwMRUCA0FsbAMwMDEUKwMCZ2dkZAINDxQrAAVkKClYU3lzdGVtLkd1aWQsIG1zY29ybGliLCBWZXJzaW9uPTQuMC4wLjAsIEN1bHR1cmU9bmV1dHJhbCwgUHVibGljS2V5VG9rZW49Yjc3YTVjNTYxOTM0ZTA4OSQ5OTljYTc1Yy0zOWRhLTQ1YTYtYmJlMC04NzM1OGVmZDY5NGICARQrAAE8KwAEAQBmZGQCJQ8PFgIfAAUSRVFGSSBOSURISSBMSU1JVEVEZGRkMCJUZalOvOBeCfzJeo8fJXWXpkDB+39lPEEemF+xSpY=" />
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4B1E791E" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAjl0+Al+D0hiqkPWHb2QymvXXhtDrRv6st/qI+x+N0hz4VNppXIEHMAIHNnY0nj1N1BW5v+dQD/zYzH23/hOws57Nf2nFrT/teCXxgcaX2ByUPQI1RC2v7K0iVkfbE9+2rNLwNnpX7SaGgjTqu3VexijkxbpcxoWPNP2dR2wiSei++63+nRxhdez+xKH6pY/sFrtll3Y4wlbm4/TY+oplH9" />
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
                                                       01/08/2022 - 2:53PM
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
        <h1 id="ContentPlaceHolder1_IdHeader">Investment Summary Report</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Summary Report</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Box</h3>

                    </div>

                    <div class="box-body">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Branch :</label>
                                <select name="selectbranch" id="selectbranch" class="form-control" style="width: 100%;">
	<option value="All">All Branch</option>
	<option value="001">Main Office - 001</option>
	<option value="002">Main Office - 002</option>
	<option value="003">Main Office - 003</option>

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
                                    <input name="fromdate" type="date" value="01/08/2022" id="fromdate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
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

                                   <input name="todate" type="date" value="01/08/2022" id="todate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />


                                </div>


                            </div>
                          
                        </div>
                         <div class="col-md-2">
                            <div class="form-group">
                                <label></label>
                                
<!-- <a id="ContentPlaceHolder1_btnSearch" class="btn btn-success margin-20" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btnSearch&#39;,&#39;&#39;)"><span class="fa fa-search"></span> SEARCH</a> -->
                           <button type="submit"  onclick="getbranch(); getDate(); gettable();" class="btn btn-success pull-right margin-20" >Search</button>
                            </div>

                        </div>

                        <div class="clearfix margin-bottom-10"></div>

                     
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

             
                        <table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1"  style="width:100%;border-collapse:collapse;">
                               <h3 style="text-align: center;"><b>LOAN EMI OVER DUE REPORT</b></h3>
                                 <hr>
                                 <tr style="color:White;background-color:#008385;">
                                    <th scope="col">BCODE</th>
                                    <th scope="col">BRANCH NAME</th>
                                    <th scope="col">NEW BUISNESS</th>
                                    <th scope="col">FEES(ANY)</th>
                                    <th scope="col">RENEW BUISNESS</th>
                                    <th scope="col">LATE FINE</th> 
                                 </tr>
                                  <tbody id="tableBody">
                                    
      							  </tbody>
                              </table>
                        


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
        <!--         Fetchrecord -->
        <script src="dist/js/FetchRecordInvestmentSummary.js"></script>
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
<!--     </form> -->
</body>

<!-- Dk/Admin/InvestmentReportSummary.aspx EDB D 09:27:21 GMT -->
</html>
