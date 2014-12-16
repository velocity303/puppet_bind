#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with bind](#setup)
    * [What bind affects](#what-bind-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with bind](#beginning-with-bind)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

A module to install and configure bind including views and zones. This is compatible with Debian and Red Hat based systems and has been tested against Puppet 3.7. 

## Module Description

If applicable, this section should have a brief description of the technology the module integrates with and what that integration enables. This section should answer the questions: "What does this module *do*?" and "Why would I use it?"

If your module has a range of functionality (installation, configuration, management, etc.) this is the time to mention it.

## Setup

### What bind affects

This module will install the appropriate bind package on your operating system as well as edit the associated named.conf file that is associated with this package/service.

### Setup Requirements 

This module reqiures puppetlabs-stdlib and puppetlabs-concat to function properly. These should be automatically pulled in via the 'puppet module install velocity303-bind' command.

### Beginning with bind

The very basic steps needed for a user to get the module up and running. 

If your most recent release breaks compatibility or requires particular steps for upgrading, you may wish to include an additional section here: Upgrading (For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

WIP
Put the classes, types, and resources for customizing, configuring, and doing the fancy stuff with your module here. 

## Reference

WIP
Here, list the classes, types, providers, facts, etc contained in your module. This section should include all of the under-the-hood workings of your module so people know what the module is touching on their system but don't need to mess with things. (We are working on automating this section!)

## Limitations

This module has been built against debian and red hat based systems and should function normally in those environments.

## Development

Feel free to submit an issue if you would like to make any changes to the code.
