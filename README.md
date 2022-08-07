# Typesense Railway Starter

Deploy your own [Typesense](https://typesense.org) server to [Railway](https://railway.app) with ease.

## Usage

1. Decide on what your Typesense API key will be. This can be whatever you want, but try to make it something secure.
   Make sure to write it down somewhere, as you'll need it to access your server from the outside. If you need help
   coming
   up with something, [RandomKeygen](https://randomkeygen.com) is a good place to start.
2. Click the "Deploy on Railway" button below and provide your Typesense API key when prompted.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template/pyVyl3?referralCode=cHlIwl)

That's it. Your Typesense server will be accessible at the domain Railway assigns to your app on port 443.

## Additional Settings

The instructions in the previous section are all you need to get Typesense up and running. However, there are a number
of additional settings you can configure.

### Environment Variables

#### `TYPESENSE_*`

If you expand the "Pre-Configured Environment Variables" dropdown, you'll see a number of environment variables whose
names all begin with `TYPESENSE_`. These correspond to Typesense's configuration options.
Consult [Typesense's documentation](https://typesense.org/docs/0.23.1/api/server-configuration.html#using-command-line-arguments)
for information on how to use them. (You may notice that not all of Typesense's configuration options are exposed by
these variables. You are free to manually define the environment variables for the ommitted ones if you know what
what you are doing.)

#### `DOPPLER_TOKEN`

If you'd rather set your environment variables with [Doppler](https://doppler.com), you can use this environment
variable to provide a [service token](https://docs.doppler.com/docs/service-tokens) for a relevant project
configuration. Keep in mind that when Railway environment variables conflict with Doppler environment variables,
**Doppler's environment variables take precedence**. Also keep in mind that if your service token is ever invalidated,
your deployments will fail until you provide Railway with a new one.

(You can provide your Typesense API key via Doppler, too, but the starter will still require you to input a value for
the `TYPESENSE_API_KEY` environment variable. You can just put whatever you want and Doppler will override it at build
time.)

## License

The contents of this repository are licesned under the [MIT License](LICENSE.md).