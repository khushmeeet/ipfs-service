wget https://dist.ipfs.io/ipfs-update/v1.5.2/ipfs-update_v1.5.2_darwin-amd64.tar.gz
tar -xf ipfs-update_v1.5.2_darwin-amd64.tar.gz
sh ./ipfs-update/install.sh
ipfs-update fetch
ipfs init
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\"
\"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">
<plist version=\"1.0\">
<dict>
        <key>KeepAlive</key>
        <true/>
        <key>Label</key>
        <string>io.ipfs.go-ipfs</string>
        <key>ProcessType</key>
        <string>Background</string>
        <key>ProgramArguments</key>
        <array>
                <string>/bin/sh</string>
                <string>-c</string>
                <string>~/go/bin/ipfs daemon</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
</dict>
</plist>" > ~/Library/LaunchAgents/io.ipfs.go-ipfs.plist
launchctl load ~/Library/LaunchAgents/io.ipfs.go-ipfs.plist
