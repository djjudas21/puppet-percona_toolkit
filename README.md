# percona_toolkit

#### Table of Contents

1. [Overview](#overview)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module configures the [Percona yum repo](https://www.percona.com/software/percona-software-repositories-for-mysql)
and installs the [Percona Toolkit](https://www.percona.com/software/mysql-tools/percona-toolkit).

## Usage

This module takes no parameters. To install Percona Toolkit, just do:

```puppet
include ::percona_toolkit
```

## Limitations

This module currently only supports Red Hat compatible distributions.

## Development

Pull requests welcome.
