# 🎧🎤💎TeamSpeak 3-Ruby Library
An easy way of interacting with TeamSpeak 3 servers' query server via SSH.

**⚠️ DISCLAIMER:** This gem is currently under development and contains bleeding edge code. Use at your own risk.

## FAQ
**Q:** Will you support interaction via Telnet?

Since TeamSpeak 3 server version 3.3.0 (see [this changelog](https://forum.teamspeak.com/threads/136554-Release-TeamSpeak-3-Server-3-3-0-amp-3-3-1)), using SSH as server protocol is supported. This should be strongly encouraged as Telnet does not encrypt communication between server and clients which bears a huge security vulnerability.

**Q:** Will there be a official release?

Main scope of this gem is to provide a communication layer between our upcoming Ruby on Rails frontend and a TeamSpeak 3 server. Until further notice, we don't plan to refine this gem to be completely release to RubyGems. Instructions on building or obtaining this gem is TBD.