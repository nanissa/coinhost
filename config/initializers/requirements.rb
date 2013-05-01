ap ENV[ 'SECRET' ]
if ENV[ 'SECRET' ].nil? || ENV[ 'SECRET' ].length < 5
  begin
    raise "\n\nSECRET not set properly. App start aborted.\n\n" 
  rescue => err
    err.set_backtrace([])
    fail
  end
end