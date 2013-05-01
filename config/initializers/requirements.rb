if ENV[ 'SECRET' ].length < 5
  begin
    raise "\nSECRET not set properly. App start aborted.\n\n" 
  rescue => err
    err.set_backtrace([])
    fail
  end
end