@echo off
setlocal

REM ===========================================================================
REM  DFRegistrations - one-time setup
REM
REM  Run this once after cloning. It configures THIS clone so the tracked
REM  empty baseline database under Data\ is NOT flagged or pushed when the
REM  program modifies it locally (via git update-index --skip-worktree,
REM  performed by skip-local-data.cmd).
REM
REM  Nothing here is destructive: it only sets a local git option for this
REM  repository.
REM ===========================================================================

cd /d "%~dp0"

echo.
echo === DFRegistrations setup ===
echo Working folder: %CD%
echo.

where git >nul 2>nul
if errorlevel 1 (
    echo [ERROR] Git was not found on your PATH.
    echo         Install Git ^(or the GitHub Desktop app^), reopen the
    echo         command prompt, and run setup.bat again.
    echo.
    pause
    exit /b 1
)

git rev-parse --is-inside-work-tree >nul 2>nul
if errorlevel 1 (
    echo [ERROR] This folder is not a git repository.
    echo         Clone DFRegistrations with GitHub Desktop or "git clone",
    echo         then run setup.bat from the repository root.
    echo.
    pause
    exit /b 1
)

echo.
if exist "%~dp0skip-local-data.cmd" (
    echo Protecting your local Data\ database from accidental commits...
    call "%~dp0skip-local-data.cmd"
) else (
    echo [NOTE] skip-local-data.cmd not found - skipping local DB protection.
)

echo.
echo === Setup complete ===
echo.
echo Git will now ignore your local changes to the Data\ database, so
echo running the program won't show those files as changed or push them.
echo.
echo If new files are ever added under Data\, just run setup.bat once more
echo to pick them up.
echo.
pause
exit /b 0
