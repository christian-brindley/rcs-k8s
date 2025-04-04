# Sample deployment for Ping Remote Connector Service

## Disclaimer

THE CODE HEREUNDER IS PROVIDED "AS IS" AND WITHOUT WARRANTY OF ANY KIND. SUCH CODE IS EXPRESSLY EXCLUDED FROM PING IDENTITY'S INDEMNITY OR SUPPORT OBLIGATIONS, IF ANY, PURSUANT TO THE RELEVANT GOVERNING AGREEMENT. PING IDENTITY AND ITS LICENSORS EXPRESSLY DISCLAIM ALL WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND ANY WARRANTY OF NON-INFRINGEMENT. PING IDENTITY SHALL NOT HAVE ANY LIABILITY ARISING OUT OF OR RELATING TO ANY USE, IMPLEMENTATION OR CONFIGURATION OF THE SAMPLE CODE HEREUNDER.

## Introduction

This repository includes sample deployment artifacts for the Ping Identity Remote Connector Service (RCS). Assets include

- A [sample Docker build based on the sample RCS image](docker/ping/) provided by Ping Identity
- A [sample Docker build based on a generic linux image](docker/generic) (alpine linux used for illustration)
- A [sample helm chart](helm) and associated templates for deploying the image in a kubernetes environment
