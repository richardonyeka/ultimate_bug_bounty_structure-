#!/bin/bash

# Get user input for the main directory path
echo "Enter the full path for the main directory (default: ./BugBountyResearch):"
read MAIN_DIR_PATH

# Use default path if no input is provided
MAIN_DIR=${MAIN_DIR_PATH:-"./BugBountyResearch"}

# Create the main directory
mkdir -p "$MAIN_DIR" || { echo "Failed to create main directory. Exiting."; exit 1; }

# Create a file to hold researcher information
RESEARCHER_INFO_FILE="$MAIN_DIR/researcher_info.txt"

# Get user input for researcher information
echo "Enter your name:"
read RESEARCHER_NAME

# Save the researcher information to a file
{
    echo "Name: $RESEARCHER_NAME"
} > "$RESEARCHER_INFO_FILE"

# Create a directory for programs being hacked
PROGRAMS_DIR="$MAIN_DIR/Programs"
mkdir -p "$PROGRAMS_DIR"
echo "# Programs Directory" > "$PROGRAMS_DIR/README.md"
echo "This directory contains subdirectories for each program you are hacking." >> "$PROGRAMS_DIR/README.md"

# Create a directory for knowledge and learning
KNOWLEDGE_DIR="$MAIN_DIR/Knowledge"
mkdir -p "$KNOWLEDGE_DIR"
echo "# Knowledge Directory" > "$KNOWLEDGE_DIR/README.md"
echo "This directory contains notes and resources on various topics related to bug bounty research." >> "$KNOWLEDGE_DIR/README.md"

# Create a directory for source code analysis within the knowledge directory
SOURCE_CODE_ANALYSIS_DIR="$KNOWLEDGE_DIR/SourceCodeAnalysis"
mkdir -p "$SOURCE_CODE_ANALYSIS_DIR"
echo "# Source Code Analysis Directory" > "$SOURCE_CODE_ANALYSIS_DIR/README.md"
echo "This directory contains notes and resources for analyzing source code." >> "$SOURCE_CODE_ANALYSIS_DIR/README.md"

# Create directories for different types of knowledge
declare -a VULNERABILITIES=(
    "Cross-Site Request Forgery (CSRF)"
    "Clickjacking"
    "Cross-Origin Resource Sharing (CORS)"
    "XML External Entity (XXE) Injection"
    "Local File Inclusion"
    "Remote File Inclusion"
    "Server-Side Request Forgery (SSRF)"
    "HTTP Request Smuggling"
    "OS Command Injection"
    "Server-Side Template Injection"
    "Path Traversal"
    "Access Control Vulnerabilities"
    "Authentication Vulnerabilities"
    "WebSockets Vulnerabilities"
    "Web Cache Poisoning"
    "Insecure Deserialization"
    "Information Disclosure"
    "Business Logic Vulnerabilities"
    "HTTP Host Header Attacks"
    "OAuth Authentication"
    "File Upload Vulnerabilities"
    "JSON Web Tokens (JWT)"
    "Essential Skills"
    "Prototype Pollution"
    "GraphQL API Vulnerabilities"
    "Race Conditions"
    "NoSQL Injection"
    "API Testing"
    "Web LLM Attacks"
    "Client-Side Template Injection (CSTI)"
    "Open Redirect"
    "Subdomain Takeover"
    "Denial of Service (DoS)"
    "Distributed Denial of Service (DDoS)"
    "Session Fixation"
    "Session Hijacking"
    "Credential Stuffing"
    "XML Injection"
    "Server Misconfiguration"
    "Information Leakage"
    "Insufficient Logging and Monitoring"
    "Insecure Direct Object References (IDOR)"
)

# Create a markdown file for each vulnerability type
for VULN in "${VULNERABILITIES[@]}"; do
    VULN_DIR="$KNOWLEDGE_DIR/$VULN"
    mkdir -p "$VULN_DIR"
    echo "# This is where I keep all my knowledge on \"$VULN\"" > "$VULN_DIR/knowledge.md"
done

# Create a directory for things learned from sources
LEARNED_SOURCES_DIR="$KNOWLEDGE_DIR/ThingsILearnedFromSources"
mkdir -p "$LEARNED_SOURCES_DIR"
echo "# Things I Learned from Sources Directory" > "$LEARNED_SOURCES_DIR/README.md"
echo "This directory contains insights and notes from various sources like YouTube, Twitter, and blogs." >> "$LEARNED_SOURCES_DIR/README.md"

# Create a directory for tools and resources
TOOLS_DIR="$MAIN_DIR/Tools"
mkdir -p "$TOOLS_DIR"
echo "# Tools Directory" > "$TOOLS_DIR/README.md"
echo "This directory contains tools and resources for bug hunting." >> "$TOOLS_DIR/README.md"

