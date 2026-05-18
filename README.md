# DFRegistrations
DFRegistrations
A tiny utility for saving license registration data to a database and to creating ini-files that can be read by the DataFlex Registration program, thus avoiding manual entering of registration information for DataFlex licenses.

## Setup after cloning

After cloning this repository, run **`setup.bat`** once from the repository root. The repo ships an empty baseline database under `Data\`; `setup.bat` tells git to ignore your local changes to it (via `skip-local-data.cmd`), so running the program does not show those files as changed or push them.
