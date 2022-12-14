# Typesense Railway Starter

Deploy your own [Typesense](https://typesense.org) server to [Railway](https://railway.app) with ease.

## Usage

1. Decide on what your Typesense API key will be. This can be whatever you want, but try to make it something secure.
   Make sure to write it down somewhere, as you'll need it to access your server from the outside. If you need help
   coming
   up with something, [Hayasaka](https://github.com/celsiusnarhwal/hayasaka) can help you out with that.
2. Click the "Deploy on Railway" button below and provide your Typesense API key when prompted.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template/pyVyl3?referralCode=cHlIwl)

That's it. Your Typesense server will be accessible at the domain Railway assigns to your app on port 443.

## Doppler Support

If you'd rather set your environment variables with [Doppler](https://doppler.com), you can use the `DOPPLER_TOKEN`
environment variable to provide a [service token](https://docs.doppler.com/docs/service-tokens) for a relevant project
configuration. Keep in mind that when Railway environment variables conflict with Doppler environment variables,
**Doppler's environment variables take precedence**. Also keep in mind that if your service token is ever invalidated,
your deployments will fail until you provide Railway with a new one.

(You can provide your Typesense API key via Doppler, too, but the starter will still require you to input a value for
the `TYPESENSE_API_KEY` environment variable. You can just put whatever you want and Doppler will override it at build
time.)

## Additional Configuration

If you know what you're doing, you can manually define environment variables
for [Typesense's configuration options](https://typesense.org/docs/0.23.1/api/server-configuration.html#using-command-line-arguments).
Most of these are purposefully not exposed by the starter template. If you're not sure whether you need to configure
any of these, you don't.

## License

The contents of this repository are licesned under the [MIT License](LICENSE.md).
