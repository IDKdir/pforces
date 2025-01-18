local network

for i, v in next, getgc(true) do
    if typeof(v) == 'table' then
        if rawget(v, 'send') and rawget(v, 'receive') then
            network = v
        end
    end
end

if not network then
    return error('Hook network failed')
end

getgenv().network = network