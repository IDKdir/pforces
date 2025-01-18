local network

print('Hello')

for i, v in next, getgc(true) do
    if typeof(v) == 'table' then
        if rawget(v, 'send') and rawget(v, 'add') then
            network = v
        end
    end
end

if not network then
    return error('Hook network failed')
end

getgenv().network = network