module URL
$pass = 'Test Pass!'
$fail = 'Test Fail!'
$email = 'ravi@remitasia.com'
$password = 'ravi1234'
$cash = 100

ENVIRONMEN='LIVE'

if ENVIRONMEN === 'DEV'
$signup = 'http://143.95.39.8/~remitasi/signup'
$signin = 'http://143.95.39.8/~remitasi/signin'
$dashboard = 'http://143.95.39.8/~remitasi/dashboard'
$calcurl = 'http://143.95.39.8/~remitasi/dashboard'
$profile = 'http://143.95.39.8/~remitasi/dashboard/profile'

else if ENVIRONMEN==='LIVE'
$signup = 'https://www.remitasia.com/signup'
$signin = 'https://www.remitasia.com/signin'
$dashboard = 'https://www.remitasia.com/dashboard'
$calcurl = 'https://www.remitasia.com/dashboard'
$profile = 'https://www.remitasia.com/dashboard/profile'
     end
end
end

