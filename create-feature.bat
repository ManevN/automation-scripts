

if "%1"=="" (
    echo Usage: %0 ^<directory_name^>
    exit /b 1
)

set "directory_name=%1"

mkdir "%directory_name%
cd "%directory_name%

mkdir src
cd src

mkdir lambda
cd lambda
type nul > index.ts
type nul > processor.ts
cd..

mkdir local
cd local
type nul > index.ts
type nul > processor.ts
cd..

cd..

type nul > index.ts

npm init --yes

pause