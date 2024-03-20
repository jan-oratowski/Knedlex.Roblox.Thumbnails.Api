curl https://thumbnails.roblox.com/docs/json/v1 > swagger.json
(Get-Content swagger.json).Replace('*', 'param') | Set-Content swagger.json
yq -p json -o yaml swagger.json > swagger.yaml
openapi-generator-cli generate -g csharp -c config.json -i swagger.yaml