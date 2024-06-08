---
linkTitle: "{{ .File.BaseFileName | humanize | lower }}"
title: "{{ .File.BaseFileName | humanize }}"
description:
{{replaceRE "/.*" "" .File.Path}}/tags: []
toc: false
draft: true
publishDate: "{{ now.UTC.Format "2006-01-02T15:04:05Z" }}"
lastMod: "{{ now.UTC.Format "2006-01-02T15:04:05Z" }}"
---
