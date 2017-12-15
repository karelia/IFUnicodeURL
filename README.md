# twitter-IFUnicodeURL

This is twitter-IFUnicodeURL, a fork of Sean Heber's original
IFUnicodeURL library that adds an Objective-C category on NSURL to
provide [Internationalized Domain
Name](https://tools.ietf.org/html/rfc3490) support.

## Usage

Usage is similar to NSURL's native methods. `URLWithUnicodeString:`
can be used in place of `URLWithString:`, for instance. There are some
minor differences. Input that can not be properly converted to
punycode and fails for some reason will return a nil result and, if
a method that takes a `NSError` argument (such as
`URLWithUnicodeString:error:`) is used, the error code can be
examined on return.

Not all errors that can be set by `toxxx.h` (see the `IDNSDK`
directory) are returned. For more information, see
`NSURL+IFUnicodeURL.h`.

```objective-c
NSURL *url = [NSURL URLWithUnicodeString:@"http://➡.ws/鞰齒"];
NSLog( @"The URL: %@", [url absoluteString] );
NSLog( @"The Unicode URL: %@", [url unicodeAbsoluteString] );
```

## Notes

This uses code from IDN SDK from Verisign, Inc. The original entire
IDN SDK source package is included in `IDNSDK-1.1.0/`. The code used in
this fork is included (somewhat modified) in the `IDNSDK` directory.

Take note of the IDNSDK license which can be found in
`IDNSDK-1.1.0/doc`. (The license is basically a BSD-like license.) The
IFUnicodeURL category is licensed under the Simplified BSD License
(see `IFUnicodeURL-LICENSE.txt`)

## Issues

Have a bug? Please create an issue here on GitHub!

<https://github.com/twitter/twitter-IFUnicodeURL/issues>

## Authors

* David LaMacchia (<https://github.com/dlamacchia>)
* Satoshi Nakagawa (<https://github.com/psychs>)
* Keh-Li Sheng (<https://github.com/kehli>)

## Original Author

* Sean Heber ([@BigZaphod](http://twitter.com/BigZaphod/) on Twitter) <http://www.iconfactory.com>
