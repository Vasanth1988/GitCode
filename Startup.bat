"%ProgramFiles%\Microsoft SQL Server\120\Tools\Binn\SqlLocalDB.exe" create "CSGPortal" 12.0 -s

"%ProgramFiles(x86)%\Microsoft Visual Studio 12.0\Common7\IDE\Extensions\Microsoft\SQLDB\DAC\120\SqlPackage.exe" /Action:Publish /SourceFile:"%TF_BUILD_BINARIESDIRECTORY%\MT.CSGPortal.DBPackage\MT.CSGPortal.DBPackage\Snapshots\MT.CSGPortal.DBPackage.dacpac" /Profile:"%TF_BUILD_SOURCESDIRECTORY%\MT.CSGPortal.DBPackage\MT.CSGPortal.DBPackage\MT.CSGPortal.DBPackage.publish.xml"