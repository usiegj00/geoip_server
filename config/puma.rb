workers Integer(ENV['PUMA_WORKERS'] || 4)
threads Integer(ENV['MIN_THREADS'] || 32), Integer(ENV['MAX_THREADS'] || 32)

preload_app!

rackup DefaultRackup
port ENV['PORT'] || 5000
environment ENV['RACK_ENV'] || 'development'