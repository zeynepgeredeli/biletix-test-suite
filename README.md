# Biletix Test Suite 🎫

Automated test suite for Biletix.com

## Motivation

This project was inspired by a real-world problem: during the Zara Larsson 
concert ticket sale, thousands of users were unable to purchase tickets despite 
being online at the exact moment of release. This highlighted the critical 
importance of thorough testing for ticketing platforms.

## Test Coverage

| Test File | Description | Tests |
|---|---|---|
| homepage_tests.robot | Homepage loading and element validation | 3 |
| search_tests.robot | Search functionality tests | 2 |
| filter_tests.robot | City and category filter tests | 2 |
| event_detail_tests.robot | Event detail page tests | 2 |

## Tech Stack

- Robot Framework 7.4.2
- SeleniumLibrary
- Python 3.11.6
- Jenkins CI/CD
- Git/GitHub

## Installation

pip install -r requirements.txt

## Running Tests

# Run all tests
python -m robot --outputdir results tests/

# Run single file
python -m robot --outputdir results tests/homepage_tests.robot

## CI/CD

This project is integrated with Jenkins for automated test execution.
Tests run automatically on every push to main branch.

## Project Structure

biletix-test-suite/
├── tests/
│   ├── homepage_tests.robot
│   ├── search_tests.robot
│   ├── filter_tests.robot
│   └── event_detail_tests.robot
├── resources/
│   └── common_keywords.robot
├── results/
├── requirements.txt
└── README.md