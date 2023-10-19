# gstreamer-webrtc
gst-webrtc docker setup for testing its abilities

This Dockerfile is set up to install the latest ubuntu with the latest gstreamer Ubuntu offers then builds the rust plugins for gstreamer which include the webrtcsink.

When this docker is brought up, it can be used to run all of what is written in:
https://gitlab.freedesktop.org/gstreamer/gst-plugins-rs/-/tree/main/net/webrtc?ref_type=heads
