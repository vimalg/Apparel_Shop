Rails.application.config.middleware.use OmniAuth::Builder do
provider :twitter, 'QG64nbIJceod9GjfcilsQ', 'sTq9wnw1VCWMhG26q5iank9MJLrvHr4lh5ILpnpM'
provider :facebook, '363894340387145', '546875e127ecb4538e1fbf46d8833488'
end