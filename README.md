# Vim Mathpix

I'm not sure if this should be called an actual plug-in but here it goes.

Based a little bit on the [Mathpix/api-examples](https://github.com/Mathpix/api-examples)
repository, I wrote a script that uses `scrot`, `curl`, and `jq`, to submit a `POST`
request to the _Mathpix_ API, in order to convert the selected image in to \Latex, or
regular text depending on the argument.

## Mods I introduced to the original  so that it runs on Mac

- in the executable, changed `scrot` for `screencapture -i`.
- in the executable, changed `base64 -w` for `base64 -b`, because the `-w`
  flag for `base64` in Mac is named `-b`.
- in the vim autoload plugin, hard-wired (yeah, it's bad!) the path to the executable [to be corrected later]

## Usage

Execute the command `Img2Latex` or `Img2Text` and it will insert on your current line, 
text generated from the image you crop on your screen.

## Install 

Make sure you have installed, `curl`, `jq` (like `sed` but for `json`). In macos, the screen
capture is performed by invoking the built-in `screencapture`, whereas in Linux
systems this is done with `scrot`, so make sure you have it installed.

If you are using pathogen, just clone the Repo under bundle, and make sure you copy the
`bin` directory content to an directory on `PATH`.

## Important

Take in to mind that this plugin consumes mathpix api, so you need to sign up, get your
access keys, and set them up as environment variables.

Also **YOU HAVE LIMITED API CALLS** according to the service you will have about 1k calls
per month, and a limit of 200 per minute, if you want more you need to pay their subscriptions.

I would suggest to put them in the `~/.profile` file, but also could apply `~/.bashrc`.

```sh
export MATHPIX_GROUP="group_id"
export MATHPIX_ID="app_id"
export MATHPIX_KEY="app_key"
```

## Example 

![Example of Usage](example/test.gif)
