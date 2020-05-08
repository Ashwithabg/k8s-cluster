# frozen_string_literal: true

def cluster_defaults
  {
    name: 'k8s',
    provider: 'vitualbox'
  }
end

def virtualbox_defaults
  {
    box: 'ubuntu/bionic64',
    cpus: 2,
    memory: 2048,
    name: 'default'
  }
end

def digitalocean_defaults
  {
    image: 'ubuntu-18-04-x64',
    region: 'blr1',
    size: 's-2vcpu-4gb',
    name: 'default'
  }
end

def provider_defaults(provider)
  provider == 'digital_ocean' ? digitalocean_defaults : virtualbox_defaults
end
