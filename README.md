# My Hugo theme

Some styling and general logic of my website, separated from content. No extra abstractions.

```bash
cp themes/yrzam/init/hugo.yaml . # site config
hugo new _index.md --kind home # home template
hugo new yoursection --kind section # list template
# put png favicons in assets/favicon
# read generated _index template
```

Resource names must not start with underscore. Pattern `/_` in the URL means that resource may be permanently cached (but it won't unless you configure this rule on the web server).
