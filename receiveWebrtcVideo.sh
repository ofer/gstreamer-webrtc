#!/bin/bash
export GST_PLUGIN_PATH=/gst-plugins-rs/target/debug:$GST_PLUGIN_PATH
gst-launch-1.0 playbin uri=gstwebrtc://127.0.0.1:8443?peer-id=gst-stream
