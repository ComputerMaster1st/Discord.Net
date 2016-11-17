@echo Off
dotnet restore
dotnet build
dotnet pack "src\Discord.Net" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build
dotnet pack "src\Discord.Net.Core" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build
dotnet pack "src\Discord.Net.Commands" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build
dotnet pack "src\Discord.Net.Rest" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build
dotnet pack "src\Discord.Net.WebSocket" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build
dotnet pack "src\Discord.Net.Rpc" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build

REM dotnet pack "src\Discord.Net\Discord.Net.csproj" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build
REM dotnet pack "src\Discord.Net.Core\Discord.Net.Core.csproj" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build
REM dotnet pack "src\Discord.Net.Commands\Discord.Net.Commands.csproj" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build
REM dotnet pack "src\Discord.Net.Rest\Discord.Net.Rest.csproj" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build
REM dotnet pack "src\Discord.Net.WebSocket\Discord.Net.WebSocket.csproj" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build
REM dotnet pack "src\Discord.Net.Rpc\Discord.Net.Rpc.csproj" -c "%Configuration%" -o "artifacts" --version-suffix "%BuildCounter%" --no-build