#!/bin/bash
export GST_PLUGIN_PATH=/gst-plugins-rs/target/debug:$GST_PLUGIN_PATH
gst-launch-1.0 webrtcsink name=ws meta="meta,name=gst-stream" videotestsrc ! ws. audiotestsrc ! ws.