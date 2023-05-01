GET https://status.dev.azure.com/_apis/status/health?api-version=7.0-preview.1

HTTP 200
[Captures]
status: body

[Asserts]
jsonpath "$.status.health" == "healthy"
jsonpath "$.services[?(@.id == 'Core services')].geographies[?(@.id == 'EU')].health" == "healthy"
