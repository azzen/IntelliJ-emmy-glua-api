--- @class http
http = {}

--- (client/menu/server) Launches an asynchronous **GET** request to a HTTP server.HTTP requests returning a status code >= `400` are still considered a success and will call the [onSuccess](https://wiki.facepunch.com/gmod/Structures/HTTPRequest) callback.The [onFailure](https://wiki.facepunch.com/gmod/Structures/HTTPRequest) callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist).A rough overview of possible [onFailure](https://wiki.facepunch.com/gmod/Structures/HTTPRequest) messages:* `invalid url` - Invalid/empty url ( no request was attempted )* `invalid request` - Steam HTTP lib failed to create a HTTP request* `error` - OnComplete callback's second argument, `bError`, is `true`* `unsuccessful` - OnComplete's first argument, `pResult->m_bRequestSuccessful`, returned `false` 
--- [https://wiki.facepunch.com/gmod/http.Fetch]
--- @param url string @ The URL of the website to fetch.
--- @param onSuccess function @ Function to be called on success. Arguments are* [string](https://wiki.facepunch.com/gmod/string) body* [string](https://wiki.facepunch.com/gmod/string) size - equal to [string.len](https://wiki.facepunch.com/gmod/string.len)(body).* [table](https://wiki.facepunch.com/gmod/table) headers* [number](https://wiki.facepunch.com/gmod/number) code - The HTTP success code.
--- @param onFailure function @ Function to be called on failure. Arguments are* [string](https://wiki.facepunch.com/gmod/string) error - The error message.
--- @param headers table @ KeyValue table for headers.
--- @return void
function http.Fetch(url, onSuccess, onFailure, headers) end

--- (client/menu/server) Sends an asynchronous **POST** request to a HTTP server.HTTP requests returning a status code >= `400` are still considered a success and will call the [onSuccess](https://wiki.facepunch.com/gmod/Structures/HTTPRequest) callback.The [onFailure](https://wiki.facepunch.com/gmod/Structures/HTTPRequest) callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist). 
--- [https://wiki.facepunch.com/gmod/http.Post]
--- @param url string @ The url to of the website to post.
--- @param parameters table @ The post parameters (x-www-form-urlencoded) to be send to the server. **Keys and values must be strings**.
--- @param onSuccess function @ Function to be called on success. Arguments are* [string](https://wiki.facepunch.com/gmod/string) body* [string](https://wiki.facepunch.com/gmod/string) size - equal to [string.len](https://wiki.facepunch.com/gmod/string.len)(body).* [table](https://wiki.facepunch.com/gmod/table) headers* [number](https://wiki.facepunch.com/gmod/number) code - The HTTP success code.
--- @param onFailure function @ Function to be called on failure. Arguments are* [string](https://wiki.facepunch.com/gmod/string) error - The error message.
--- @param headers table @ KeyValue table for headers.
--- @return void
function http.Post(url, parameters, onSuccess, onFailure, headers) end

