FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 51896
EXPOSE 44322

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY study-dotnetcore/study-dotnetcore.csproj study-dotnetcore/
RUN dotnet restore study-dotnetcore/study-dotnetcore.csproj
COPY . .
WORKDIR /src/study-dotnetcore
RUN dotnet build study-dotnetcore.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish study-dotnetcore.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "study-dotnetcore.dll"]
