require 'json'

def baseUrl()
  return ENV['BASE_URL']
end

def create_unique_string(length)
  range = [*'0'..'9',*'A'..'Z',*'a'..'z']
  random_string = Array.new(length.to_i - 1){ range.sample }.join
  return 'F' + random_string
end

def actionDropdownSelector(column, value)
  columnIndex = all('.content table thead tr th')
                    .map {|x| x.text.downcase}
                    .find_index(column.downcase)

  rowIndex = all(".content table tbody tr")
                 .map {|x| x.all('td')}
                 .map {|x| x[columnIndex]}
                 .map {|x| x.text}
                 .find_index(value)

  return '.content table tbody tr:nth-of-type(' + (rowIndex + 1).to_s + ') .actions dropdown-menu'
end

def openDropdown(obj)
  obj.find('.dropdown-button').click()
end

def selectDropdownAction(obj, action)
  obj.all('.dropdown-content li')
      .find {|x| x.text.downcase == action.downcase}
      .click()
end