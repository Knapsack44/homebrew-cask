cask 'now' do
  version '4.0.7'
  sha256 'b1455effe7abada6a3ded62bbb001a46d9c2bffccfd402670fbb80723602f262'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/Now-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom'
  name 'Now'
  homepage 'https://zeit.co/now'

  app 'Now.app'

  uninstall delete:     '/usr/local/bin/now',
            login_item: 'Now',
            signal:     ['TERM', 'co.zeit.now']

  zap trash: [
               '~/.now.json',
               '~/Library/Application Support/Now',
               '~/Library/Caches/co.zeit.now',
               '~/Library/Caches/co.zeit.now.ShipIt',
               '~/Library/Preferences/co.zeit.now.plist',
               '~/Library/Preferences/co.zeit.now.helper.plist',
             ]
end
