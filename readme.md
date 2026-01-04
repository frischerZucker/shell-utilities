# Shell Utilities
This repository contains a small collection of Bash helper functions for some tasks that I encountered on my linux systems.
All functions are located in the `scripts/` directory and are intended to be **sourced**, not executed directly.

## Contents
| Function | Description |
|----------|-------------|
| **mv-parents** | Moves files or directories and creates missing target directories automatically. (like `mkdir --parents`) |
| **search-apt** | Searches available APT packages (`apt list`) for a given pattern. |
| **shutdown-after-process** | Periodically checks if a given process name is still running and shuts down the system once it exits. |

## Usage
Source the desired scripts in your shell:
```bash
source scripts/shutdown-after-process.sh
```
Then call the functions:
```bash
shutdown-after-process process_name
```

## Notes
- The repository is meant as a personal toolbox, but improvements are welcome :)