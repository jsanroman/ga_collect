# GaCollect

GaCollect is a simple Ruby library which collects metrics on the server side and sends them to google analytics using its measurement protocol https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide#usertiming


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ga_collect'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ga_collect

## Usage
All parameters are the same than the official measurement protocol https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide

First get the tracker
```ruby
    @tracker  = GaCollect.tracker('test_tracker_id')
```
And then use the measurements available
```ruby
    # Pageview
    @tracker.pageview(dh: 'jsanroman.net', dp: '/', dt: 'Javi Sanromán')

    # Event
    @tracker.event(ec: 'ga_collect', ea: 'test2', ev: 1)

    # Exception
    @tracker.exception(exd: 'IOException', exf: '1')

    # Item
    @tracker.item(ti: 123, in: 'test', ip: '10', iq: 2, ic: '12345', iv: 'ga_collect')

    # Screenview
    @tracker.screenview(an: 'funTimes', av: '4.2.0', aid: 'com.foo.App', aiid: 'com.android.vending', cd: 'Home')

    # Social
    @tracker.social(sa: 'like', sn: 'facebook', st: '/home')

    # Timing
    @tracker.timing(utc: 'jsonLoader', utv: 'load', utt: 5000, utl: 'jQuery', dns: 100, pdt: 20, rrt: 32, tcp: 56, srt: 12)

    # Transaction
    @tracker.transaction(ti: 123, ta: '', tr: 10, ts: 0, tt: 0c)
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
