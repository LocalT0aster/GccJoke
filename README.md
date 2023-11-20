# GCC Joke for OS Labs

Welcome to `GccJoke`! This repository is a light-hearted, educational tool designed for Operating Systems lab students. It playfully simulates a scenario where a user named 'Firas' is unable to compile C code using `gcc`.

## Important Note / Disclaimer

> **Important**
> All names, characters, and events depicted in this repository are entirely fictional. Any resemblance to real persons, living or dead, is purely coincidental. This repository is created for educational and humorous purposes only. It's a fun way to engage students in the OS lab and demonstrate various aspects of Linux, Bash, and Docker. It's not intended to harm, bully, harass, or target anyone. All the names used is made up. Remember, learning can be fun!

## TOC

- [GCC Joke for OS Labs](#gcc-joke-for-os-labs)
  - [Important Note / Disclaimer](#important-note--disclaimer)
  - [TOC](#toc)
  - [Features](#features)
  - [Educational Purpose](#educational-purpose)
  - [How to Use](#how-to-use)
  - [**Instant Copy-Paste scripts**](#instant-copy-paste-scripts)

## Features

- **GCC Script**: A script that mimics the `gcc` command, providing a humorous message instead of compiling C code.
- **Docker Setup**: Includes a Dockerfile for setting up a Debian environment where this scenario is replicated.

## Educational Purpose

- Understand basic user management in Linux.
- Learn about customizing the Bash shell environment.
- Explore Docker containerization and user-specific configurations.

## How to Use

You need to have [Docker](https://docs.docker.com/engine/install/) and [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed and written in PATH for this to work.

1. Clone the repository.
2. Run using `run.sh`
3. Type the command (or copy & paste this):

   ```bash
   clear
   gcc ex1.c -o ex1
   ```

4. Explore the scripts to see how user-specific environments and commands can be manipulated in Linux.
5. If you want to change name *Firas* to something else, then don't be afraid to change NAME variable at the beginning of every script and Dockerfile.

> **Note**
> Pasting in Linux terminal is done by <kbd>Ctrl</kbd>+<kbd>⇧Shift</kbd>+<kbd>V</kbd>.

## **Instant Copy-Paste scripts**

> Linux/MacOS

```bash
git clone https://github.com/LocalT0aster/GccJoke.git
cd GccJoke
chmod +x *.sh
./run.sh
```

> Windows PowerShell

```ps1
git clone https://github.com/LocalT0aster/GccJoke.git
cd GccJoke
.\run.ps1
```

Enjoy exploring and learning with a touch of humor!
