<# This script resets state so that no previous build artifacts are reused. #>

$ErrorActionPreference = "Stop"

git clean -f -x -d -q

echo "done!"
