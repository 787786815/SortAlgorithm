
function table.serialize(list)
    if not list or not next(list) then return end
    return table.concat(list, ',')
    -- return string.format("{%s}", str)
end

function table.clone(list)
    local result = {}
    for k,v in ipairs(list)do
        result[k] = v
    end
    return result
end

function BubbleSort(list)
    local result = table.clone(list)
    list = result
    for i = 1, #list - 1 do
        local sort_over = true
        for j = 1, #list - i do
            if list[j] < list[j + 1] then
                local temp = list[j]
                list[j] = list[j + 1]
                list[j + 1] = temp
                sort_over = false
            end
        end
        if sort_over then break end
    end
    return result
end

function QuickSort(list)  end
function ChooseSort(list)
    local result = table.clone(list)
    list = result

    for i = 1, #list - 1 do
        local index
        local value = math.mininteger
        for j = i, #list do
            if list[j] > value then
                index = j
                value = list[j]
            end
        end
        if index ~= i then
            list[index] = list[i]
            list[i] = value
        end
    end

    return result
end
function ShellSort(list)  end
function InsertSort(list)
    local result = table.clone(list)
    list = result

    for i = 2, #list - 1 do
        local index
        local value = list[i]
        for j = i - 1, 1 do
            if value > list[j] then
                index = j
                list[j + 1] = list[j]
            end
        end


    end

    return result
end
function MergeSort(list)  end
function HeapSort(list)  end


local list = {}

for i = 1, 10 do
    local num = math.random(1, 100)
    list[i] = math.random(1, 100)
end

print("before sort: ", table.serialize(list))

local table_sorted = BubbleSort(list)
print("after bubble sort: ", table.serialize(table_sorted))

table_sorted = ChooseSort(list)
print("after choose sort: ", table.serialize(table_sorted))

table_sorted = InsertSort(list)
print("after insert sort: ", table.serialize(table_sorted))