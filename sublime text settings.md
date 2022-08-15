 ```
 "builder_settings" : {

// General settings:
// See README or third-party documentation

// (built-ins): true shows the log of each command in the output panel
"display_log" : false,

// Platform-specific settings:
"osx" : {
// See README or third-party documentation
},

"windows" : {
"script_commands": [
"latex -synctex=-1 -interaction=nonstopmode",
"bibtex",
"latex -synctex=-1 -interaction=nonstopmode",
"latex -synctex=-1 -interaction=nonstopmode",
"dvips -t letter",
"ps2pdf $file_base_name.ps"
]
},

"linux" : {
// See README or third-party documentation
}
},
```