# Create a directory for notes and documentation
NOTES_DIR="$MAIN_DIR/Notes"
mkdir -p "$NOTES_DIR"
echo "# Notes Directory" > "$NOTES_DIR/README.md"
echo "This directory contains general notes and documentation." >> "$NOTES_DIR/README.md"

# Create a directory for findings and reports
FINDINGS_DIR="$MAIN_DIR/Findings"
mkdir -p "$FINDINGS_DIR"
echo "# Findings Directory" > "$FINDINGS_DIR/README.md"
echo "This directory contains reports and findings from bug bounty engagements." >> "$FINDINGS_DIR/README.md"

# Create a Reading List directory
READING_LIST_DIR="$MAIN_DIR/ReadingList"
mkdir -p "$READING_LIST_DIR"
echo "# Reading List" > "$READING_LIST_DIR/README.md"
echo "This directory contains resources and articles that I plan to read to enhance my knowledge in bug bounty hunting." >> "$READING_LIST_DIR/README.md"

# Create a Reading List file
READING_LIST_FILE="$READING_LIST_DIR/Resources.md"
cat <<EOL > "$READING_LIST_FILE"
# Reading List

This file contains resources and articles that I plan to read to enhance my knowledge in bug bounty hunting.

1. **OWASP Articles**: Various articles on web application security.
2. **PortSwigger Academy**: Comprehensive learning platform for web security.
3. **BugBountyHunter.com**: Check for any free labs, including disclosed reports.
4. **GitHub Resource List**: Resources for Beginner Bug Bounty Hunters for further learning on the vulnerability types.
   - [GitHub Resource List](https://github.com/nahamsec/Resources-for-Beginner-Bug-Bounty-Hunters/)

EOL

# Create a Progress Tracker file
PROGRESS_TRACKER_FILE="$READING_LIST_DIR/ProgressTracker.md"
cat <<EOL > "$PROGRESS_TRACKER_FILE"
# Progress Tracker

| Resource Name | Type       | Status       | Notes          |
|---------------|------------|--------------|-----------------|
|               |            | To Read      |                 |
|               |            | In Progress  |                 |
|               |            | Completed    |                 |

EOL

# Create a Templates directory
TEMPLATES_DIR="$MAIN_DIR/Templates"
mkdir -p "$TEMPLATES_DIR"
echo "# Templates Directory" > "$TEMPLATES_DIR/README.md"
echo "This directory contains various templates for note-taking, communication, and other purposes." >> "$TEMPLATES_DIR/README.md"

# Create a note-taking template
NOTE_TEMPLATE_FILE="$TEMPLATES_DIR/NoteTakingTemplate.md"
cat <<EOL > "$NOTE_TEMPLATE_FILE"
# Note Taking Template

## Date: 
## Topic: 
## Key Points:
- 
- 
- 

## Action Items:
- 
- 
- 

## Additional Notes:
- 
EOL

# Create a communication prompt template for GPT
GPT_PROMPT_TEMPLATE_FILE="$TEMPLATES_DIR/GPTCommunicationPrompt.md"
cat <<EOL > "$TEMPLATES_DIR/GPTCommunicationPrompt.md"
# GPT Communication Prompt Template

## Context:
- 

## Specific Questions:
1. 
2. 
3. 

## Desired Outcome:
- 
EOL

# Create a README file in the main directory
cat <<EOL > "$MAIN_DIR/README.md"
# Bug Bounty Research

This directory contains resources, notes, and findings related to bug bounty research.

## Author
- **Name**: Richard Onyeka

## Requirements
- **Bash**: This script requires Bash to run.

## Setup Instructions
1. Clone the repository.
2. Navigate to the directory:
   \`\`\`
   cd $MAIN_DIR
   \`\`\`
3. Run the setup script:
   \`\`\`
   ./setup_bug_bounty.sh
   \`\`\`

## Researcher Information

- **Name**: $RESEARCHER_NAME

## Directory Structure

- **Programs**: Contains directories for each program being hacked.
- **Knowledge**: Contains notes and resources on various topics.
- **Tools**: Contains tools and resources for bug hunting.
- **Notes**: General notes and documentation.
- **Findings**: Reports and findings from bug bounty engagements.
- **ReadingList**: A list of resources and articles to read for further learning.
- **ProgressTracker**: A tracker for monitoring your reading progress.
- **Templates**: Contains various templates for note-taking and communication.

## Contributing

We welcome contributions from everyone! If you have any insights, resources, or tools that you believe would benefit the community, please feel free to make a push to this repository.

EOL

# Print the directory structure
echo "Directory structure created:"
tree "$MAIN_DIR" || echo "Directory structure created. You can view it using 'ls -R $MAIN_DIR'."

# Greet the user
echo "Happy hunting, $RESEARCHER_NAME!"
echo "You can navigate into your project directory using:"
echo "cd $MAIN_DIR"

